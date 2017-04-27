#include "board.h"
#include "fsl_debug_console.h"
#include "fsl_emc.h"
#include "pin_mux.h"
#include <stdio.h>
#include <string.h>
#include <stdbool.h>

// Screen files
#include "eGFX.h"
#include "eGFX_Driver.h"
#include "FONT_5_7_1BPP.h"
#include "OCR_A_Extended__20px__Bold__SingleBitPerPixelGridFit_1BPP.h"

#include "pin_mux.h"
#include "fsl_device_registers.h"
#include "fsl_i2c.h"
#include "fsl_wm8904.h"
#include "fsl_power.h"
#include "Audio.h"

#include "arm_math.h"

#include "DMA.h"

/***********************************
*   Function Prototypes
***********************************/
void BOARD_BootClock_PLL_RUN(void) ;
void InitAllBuffers(void) ;

/**************************************       
 * Set up for the ping pong buffers
 **************************************/
const int BUFFER_SIZE = (1024) 	;			// Input samples per buffer, amount to be filtered
const int CodecBuffDiv 	= 2 		;     // with decmiation, the codec buffer needs to be smaller

// Two sets of ping pong buffers, one for the dmic, and one for the codec DMA
volatile uint16_t pingIN[BUFFER_SIZE]		;
volatile uint16_t pongIN[BUFFER_SIZE]		;
volatile uint16_t pingOUT[BUFFER_SIZE/CodecBuffDiv]		;	 
volatile uint16_t pongOUT[BUFFER_SIZE/CodecBuffDiv]		;

// Extra buffers were needed to prevent data collisions on the codec (output) portion of DMA
volatile uint16_t ping2OUT[BUFFER_SIZE/CodecBuffDiv]		;	 
volatile uint16_t pong2OUT[BUFFER_SIZE/CodecBuffDiv]		;

// These are used in the DMA setup
uint16_t sizeofpingIN  = sizeof(pingIN)  ;
uint16_t sizeofpingOUT = sizeof(pingOUT) ;

// volatile pointers to volatile arrays, avoid optimizations here because the pointers can get changed
//   in the DMA callback functions
volatile uint16_t *volatile dmicBuffPtr 	;  
volatile uint16_t *volatile codecBuffPtr 	;

/*********************************************************
    Filtering variables and storage arrays
**********************************************************/

// 24 - 29 khz filter ( piezo buzzer used produces harmonics every 4.6 khz, caused noise )
#define NumCoeff (93)

float32_t coeffVector[]	=	{
	0.00132798f,	-0.00299321f,	-0.00647071f,	0.00874740f,	0.00391934f,	-0.00791394f,	0.00075044f,	0.01197617f,
	-0.00388341f,	-0.00899625f,	0.00811428f,	0.00583932f,	-0.00755535f,	-0.00104708f,	0.00413003f,	-0.00010057f,
	0.00203419f,	-0.00299613f,	-0.00636997f,	0.01053699f,	0.00614740f,	-0.01854635f,	0.00002061f,	0.02272636f,
	-0.00918832f,	-0.01989028f,	0.01604783f,	0.01123202f,	-0.01516998f,	-0.00220156f,	0.00492725f,	0.00053524f,
	0.01064813f,	-0.01184270f,	-0.02257531f,	0.03585431f,	0.02092513f,	-0.06502167f,	-0.00000130f,	0.08693501f,
	-0.03780183f,	-0.08970505f,	0.08181691f,	0.06779084f,	-0.11702009f,	-0.02526350f,	0.13045353f,	-0.02526350f,
	-0.11702009f,	0.06779084f,	0.08181691f,	-0.08970505f,	-0.03780183f,	0.08693501f,	-0.00000130f,	-0.06502167f,
	0.02092513f,	0.03585431f,	-0.02257531f,	-0.01184270f,	0.01064813f,	0.00053524f,	0.00492725f,	-0.00220156f,
	-0.01516998f,	0.01123202f,	0.01604783f,	-0.01989028f,	-0.00918832f,	0.02272636f,	0.00002061f,	-0.01854635f,
	0.00614740f,	0.01053699f,	-0.00636997f,	-0.00299613f,	0.00203419f,	-0.00010057f,	0.00413003f,	-0.00104708f,
	-0.00755535f,	0.00583932f,	0.00811428f,	-0.00899625f,	-0.00388341f,	0.01197617f,	0.00075044f,	-0.00791394f,
	0.00391934f,	0.00874740f,	-0.00647071f,	-0.00299321f,	0.00132798f
};

