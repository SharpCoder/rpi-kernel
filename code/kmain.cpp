// *******************************
// FILE: 		kmain.cpp
// AUTHOR:		SharpCoder
// DATE:		2012-03-18
// ABOUT:		This is the entry point for my C++ based
//				raspberry pi kernel.
//
// LICENSE:		Provided "AS IS". USE AT YOUR OWN RISK.
// *******************************
#include "raspberrylib.cpp"
#include "drawing.cpp"
#include "console.cpp"

// Include the meta data generate at compile time
#include "meta.h"
#include "memory.h"

using namespace RaspberryLib;
void outputMetaData( Console* console );

// Define the entry point for our application.
// Note: It must be marked as "extern" in order for the linker
// to see it properly.
extern "C" void kmain( void ) {
	
	// Initialize the GPU module.
	GPU* gpu = AcquireFrameBuffer( 1024, 768 );
	
	// Verify the gpu was successful.
	if ( !gpu->valid ) return;

	// Initialize memory management.
	init_memory();

	// Setup the screen so we can finally output some stuff!
	Canvas canvas(gpu);
	Console console( &canvas );
	
	// Test out our math function
	//console.kbase( 190, 16 );
	canvas.Clear( 0x0A0C25 );	
	 
	// Output the metadata information.
	outputMetaData(&console);
	
	// Test out the interrupt system.
	// trigger_interrupt();
	SetGPIO( 16, 1 );	
	
	// Exit
	return;
}

void outputMetaData( Console* console ) {
	meta metadata = getBuildInfo();
	
	// Example Output:
	// =====================================
	// Welcome to the 0xrpi Kernel!
	// Version 0.0.100 - Mindflayer
	// View the code at: https://git@git.com/sharpcoder/rpi-kernel
	//
	// v0.0.100 2013-03-21  6:00 PM
	// Original author: SharpCoder
	// Contact information: joshua@debuggle.com
	//
	//
	
	// Write the data to the console.
	console->kprint( "Welcome to the " );
	console->kprint( metadata.KERNEL_NAME );
	console->kprint("!\n");
	console->kprint("Version: ");
	console->kprint( metadata.VERSION );
	console->kprint(" - ");
	console->kprint( metadata.KERNEL_NAME_CODE );
	console->kprint("\n");
	console->kprint( "View the code at: " );
	console->kprint( metadata.KERNEL_REPO );
	console->kprint("\n\n");
	console->kprint( "v" );
	console->kprint( metadata.VERSION );
	console->kprint( " " );
	console->kprint( metadata.BUILD_DATE );
	console->kprint( "\n" );
	console->kprint( "Original author: " );
	console->kprint( metadata.AUTHOR );
	console->kprint( "\nContact information: " );
	console->kprint( metadata.EMAIL );
	console->kprint( "\n\n" );
}
