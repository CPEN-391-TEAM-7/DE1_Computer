#include <stdio.h>


#define bit_flipper_base (volatile int *) 0xFF202040

int main()
{
   int v = 0x05; // arbitrary value

   *bit_flipper_base = v;  // write the value to component
   printf("value is now %x\n", *(bit_flipper_base+1));

   // increment what is in the component
   *(bit_flipper_base+1) = 0;  // does not matter what you write
   printf("value is now %x\n", *(bit_flipper_base+1));

   // increment it again
   *(bit_flipper_base+1) = 0;  // does not matter what you write
   printf("value is now %x\n", *(bit_flipper_base+1));

   // get the value in reverse bit order
   printf("reverse bit order %x\n", *(bit_flipper_base));

   // get the complement of the value
   printf("complement is %x\n", *(bit_flipper_base+2));

   return(0);
}
