#include "fsl_device_registers.h"
#include "fsl_i2c.h"
#include "fsl_i2s.h"
#include "fsl_wm8904.h"
#include "fsl_debug_console.h"
#include "fsl_dmic.h"
#include "fsl_dmic_dma.h"
#include "fsl_dma.h"
#include "fsl_i2s_dma.h"

#include "fsl_wm8904.h"

#define DMIC_CHANNEL_1 kDMIC_Channel1
#define DMIC_CHANNEL_0 kDMIC_Channel0
#define APP_DMIC_CHANNEL_ENABLE_1 DMIC_CHANEN_EN_CH1(1)
#define APP_DMIC_CHANNEL_ENABLE_0 DMIC_CHANEN_EN_CH0(1)
#define FIFO_DEPTH 15U
#define DMIC_OSR_INT	(32u)  
// 24.576 MHz input, div by 4 -> 6.144 MHz DMIC clk. PCM = DMIC / (2*OSR) = 6.144e6 / (2*32) = 96 kHz


#define DEMO_I2C (I2C2)
#define DEMO_I2C_MASTER_CLOCK_FREQUENCY (12000000)
#define I2S_TX_CHANNEL (13)

#define I2C2_MASTER_CLOCK_FREQUENCY (12000000)

#define SAMPLE_RATE			 (24000U)	
#define SAMPLE_RATE_REG  kWM8904_SampleRate24kHz
#define OVERSAMPLE_RATE  kWM8904_FsRatio512X  /* the oversample rate is PLL Rate (24.576 MHz)/sampling Rate/2 */

#define I2S_CLOCK_DIVIDER (CLOCK_GetAudioPllOutFreq() / SAMPLE_RATE / 16U / 2U)  //THis computes the clock rate for the I2S bit clock.
		//  DivFactor = Input Clock / (Desired Sample (frame) Rate * data size in bits * data slots per frame)

extern const int OSR_DIV_FACTOR ;
/*

	These  data structures are used to initialize the I2S units.
	We are going to use the SDK drivers to set up the I2S peripherals.  The LPC54608
	has a bunch of "Flexcomm" units that can be configured to be several different peripheral
	types.   In the case of I2S,   Flexcomm channels 6 and 7 can be configured for I2S
	
	UM10912 (LPC5460x User Manual) Chapter 21 describes the Flexomm

*/

i2s_config_t s_TxConfig;