// 24 - 36 khz filter
//#define NumCoeff (81)

//float32_t coeffVector[]	=	{
//	0.01365251f,	-0.00093810f,	-0.00165273f,	-0.00129115f,	-0.00056856f,	0.01119158f,	-0.01163500f,	-0.00677825f,
//	0.01877313f,	-0.00600336f,	-0.00924386f,	0.00552716f,	-0.00033248f,	0.00944855f,	-0.01149098f,	-0.00656106f,
//	0.01687617f,	-0.00430983f,	-0.00287119f,	-0.00620100f,	-0.00041444f,	0.02536155f,	-0.02292195f,	-0.01159665f,
//	0.02367569f,	-0.00380085f,	0.00429083f,	-0.02345372f,	-0.00032584f,	0.05107017f,	-0.04112033f,	-0.01831665f,
//	0.02660165f,	0.00315050f,	0.03644090f,	-0.09495600f,	-0.00033231f,	0.18925807f,	-0.17277975f,	-0.10279749f,
//	0.27803025f,	-0.10279749f,	-0.17277975f,	0.18925807f,	-0.00033231f,	-0.09495600f,	0.03644090f,	0.00315050f,
//	0.02660165f,	-0.01831665f,	-0.04112033f,	0.05107017f,	-0.00032584f,	-0.02345372f,	0.00429083f,	-0.00380085f,
//	0.02367569f,	-0.01159665f,	-0.02292195f,	0.02536155f,	-0.00041444f,	-0.00620100f,	-0.00287119f,	-0.00430983f,
//	0.01687617f,	-0.00656106f,	-0.01149098f,	0.00944855f,	-0.00033248f,	0.00552716f,	-0.00924386f,	-0.00600336f,
//	0.01877313f,	-0.00677825f,	-0.01163500f,	0.01119158f,	-0.00056856f,	-0.00129115f,	-0.00165273f,	-0.00093810f,
//	0.01365251f
//};

float32_t		*pcoeffVector 	= &coeffVector[0] 	;

#define DECIMATION_FACTOR  (4u)
#define NUM_BLOCKS				 (16u)
#define BLOCK_SIZE (BUFFER_SIZE/NUM_BLOCKS)

// State buffer for the fir decimating filter
float32_t stateBuff[NumCoeff+BLOCK_SIZE-1]			;  
float32_t *stateBuffPtr 			= &stateBuff[0] 	;

// temporary buffers to use while filtering / manipulating data
float32_t filtBuffin[BUFFER_SIZE]							;
float32_t filtBuffout[BUFFER_SIZE/DECIMATION_FACTOR]						;

// Pointers to the above buffers
float32_t *pfiltBuffin = &filtBuffin[0] 			;
float32_t *pfiltBuffout = &filtBuffout[0] 		;

// decimating ARM FIR filter instance
arm_fir_decimate_instance_f32 filtDecInst 		; 
arm_fir_decimate_instance_f32 *pfiltDecInst = &filtDecInst ;

/****************************************
*  Counters and debugging variables
*****************************************/
int buffTransferCnt					= 0 ;   // Also used for screen update counting right now

int dmicBuffIdx 		; // these are just counters for the loops
int codecBuffIdx 		;

volatile bool dmicBuffReadyFlag  	;	// flag to signal that the DMIC has finished filling a buffer, ready for processing
volatile bool codecBuffReadyFlag  	;	// This flag might not be needed 
/***************************************
* Screen Variables / Macros
*****************************************/
// Using the screen causes a memory collision during the screen update, 
//  which is currently limited to happen every 64 buffer transfers. Not very noticeable.

