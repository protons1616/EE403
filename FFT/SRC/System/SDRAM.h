
#include "eGFX.h"

/*

In this example we will manually allocate variables in the external SDRAM.

With this method,  we simple create a structure with all the variables we want to place in external SDRAM.
We then create a pointer to a structure that points to the base address of the external RAM.  In our case,
the SDRAM begins at 0xa0000000.    This method will not detect if we overflow the RAM.   Our board has 8MB of SDRAM.
You could use the sizeof operator to see how much space the structure takes.

To use your variables,  just use structure notation  :

SDRAM->eGFX_FrameBuffer1[0] = 0;


We could alternatively set up the linker (using the Keil scatter file) to place variables in the external SDRAM but this means we would need
the external SDRAM intitialized right after boot.  We also would need to have the debugger auto initialize the external SDRAM controller in case
we have any active memory debugging windows or else the debugger will crash.    

Using a structure and manually allocating memory will work for now as it is simple.


*/

typedef struct
{

	uint8_t eGFX_FrameBuffer1[eGFX_CALCULATE_16BPP_IMAGE_STORAGE_SPACE_SIZE(480,272)];
	uint8_t eGFX_FrameBuffer2[eGFX_CALCULATE_16BPP_IMAGE_STORAGE_SPACE_SIZE(480,272)];
		

} SDRAM_Allocation;


extern SDRAM_Allocation *SDRAM;