/*This function hides the complicated initialization of the onboard CODEC*/
void InitAudio_CODEC(void)
{
   /*
			I2C config to communicate with CODEC
	*/
	
   	i2c_master_config_t i2cConfig;

    wm8904_config_t codecConfig;
    wm8904_handle_t codecHandle;
	
	 /*
				Audio PLL setup for clocking the codec at 24.576 MHz
	 */
	 
	  pll_config_t audio_pll_config = 
		{
        .desiredRate = 24576000U, .inputRate = 12000000U,
    };
		
		pll_setup_t audio_pll_setup;
		
		/*
				The I2C signal that are connected to the WM8902 is from FlexComm 2. (See the schematic for the LPCXpresso54608 to see this connection.
			  Enable the clock for the I2C
	  */
    
		CLOCK_AttachClk(kFRO12M_to_FLEXCOMM2);
		
    /* reset FLEXCOMM for I2C */
    RESET_PeripheralReset(kFC2_RST_SHIFT_RSTn);
		
    /* Initialize AUDIO PLL clock */
    CLOCK_SetupAudioPLLData(&audio_pll_config, &audio_pll_setup);
    audio_pll_setup.flags = PLL_SETUPFLAG_POWERUP | PLL_SETUPFLAG_WAITLOCK;
    CLOCK_SetupAudioPLLPrec(&audio_pll_setup, audio_pll_setup.flags);

    /*
			Flexcomm 6 is used the I2S channel, I2S clocks will be derived from the Audio PLL.
		*/
    CLOCK_AttachClk(kAUDIO_PLL_to_FLEXCOMM6);
		
		/* Attach PLL clock to MCLK for I2S, no divider */
    CLOCK_AttachClk(kAUDIO_PLL_to_MCLK);
    SYSCON->MCLKDIV = SYSCON_MCLKDIV_DIV(0U);
		
    /*
		 *  Initialize the I2C to talk to the WM8904
		 *
     * enableMaster = true;
     * baudRate_Bps = 100000U;
     * enableTimeout = false;
     */
    I2C_MasterGetDefaultConfig(&i2cConfig);
    i2cConfig.baudRate_Bps = WM8904_I2C_BITRATE;
    I2C_MasterInit(I2C2, &i2cConfig, I2C2_MASTER_CLOCK_FREQUENCY);

    /*
			Now that the I2C is setup, we can talk to the WM8904
			We are using the NXP provided provided drivers
     */
    WM8904_GetDefaultConfig(&codecConfig);
		codecConfig.format.fsRatio 		= OVERSAMPLE_RATE	;     //These Macros are set at the top of the file.
		codecConfig.format.sampleRate = SAMPLE_RATE_REG	;
   
		/*
		Tell the driver what I2C Channel we are use and then initialize the CODEC
		*/

		codecHandle.i2c = I2C2;
    if (WM8904_Init(&codecHandle, &codecConfig) != kStatus_Success)
    {
        PRINTF("WM8904_Init failed!\r\n");
    }
		
		// status_t WM8904_WriteRegister(wm8904_handle_t *handle, uint8_t reg, uint16_t value)

    /* Adjust output volume to your needs, 0x0006 for -51 dB, 0x0039 for 0 dB etc. */
    /* Page 154 of the WM8904 data sheet has the volume settings*/
		// using 0x002F = 47 -> -10 dB, 0x0025 = 37 -> -20 dB
		WM8904_SetVolume(&codecHandle, 0x0019, 0x0019);
		//WM8904_SetVolume(&codecHandle, 0x0034, 0x0034);
		
    /*
			The WM8904 is now configured.   We have to set the I2S channels
		  to transmit audio data
		*/
		
    /* Reset FLEXCOMM for I2S.  Flexcomm 6 is the transmit interface and FlexComm7 is the receive*/
    RESET_PeripheralReset(kFC6_RST_SHIFT_RSTn);
		
		/*
			We are using the NXP Driver to setup the I2S.   We must populate
		  the configuration structures and their drivers will hit the registers for us.
		
		  The transmit is set up as an I2S Master
			
		*/
		/*
     * masterSlave = kI2S_MasterSlaveNormalMaster;
     * mode = kI2S_ModeI2sClassic;
     * rightLow = false;
     * leftJust = false;
     * pdmData = false;
     * sckPol = false;
     * wsPol = false;
     * divider = 1;
     * oneChannel = false;
     * dataLength = 16;
     * frameLength = 32;
     * position = 0;
     * watermark = 4;
     * txEmptyZero = true;
     * pack48 = false;
     */
    I2S_TxGetDefaultConfig(&s_TxConfig);
    s_TxConfig.divider 			= I2S_CLOCK_DIVIDER;  //This macro is set at the top of the file.  It is a divder to generate the bit clock

		// Fire up I2S on the Flexcomm interface
    I2S_TxInit(I2S0, &s_TxConfig);		

		NVIC_SetPriority(FLEXCOMM6_IRQn,1);		
		NVIC_EnableIRQ(FLEXCOMM6_IRQn);
				
}

