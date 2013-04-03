// *******************************
// FILE: 		kmain.cpp
// AUTHOR:		SharpCoder
// DATE:		2012-03-18
// ABOUT:		This is the entry point for my C++ based
//				raspberry pi kernel.
//
// LICENSE:		Provided "AS IS". USE AT YOUR OWN RISK.
// *******************************
#include "irq.cpp"
#include "raspberrylib.cpp"
#include "gpu2d.cpp"
#include "console.cpp"

// Include the meta data generate at compile time
// #include "meta.h"
#include "mem.h"
#include "math.h"
#include "meta.h"

using namespace RaspberryLib;

// Define any functions.
void print_header( Console* console );

// Define the entry point for our application.
// Note: It must be marked as "extern" in order for the linker
// to see it properly.
extern "C" void kmain( void ) {
		
	// Initialize memory management first.
	init_page_table();
	
	// Create a canvas.
	gpu2dCanvas canvas(false);
	
	// Create a console.
	Console console(&canvas);
	
	// Draw to the console.
	print_header( &console );
	
	
	// Get the (suspected) interrupt table values.
	volatile uint32 memdata = 0xC120;
	volatile uint32 memivt = 0x0000;
	uint32 step = 4, length = 8, i =0;
	
	for( ; i < length; i++ ) {
		volatile uint32 start = (memdata);// + ( i * step ) );
		volatile uint32 end = (memivt + ( i * step ) );		
		RaspberryLib::PUT32( end, start );
	}
	console.kout("Interrupt vector table INITIALIZED");
	
	// Turn on the green light to signify the end
	// of our initial kernel code.	
	irq_enable();
	console.kout("Interrupt engine ACTIVATED");
	
	irq_test();
	console.kout("Interrupt test code INVOKED");
	
	SetGPIO( 16, 1 );	
	
	console.kprint("\n\nKernel shutting down...");
	return;
}

void print_header( Console* console ) {
	
	meta info = getBuildInfo();
	
	console->kprint("Welcome to Mindflayer, a custom raspberry pi kernel written in C++\n");
	console->kprint("Build: ");
	console->kprint( info.VERSION );
	console->kprint("\n\n\n");
	

}
