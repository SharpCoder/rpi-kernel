// *******************************
// FILE: 		gpu2d.cpp
// AUTHOR:		SharpCoder
// DATE:		2013-03-28
// ABOUT:		This is the 2D graphics engine (re written) for my
//				raspberry pi kernel. I'm trying to implement some
//				nicer functions and a backbuffer to make everything
//				smoother.
//
// LICENSE:		Provided "AS IS". USE AT YOUR OWN RISK.
// *******************************
#include "gpu2d.h"
#include "lamefont.c"

gpu2dCanvas::gpu2dCanvas( ) {
	gpu2dCanvas( true );
}

// BASIC CONSTRUCTOR
gpu2dCanvas::gpu2dCanvas( bool useDoubleBuffer ) {
	
	// Determine whether to use the double buffer system.
	this->enableDoubleBuffer = useDoubleBuffer;
	
	// Setup invalid state first.
	this->valid = false;
	
	// Create a framebuffer request object.
	this->fbInfo = (FB_Info*)KERNEL_FB_LOC; 
	
	// Setup some information about the canvas.
	this->fbInfo->screen_width = 800;
	this->fbInfo->screen_height = 600;
	this->fbInfo->virtual_width = this->fbInfo->screen_width;
	
	// If we're using double buffer...
	if ( this->enableDoubleBuffer )
		this->fbInfo->virtual_height = this->fbInfo->screen_height * 2;
	else
		this->fbInfo->virtual_height = this->fbInfo->screen_height;
		
	this->fbInfo->depth = 24;
	this->fbInfo->xoffset = 0;
	this->fbInfo->yoffset = 0;
	this->fbInfo->pitch = 0;
	this->fbInfo->framePtr = 0;
	this->fbInfo->bufferSize = 0;
	
	// Initialize the framebuffer stuff.
	if ( !initFrameBuffer() ) {
		return;
	}
	
	// set the "switched" to false.
	// This determines which part of the virtual buffer to read/write to.
	this->switched = false;
	
}

bool gpu2dCanvas::initFrameBuffer( void ) {
	// Crete the request data.
	uint32 requestData = RaspberryLib::Memory::PHYSICAL_TO_BUS( (uint32)fbInfo );
	// Send the request.
	RaspberryLib::MailboxWrite( 1, requestData );
	
	// Hold until we get a result.
	uint32 result = 0xFF;
	do {
		result = RaspberryLib::MailboxCheck( 1 );
	} while ( result != 0 );
	
	// If we've got a result, validate the data.
	if ( this->fbInfo->framePtr == 0 ) return false;
	if ( this->fbInfo->pitch == 0 ) return false;
	
	// Fix the pointer data.
	this->fbInfo->framePtr = RaspberryLib::Memory::BUS_TO_PHYSICAL( this->fbInfo->framePtr );
	
	// Set our valid flag and return
	this->valid = true;
	return true;
}

void gpu2dCanvas::Draw( void ) {
	if ( !this->valid ) return;
	if (  !this->enableDoubleBuffer ) return;
	
	uint32 y = 0;
	if ( !this->switched ) 
		y = this->fbInfo->screen_height;
	
	this->fbInfo->yoffset = y;
	initFrameBuffer();
	
	// Toggle switched.
	this->switched = !this->switched;
}

void gpu2dCanvas::Clear( uint32 color ) {
	if ( !this->valid ) return;
	// Setup the variables.
	uint32 x = 0, y = 0, y_offset = 0, bufferOffset;
	if ( !this->switched && this->enableDoubleBuffer )
		y_offset = this->fbInfo->screen_height;
	
	// Calculate the colors.
	char r = ( color & 0xFF0000 ) >> 16;
	char g = ( color & 0x00FF00 ) >> 8;
	char b = ( color & 0x0000FF );
	
	// Iterate
	for ( y = 0; y < this->fbInfo->screen_height; y++ ) {
		for ( x = 0; x < this->fbInfo->screen_width; x++ ) {
			
			// Calculate the location in memory.
			bufferOffset = ( ( y + y_offset ) * this->fbInfo->pitch ) + ( x * 3 );
			
			// Update the data.
			*( (char*)( this->fbInfo->framePtr + bufferOffset ) ) = r;
			*( (char*)( this->fbInfo->framePtr + bufferOffset + 1 ) ) = g;
			*( (char*)( this->fbInfo->framePtr + bufferOffset + 2 ) ) = b;
			
		}
	}
	
}

