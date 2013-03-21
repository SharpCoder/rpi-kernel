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

using namespace RaspberryLib;
void outputMetaData( Console* console );

// Define the entry point for our application.
// Note: It must be marked as "extern" in order for the linker
// to see it properly.
extern "C" void kmain( void ) {
	// Testbed
	GPU* gpu = AcquireFrameBuffer( 1024, 768 );
	
	// Verify the gpu was successful.
	if ( !gpu->valid ) return;

	// Setup the screen so we can finally output some stuff!
	Canvas canvas(gpu);
	Console console( &canvas );
	
	// Output the metadata information.
	outputMetaData(&console);
	
	// Write the header data for our kernel.
	console.kprint("Framebuffer initialized.\n");
	console.kbase( 137, 2 );
	// Success stuff.
	console.kprint("Successfully initialized kernel!\n");
	SetGPIO( 16, 1 );
		
	// Exit
	return;
}

void outputMetaData( Console* console ) {
	meta metadata = getBuildInfo();
	// Write the data to the console.
	console->kprint( "Welcome to the " );
	console->kprint( metadata.KERNEL_NAME );
	console->kprint("!\n");
	console->kprint("Version: ");
	console->kprint( metadata.VERSION );
	console->kprint(" - ");
	console->kprint( metadata.KERNEL_NAME_CODE );
	console->kprint("\n");
	console->kprint( "View the Code at: " );
	console->kprint( metadata.KERNEL_REPO );
	console->kprint("\n\n");
	console->kprint( "v" );
	console->kprint( metadata.VERSION );
	console->kprint( " " );
	console->kprint( metadata.BUILD_DATE );
	console->kprint( "\n" );
	console->kprint( "Original Author: " );
	console->kprint( metadata.AUTHOR );
	console->kprint( "\nContact Information: " );
	console->kprint( metadata.EMAIL );
	console->kprint( "\n\n" );
}
