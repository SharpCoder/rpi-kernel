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

using namespace RaspberryLib;

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
	
	// Write the header data for our kernel.
	console.kprint("Framebuffer initialized.\n");
	console.kbase( 137, 2 );
	// Success stuff.
	console.kprint("Successfully initialized kernel!\n");
	SetGPIO( 16, 1 );
		
	// Exit
	return;
}