/***
 *      ____  _       _ _        _                            
 *     |  _ \(_) __ _(_) |_ __ _| |                           
 *     | | | | |/ _` | | __/ _` | |                           
 *     | |_| | | (_| | | || (_| | |                           
 *     |____/|_|\__, |_|\__\__,_|_|   _                       
 *     |  \/  (_)___/ _ __ ___  _ __ | |__   ___  _ __   ___  
 *     | |\/| | |/ __| '__/ _ \| '_ \| '_ \ / _ \| '_ \ / _ \ 
 *     | |  | | | (__| | | (_) | |_) | | | | (_) | | | |  __/ 
 *     |_|  |_|_|\___|_|  \___/| .__/|_| |_|\___/|_| |_|\___| 
 *      ___       _            |_|                            
 *     |_ _|_ __ | |_ ___ _ __ / _| __ _  ___ ___             
 *      | || '_ \| __/ _ \ '__| |_ / _` |/ __/ _ \            
 *      | || | | | ||  __/ |  |  _| (_| | (_|  __/            
 *     |___|_| |_|\__\___|_|  |_|  \__,_|\___\___|            
 *     / ___|  ___| |_ _   _ _ __                             
 *     \___ \ / _ \ __| | | | '_ \                            
 *      ___) |  __/ |_| |_| | |_) |                           
 *     |____/ \___|\__|\__,_| .__/                            
 *                          |_|                               
 */

void Init_DMIC(void)
{

	// Clock setup and selection for the DMIC
	// Use the Audio PLL already configured for the CODEC
	SYSCON->DMICCLKSEL = 2; // Changed to Audio PLL, already set for codec to 24.576 MHz 
	SYSCON->DMICCLKDIV = 3; //Divide by 4.   Note that divide by one is a zero,   divide by 2 is a 1, etc.
													// 24.576 MHz / 4 = 6.144 MHZ, which is pushin the limits for the clock input to the DMIC
	
	SYSCON->AHBCLKCTRLSET[1] = SYSCON_AHBCLKCTRL_DMIC_MASK; 

	SYSCON->PRESETCTRLSET[1] = SYSCON_AHBCLKCTRL_DMIC_MASK; //assert the reset
	SYSCON->PRESETCTRLCLR[1] = SYSCON_AHBCLKCTRL_DMIC_MASK; //deassert the reset

  /*We need the DMIC function routed to the physical IO pins.   */
	IOCON->PIO[1][2] = IOCON_PIO_DIGIMODE(1)  | IOCON_PIO_FILTEROFF(1) | IOCON_PIO_FUNC(5);
	IOCON->PIO[1][3] = IOCON_PIO_DIGIMODE(1)  | IOCON_PIO_FILTEROFF(1) | IOCON_PIO_FUNC(5);

	CLOCK_AttachClk(kAUDIO_PLL_to_FLEXCOMM7);  // hook up the audio pll clock to the flexcomm 7 interface
	RESET_PeripheralReset(kFC7_RST_SHIFT_RSTn);
	
		// initializaiton settings for the DMIC
		dmic_channel_config_t dmic_channel_cfg;
		
    dmic_channel_cfg.divhfclk = kDMIC_PdmDiv1;
    dmic_channel_cfg.osr = DMIC_OSR_INT ;    
    dmic_channel_cfg.gainshft = 2U;
    dmic_channel_cfg.preac2coef = kDMIC_CompValueZero;
    dmic_channel_cfg.preac4coef = kDMIC_CompValueZero;
    dmic_channel_cfg.dc_cut_level = kDMIC_DcCut155;
    dmic_channel_cfg.post_dc_gain_reduce = 1;
    dmic_channel_cfg.saturate16bit = 1U;
    dmic_channel_cfg.sample_rate = kDMIC_PhyFullSpeed;
    DMIC_Init(DMIC0);

		// Load the configuration, and enable the DMIC
		DMIC_ConfigIO(DMIC0, kDMIC_PdmDual); 
		DMIC_Use2fs(DMIC0, true);  // can probably be removed
		DMIC_SetOperationMode(DMIC0, kDMIC_OperationModeDma); // Enables DMA, and disables interrupts from the DMIC 

		DMIC_ConfigChannel(DMIC0, DMIC_CHANNEL_1, kDMIC_Left, &dmic_channel_cfg);
		DMIC_FifoChannel(DMIC0, DMIC_CHANNEL_1, FIFO_DEPTH, true, true);
		DMIC_EnableChannnel(DMIC0, APP_DMIC_CHANNEL_ENABLE_1);


		NVIC_SetPriority(FLEXCOMM7_IRQn,1);		
		NVIC_EnableIRQ(FLEXCOMM7_IRQn);
}

