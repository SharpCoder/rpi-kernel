#include "raspberrylib.h" 

// TODO: Delegate this to the raspberry lib.
// but I want to test it in a clean environment first.
unsigned int ioaddr( unsigned int addr, unsigned int base ) {
	return (0x20000000) + base + addr;
}

extern "C" void irq_handler( void ) {
	
	// Reload the timer.
	*( (volatile uint32*)(0x2000b000 + 0x40c) ) = 0x01;
	
	// Blink once to show we've been here.
	RaspberryLib::Blink( 10, 50 );
	RaspberryLib::Wait( 1000 );
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
	
	// Enable the timer ergister.
	volatile uint32* address = (volatile uint32*)( 0x2000b000 );
	
	// Load the timer.
	*(address + 0x400 ) = 0x0000FFFF;
	
	// Invoke the timer control bits.
	*(address + 0x408 ) = 0x144;
	
	
}