// Commenting this out will eliminate the use of the screen from the program
#define USE_SCREEN
int printCount = 0 ;

/*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*
								Main Function
*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*_*/
int main(void)
{

  	/* USART0 clock */
    CLOCK_AttachClk(BOARD_DEBUG_UART_CLK_ATTACH);

    /* Initialize the rest */
    BOARD_InitPins();
	
    //BOARD_BootClockRUN();
    BOARD_BootClock_PLL_RUN();
			
    BOARD_InitDebugConsole();

		BOARD_InitSDRAM();

		InitAllBuffers();
		
	#ifdef USE_SCREEN
		eGFX_InitDriver();
	#endif
	
		// float32_t decmiating filter instance
		arm_fir_decimate_init_f32	(	pfiltDecInst,
			NumCoeff,
			DECIMATION_FACTOR,
			pcoeffVector,
			stateBuffPtr,
			BLOCK_SIZE 
			)	;		
		
		InitAudio_CODEC();
		
		Init_DMIC();
				
		Init_DMA() ;
		
	while (1)
	{
		while( !dmicBuffReadyFlag )
		{
			// Wait until the dmic has filled a buffer
		}
		
		dmicBuffReadyFlag	= 0 ; // clear the flag ;

			
//-------------------------
// Grab the data from the DMIC buffer
//-------------------------	
		uint16_t ind 	= 0 ;
		dmicBuffIdx 	= 0 ; 
		
		while(dmicBuffIdx < BUFFER_SIZE)
		{
			*(pfiltBuffin+ind) = (float32_t)((int16_t)(*(dmicBuffPtr+dmicBuffIdx)) )		;  
			ind++ 				;
			dmicBuffIdx++ ;
		}

//-------------------------
//   Decimating Filter
//-------------------------

		float32_t *inputBuff	;
		float32_t *outputBuff	;
		
		// Apply the decimating filter using block processing
		for(int i = 0 ; i < BUFFER_SIZE/BLOCK_SIZE ; i++ )
		{
			inputBuff = pfiltBuffin + i*BLOCK_SIZE ;
			outputBuff = pfiltBuffout + (i*BLOCK_SIZE)/DECIMATION_FACTOR ;
			arm_fir_decimate_f32(pfiltDecInst,inputBuff,outputBuff,BLOCK_SIZE);
		}
		
		
// ----------------------------------
//  Decimate without filter (testing)		
// ----------------------------------
		
//		ind = 0 ;
//		while(ind < BUFFER_SIZE/DECIMATION_FACTOR)
//		{
//			filtBuffout[ind] = filtBuffin[ind*DECIMATION_FACTOR] ;
//			ind++ ;
//		}
		
//---------------------------------
// move the output
//---------------------------------
		codecBuffIdx = 0 ;
		uint16_t filtIdx = 0 ;
		uint16_t dataSample = 0 ;
		while(codecBuffIdx < (2*BUFFER_SIZE)/DECIMATION_FACTOR )
		{
			// The data is sent to the codec as a left / right pair using I2S
			// So we just double the filtered data output, mono->stereo, maintain sample rate
			dataSample = (uint16_t)((int16_t)(*(pfiltBuffout+filtIdx))) 	;
			*(codecBuffPtr+codecBuffIdx) 		= dataSample			;
			*(codecBuffPtr+(codecBuffIdx+1)) = dataSample			;	
			codecBuffIdx += 2 ;
			filtIdx++ 			  ;
		}
	
		buffTransferCnt++ ;
	
		// This section updates the screen (if enabled)
	#ifdef USE_SCREEN
		if((buffTransferCnt & 0x3F) == 0)
		{
			// Clear the screen buffer
			eGFX_ImagePlane_Clear(&eGFX_BackBuffer);
			
			// Set up the screen text accordingly
			int x_pos = 175 ;
			int y_pos = 200 ;
			
			if(printCount == 0 )
			{
			eGFX_printf(&eGFX_BackBuffer,
										x_pos,y_pos,   //The x and y coordinate of where to draw the text.
										&OCR_A_Extended__20px__Bold__SingleBitPerPixelGridFit_1BPP,   //Long font name!
										"Shifting Frequency");
			}
			else if(printCount == 1 )
			{
			eGFX_printf(&eGFX_BackBuffer,
										x_pos,y_pos,   //The x and y coordinate of where to draw the text.
										&OCR_A_Extended__20px__Bold__SingleBitPerPixelGridFit_1BPP,   //Long font name!
										"Shifting Frequency .");
			}
			else if(printCount == 2 )
			{
			eGFX_printf(&eGFX_BackBuffer,
										x_pos,y_pos,   //The x and y coordinate of where to draw the text.
										&OCR_A_Extended__20px__Bold__SingleBitPerPixelGridFit_1BPP,   //Long font name!
										"Shifting Frequency . .");
			}
			else if(printCount == 3 )
			{
			eGFX_printf(&eGFX_BackBuffer,
										x_pos,y_pos,   //The x and y coordinate of where to draw the text.
										&OCR_A_Extended__20px__Bold__SingleBitPerPixelGridFit_1BPP,   //Long font name!
										"Shifting Frequency . . .");
			}
			
			// Print to the screen
			eGFX_Dump(&eGFX_BackBuffer);
			
			printCount = (printCount+1) & 0x3	; // counter to add periods to the screen text slowly
			
		}
		
	#endif
		
	}
}



