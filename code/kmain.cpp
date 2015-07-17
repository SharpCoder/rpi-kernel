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
#include "keyboard.h"

// Include the meta data generate at compile time
#include "./libs/mem.h"
#include "./libs/math.h"
#include "./libs/string.h"
#include "meta.h"

using namespace RaspberryLib;

Console* console;

// Define any functions.
void print_header( Console* console );
void printf( const char* c);
void assert( const char* c);
extern "C" void enable_irq();

void run1() {
	while(true) {
		// NOTE: locking mechanism has issues...
		lock();
		// NOTE: printf() is not thread safe.
		//printf("Hello from thread 1\n");
		unlock();
		Wait(1000);
	}
}

void run2() {
	while(true) {
		// NOTE: locking mechanism has issues...
		lock();
		// NOTE: printf() is not thread safe.
		//printf("Hello from thread 2\n");
		unlock();
		Wait(1000);
	}
}

// Define the entry point for our application.
// Note: It must be marked as "extern" in order for the linker
// to see it properly.
extern "C" void kmain( void ) {
	
	// Initialize the irq
	irq_init();
	
	// Initialize at zero.
	sbrk(0);
	
	// Create a canvas.
	gpu2dCanvas canvas(false);
	
	// Create a console.
	console = new Console(&canvas);
	
	// setup the IRQ console
	irqConsole = console;
	
	// Draw to the console.
	print_header( console );
	
	//UsbInitialise();
	//assert("Keyboard Initialized");
	
	//  Queue up a few jobs.
	fork(&run1);
	fork(&run2);
	
	// Setup IRQ
	assert("IRQ Enabled");
	enable_irq();
	
	// Hang forever.
	while(1) { }
	return;
}

void assert(const char* val) {
	console->kout(val);
}

void printf(const char* val) {
	console->kprint(val);
}

void print_header( Console* console ) {
	
	meta info = getBuildInfo();
	
	console->kprint("Welcome to Mindflayer, a custom raspberry pi kernel written in C++\n");
	console->kprint("Build: ");
	console->kprint( info.VERSION );
	console->kprint("\n\n\n");
	

}
