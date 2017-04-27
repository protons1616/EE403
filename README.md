# EE403
Ultrasonic pitch-shifting project built on the LPCxpresso54608

This project was built by Dustin Klingensmith, John Michael DiDonato, Anurag Garikipati.

The main objective is to capture high frequency audio signals (24-36 kHz) and pitch-shift them down to an audible range (0-12 kHz),
where they can then played back using the audio CODEC and an external speaker.




The project was built using keil uvision5. 


How to configure the flash tools:

Target device : NXP LPX54608J512ET180:M4
Xtal (MHz) : 33.0


Here are the compiler options:

Define: DEBUG, CPU_LPC54608, CPU_LPC54608J512ET180=1,ARM_MATH_CM4,__FPU_PRESENT

Compiler Include Paths: .\SRC\eGFX;.\SRC\eGFX\Drivers;.\SRC\eGFX\Fonts;.\SRC\Board;.\SRC\System\CMSIS\Include;.\SRC\System\utilities;.\SRC\Drivers;.\SRC\System;.\SRC\eGFX\Fonts\OCR_A_Extended__20px__Bold__SingleBitPerPixelGridFit_1BPP;.\SRC\Audio
Misc Controls: --library_interface=armcc 
--library_type=standardlib 
--diag_suppress=66,1296,186 
 
 
Here are the assembler options:

define: CPU_LPC54114J256_M4, DEBUG,__CC_ARM,KEIL


Here are the linker options

Scatter File :  LPC54608J512_flash.scf

Misc Controls: ./LIB/keil_lib_power.lib 
../CMSIS-DSP/LIB/CMSIS_DSP_4_5_O3.lib
--remove 


Debuger : CMSIS-DAP Debugger
