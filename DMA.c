#include "DMA.h"
#include "fsl_device_registers.h"
#include "fsl_i2c.h"
#include "fsl_i2s.h"
#include "fsl_wm8904.h"
#include "fsl_debug_console.h"
#include "fsl_dmic.h"
#include "fsl_dmic_dma.h"
#include "fsl_dma.h"
#include "fsl_i2s_dma.h"

#define DMIC_CHANNEL_1 kDMIC_Channel1
#define DMIC_CHANNEL_0 kDMIC_Channel0
#define APP_DMIC_CHANNEL_ENABLE_1 DMIC_CHANEN_EN_CH1(1)
#define APP_DMIC_CHANNEL_ENABLE_0 DMIC_CHANEN_EN_CH0(1)
#define FIFO_DEPTH 15U

#define I2S_TX_CHANNEL (13)

extern const int  BUFFER_SIZE ;
#define DMAREQ_DMIC0 (16U)
#define DMAREQ_DMIC1 (17U)
#define DMIC_CHANNEL kDMIC_Channel1

// dma instance structures for the dmic
dmic_dma_handle_t g_dmicDmaHandle;
dma_handle_t g_dmicRxDmaHandle;
dmic_transfer_t receiveXfer;

// dma instance structures for the CODEC
dma_handle_t codec_DmaTxHandle;
i2s_dma_handle_t codec_dma_i2s_TxHandle;
i2s_transfer_t i2s_TxTransfer;

extern volatile bool dmicBuffReadyFlag  	;	
extern volatile bool codecBuffReadyFlag  	;

// Let the code in this file know about the memory buffers / pointers set up in the main file
extern volatile uint16_t pingIN[]			;
extern volatile uint16_t pongIN[]			;
extern volatile uint16_t pingOUT[]		;	 
extern volatile uint16_t pongOUT[]		;
extern volatile uint16_t ping2OUT[]		;	 
extern volatile uint16_t pong2OUT[]		;

extern uint16_t sizeofpingIN  ;
extern uint16_t sizeofpingOUT ;

extern volatile uint16_t *volatile dmicBuffPtr 	;
extern volatile uint16_t *volatile codecBuffPtr 	;

int dmicCallbackCnt		= 0 ; // for debugging
int codecCallbackCnt 	= 0	; 

void Init_DMA(void) {
	// Initialize DMA
	DMA_Init(DMA0);
  
	// Enable DMA for the audio CODEC using the I2S interface 
	DMA_EnableChannel(DMA0, I2S_TX_CHANNEL);
	DMA_SetChannelPriority(DMA0, I2S_TX_CHANNEL, kDMA_ChannelPriority2);
	DMA_CreateHandle(&codec_DmaTxHandle, DMA0, I2S_TX_CHANNEL); 
	
	// These lines enable the DMA for DMIC
	DMA_EnableChannel(DMA0, DMAREQ_DMIC1);
	DMA_SetChannelPriority(DMA0, DMAREQ_DMIC1, kDMA_ChannelPriority3);
	DMA_CreateHandle(&g_dmicRxDmaHandle, DMA0, DMAREQ_DMIC1); // Request dma channels from DMA manager. 
	
	// DMIC DMA setting changes
	DMIC_TransferCreateHandleDMA(DMIC0, &g_dmicDmaHandle, DMIC_UserCallback, NULL, &g_dmicRxDmaHandle);
	receiveXfer.dataSize 	= sizeofpingIN ;        // byte count for transfer 
	receiveXfer.data 		  = (uint16_t *)pingIN ;  // assign the initial input data buffer

	// CODEC DMA setting changes
	i2s_TxTransfer.data 		  = &pongOUT[0]; 
	i2s_TxTransfer.dataSize 	= sizeofpingOUT ; // buffer size in Bytes
	I2S_TxTransferCreateHandleDMA(I2S0, &codec_dma_i2s_TxHandle, &codec_DmaTxHandle, codecTxCallback, (void *)&i2s_TxTransfer);
	
	// Begin DMA data transfers
	I2S_TxTransferSendDMA(I2S0, &codec_dma_i2s_TxHandle, i2s_TxTransfer);
	DMIC_TransferReceiveDMA(DMIC0, &g_dmicDmaHandle, &receiveXfer, DMIC_CHANNEL) ;
}


/*****************************************************************
*  i2s_dma_transfer Callback functions
******************************************************************/
void codecTxCallback(I2S_Type *base, i2s_dma_handle_t *handle, status_t completionStatus, void *userData)
{
	
	// Rotate the pointers around to the appropriate buffer
	if(i2s_TxTransfer.data == &pingOUT[0])
	{
		i2s_TxTransfer.data 	= &pongOUT[0] ;
		codecBuffPtr 		= pong2OUT ;
	}
	else if(i2s_TxTransfer.data == &pongOUT[0])
	{
		i2s_TxTransfer.data 	= &ping2OUT[0] ;
		codecBuffPtr 		= pingOUT ;
	}
	else if(i2s_TxTransfer.data == &ping2OUT[0])
	{
		i2s_TxTransfer.data 	= &pong2OUT[0] ;
		codecBuffPtr 		= pongOUT ;
	}
	else
	{
		i2s_TxTransfer.data 	= &pingOUT[0] ;
		codecBuffPtr 		= ping2OUT ;
	}
	
	codecBuffReadyFlag = 0 ; // this may not serve a purpose yet
	
	// load up the next dma transfer
	I2S_TxTransferSendDMA(I2S0, &codec_dma_i2s_TxHandle, i2s_TxTransfer) ;
	
	codecCallbackCnt++ ;  // debugging
}

/**************************************************************************************
*  DMIC_dma Callback function - Called after completed DMIC DMA transfer (full buffer)
***************************************************************************************/
/* DMIC user callback */
void DMIC_UserCallback(DMIC_Type *base, dmic_dma_handle_t *handle, status_t status, void *userData)
{
		// flip the input ping pong buffers AND the CPU input buffer pointer
		if ( receiveXfer.data == (uint16_t *)pingIN )
		{
			receiveXfer.data 	= 	(uint16_t *)pongIN 	;
			dmicBuffPtr				=		pingIN	;		
		}
		
		else 
		{	
			receiveXfer.data 	= 	(uint16_t *)pingIN 	;
			dmicBuffPtr				=		pongIN	;	
		}
		
		// Set the flag to let the CPU know it can grab the next buffer of data
		dmicBuffReadyFlag = 1 ;
		
		// load the next DMA transfer
		DMIC_TransferReceiveDMA(DMIC0, &g_dmicDmaHandle, &receiveXfer, DMIC_CHANNEL);
		
		dmicCallbackCnt++ ;  // debugging
		
}
