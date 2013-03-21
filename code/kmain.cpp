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

using namespace RaspberryLib;

// Define the entry point for our application.
// Note: It must be marked as "extern" in order for the linker
// to see it properly.
extern "C" void kmain( void ) {
	
	// Testbed
	GPU* gpu = AcquireFrameBuffer( 1024, 768 );
	
	// Verify the gpu was successful.
	if ( !gpu->valid ) return;

	// Create a canvas.
	Canvas c(gpu);
	
	// Clear the screen.
	c.Clear( 0x00FF00 );
	
	// green LED light on.
	SetGPIO( 16, 1 );
		
	// Exit
	return;
	
}
