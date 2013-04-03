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

	// Create a canvas.
	gpu2dCanvas canvas(false);
	
	// Create a console.
	Console console(&canvas);
	
	// Wire up the interrupts.
	irq_console = &console;
	use_irq_console = true;
	
	// Draw to the console.
	print_header( &console );
		
	console.kprint("Waiting: ");
	int index;
	for(index = 18; index > 0; index-- ) {
		console.kprint(".");
		Wait( 300 );
	}
	console.kprint("\n[STARTING]\n\n");

	// Initialize memory management first.
	init_page_table();
	console.kout("Initialized page table");
		
	// Turn on the green light to signify the end
	// of our initial kernel code.	
	irq_enable();
	Wait(500);
	console.kout("Interrupt vectors ENABLED");
	console.kprint("About to throw an SWI exception...\n");
	
	Wait( 5000 );
	irq_test();
	
	Wait(500);
	console.kout("SWI Exception Thrown");
	
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
