#ifndef _DMA_H
#define _DMA_H

#include "fsl_dma.h"
#include "fsl_i2s_dma.h"
#include "fsl_device_registers.h"
#include "fsl_i2s.h"
#include "fsl_dmic_dma.h"
/*
* Call this function to initialize the DMA between the DMIC and memory, as well as between
*  memory and the audio codec
*/
void Init_DMA(void);

/*
*  These are the callback functions used by the DMA routines
*/
void codecTxCallback(I2S_Type *base, i2s_dma_handle_t *handle, status_t completionStatus, void *userData);
void DMIC_UserCallback(DMIC_Type *base, dmic_dma_handle_t *handle, status_t status, void *userData);

#endif