/*********************************************************
    Ping Pong buffer set up function
**********************************************************/
/*
		This functions initializes the buffers, and sets up the pointers
*/
void InitAllBuffers()
{
	for (int i=0;i<BUFFER_SIZE;i++)
	{
		pingIN[i] 		= 0	;  
		pongIN[i] 		= 0	;
		filtBuffin[i]	= 0	;
		filtBuffout[i]= 0	;
	}
	for(int i=0 ; i < BUFFER_SIZE/CodecBuffDiv ; i++ )
	{
		pingOUT[i] 	= 0	;  
		pongOUT[i] 	= 0	;
		ping2OUT[i]	=	0	;
		pong2OUT[i]	=	0	;
	}
	
	// Set the buffer pointers
	dmicBuffPtr 	= pingIN	;
	codecBuffPtr 	= ping2OUT	;
	
	dmicBuffIdx		= 0  ;
	codecBuffIdx	= 0  ;
	
	dmicBuffReadyFlag 	= 	0 ;
	codecBuffReadyFlag 	= 	0 ;  // this flag isn't used currently
	
}

/***************************************************
 *   PLL Setup function for 180 MHz operation
 ***************************************************/
void BOARD_BootClock_PLL_RUN(void)
{
    POWER_DisablePD(kPDRUNCFG_PD_FRO_EN); //!< Ensure FRO is on so that we can switch to its 12MHz mode temporarily
    POWER_SetVoltageForFreq(1800000000); //!< Set voltage for core 
    CLOCK_SetFLASHAccessCyclesForFreq(180000000); //!< Set FLASH waitstates for core 
	
	  pll_config_t sys_pll_config = 
		{
        .desiredRate = 180000000, .inputRate = 12000000U,
    };
		
		pll_setup_t sys_pll_setup;
		CLOCK_SetupPLLData(&sys_pll_config, &sys_pll_setup);
		sys_pll_setup.flags = PLL_SETUPFLAG_POWERUP | PLL_SETUPFLAG_WAITLOCK ;
    CLOCK_SetupSystemPLLPrec(&sys_pll_setup, sys_pll_setup.flags);
	  CLOCK_AttachClk(kSYS_PLL_to_MAIN_CLK);          //!< Switch to 12MHz first to ensure we can change voltage without accidentally
																										// being below the voltage for current speed 
    SystemCoreClock = 180000000;                  //!< Update information about frequency 
}
