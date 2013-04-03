#include "raspberrylib.h" 
#include "console.h"

Console* irq_console;
bool use_irq_console;

extern "C" void irq_handler( void ) {
	
	if ( use_irq_console )
		irq_console->kout("INTERRUPT");
		
	// Blink once to show we've been here.
	RaspberryLib::Wait( 100 );
	return;
}

bool irq_enable( void ) {
	
	volatile uint32* address = (volatile uint32*)( 0x2000b000 );
	
	// ENABLE IRQ 1
	*( address + 0x210 ) = 0xFFFFFFFF;
	
	// ENABLE IRQ 2
	*( address + 0x214 ) = 0xFFFFFFFF;
	
	// ENABLE BASIC IRQ
	*( address + 0x218 ) = 0x000000FF;
	
	return true;
}

void irq_test( void ) {
	
	asm volatile( "SWI #0x0000FF" );
		
}