void gpu2dCanvas::sync( void ) {
	// If we're not in double buffer mode, don't even bother.
	if ( !this->enableDoubleBuffer ) return;

	// Copy all the things from one buffer to the other.
	uint32 x = 0, y = 0, y_offset = 0, bufferOffset;
	bool isSwitched = (this->switched);
	
	char* a;
	char* b;
	
	// Iterate
	for ( y = 0; y < this->fbInfo->screen_height; y++ ) {
		for ( x = 0; x < this->fbInfo->screen_width; x++ ) {
			
			// Do a double array copy.
			a = (char*)( this->fbInfo->framePtr + ( y * this->fbInfo->pitch ) + (x * 3) );
			b = (char*)( this->fbInfo->framePtr + ( ( y + this->fbInfo->screen_height ) * this->fbInfo->pitch ) + (x * 3) );
			
			// Figure out which one to copy from based on the buffer thing.
			if ( isSwitched ) {
				*b = *a;
			} else {
				*a = *b;
			}
		}	
	}
}

void gpu2dCanvas::setPixel( uint32 x, uint32 y, uint32 color ) {
	// Calculate which buffer to use.
	uint32 y_offset = 0, bufferOffset = 0;
	if ( !this->switched  && this->enableDoubleBuffer ) {
		y_offset = this->fbInfo->screen_height;
	}
	// Calculate the buffer offset.
	bufferOffset = ( ( y + y_offset ) * this->fbInfo->pitch ) + ( x * 3 );
	
	// Calculate the colors.
	char r = ( color & 0xFF0000 ) >> 16;
	char g = ( color & 0x00FF00 ) >> 8;
	char b = ( color & 0x0000FF );
	
	// Set the pixel.
	*(char*)( this->fbInfo->framePtr + bufferOffset + 0 ) = r;
	*(char*)( this->fbInfo->framePtr + bufferOffset + 1 ) = g;
	*(char*)( this->fbInfo->framePtr + bufferOffset + 2 ) = b;
}

void gpu2dCanvas::DrawLine( int x1, int y1, int x2, int y2, uint32 color ) {
	
	int dx = x2 - x1;
	int dy = y2 - y1;
	int delta = (2 * dy) - dx;
	int y = y1, x = 0;
	
	// Iterate
	for ( x = x1; x < x2; x++ ) {
		if ( delta > 0 ) {
			y = y + 1;
			setPixel( x, y, color );
			delta = delta + ( 2 * dy - 2 * dx );
		} else {
			setPixel( x, y, color );
			delta = delta + ( 2 * dy );
		}
	}
}

void gpu2dCanvas::DrawCharacter( int x, int y, char c, uint32 color ) {
	// uint32 i = 0, r = 0;
	// First, figure out our index.
	//uint32 start = (uint32)c * 16;
	//uint32 end = start + 16;
	// Create a structure to hold the result in.
	
	// Get the bytes.
	char bytes[16];
	uint32 start = (uint32)c * 16, end = start + 16, i = 0;
	for ( i = 0; i < 16; i++ ) {
		bytes[i] = kernel_default_font[start + i];
	}
	
	// Create a loop.
	short num1 = 0, num2 = 0;
	for ( num1 = 0; num1 < 16; num1++ ) {
		
		char databit = bytes[num1];
		
		bool show = false;
		
		// Do some bit math.
		for ( num2 = 0; num2 < 8; num2++ ) {
			
			// Figure out whether to show a given bit.
			show = ( databit & (0x01 << num2) ) != 0;
			
			// If show, then show.
			if ( show ) {
				setPixel ( x + num2, y + num1, color );
			}
			
		}
	}	
}

void gpu2dCanvas::ClearCharacter( int x, int y ) {
	short num1 = 0, num2 = 0;
	for( num1; num1 < 16; num1++ ) {
		for( num2; num2 < 8; num2++ ) {
			setPixel( x + num2, y + num1, 0x000000 );
		}
	}
}
