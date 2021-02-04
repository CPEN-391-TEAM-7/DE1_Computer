#include <stdio.h>

// ALL parallel IO ports created by QSYS have a 32 bit wide interface as far as the processor,
// that is, it reads and writes 32 bit data to the port, even though the
// port itself might only be configures as an 8 or 10 or even 4 bit wide port
//
// To access the port and read switches and writes to leds/hex displays etc, we set
// up "int pointer", i.e. pointers to 32 bit data
// to read/write data from/to the port and discard any upper bits we don't need.
// in the case of reading the switches and copying to leds/hex displays, it doesn't matter as
// they are all 8 bits so the upper unused bit don't matter,
// but push button port is 4 bit input port so reading with will give us 28 bits of leading 0's
// followed by the 4 bits corresponding to the push buttons in bits 0-3 of the data we read fom port

// the addresses below were defined by us when we created our system with Qys and assigned
// addresses to each of the ports we added (open up Qsys and check the Address Tab if you are uncertain)

#define SWITCHES    (volatile unsigned int *)(0xFF200000)
#define PUSHBUTTONS (volatile unsigned int *)(0xFF200010)

#define LEDS        (volatile unsigned int *)(0xFF200020)
#define HEX0_1      (volatile unsigned int *)(0xFF200030)
#define HEX2_3      (volatile unsigned int *)(0xFF200040)
#define HEX4_5      (volatile unsigned int *)(0xFF200050)


void main(void)
{
    int switches ;
	printf("Hello from the CPEN 391 System\n");

    while(1)    {
        switches = *SWITCHES ;
        *LEDS = switches;
        *HEX0_1 = switches;
        *HEX2_3 = switches;
        *HEX4_5 = switches;

        printf("Switches = %x\n", switches) ;
        printf("Buttons = %x\n", *PUSHBUTTONS) ;
    }
}