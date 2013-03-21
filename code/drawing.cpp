// *******************************
// FILE: 		drawing.c
// AUTHOR:		SharpCoder
// DATE:		2012-03-19
// ABOUT:		This is the drawing library for my kernel.
//				It interfaces with the RaspberryLib to get access
//				to framebuffer information.
//
// LICENSE:		Provided "AS IS". USE AT YOUR OWN RISK.
// *******************************
#include "drawing.h"

Font::Font( void ) {
	// This is the constructor for a font. Calling it will
	// have the font automatically try to load itself
	// with the necessary information.
	
	// NOTE: This needs to be eventually file-system driven,
	// but until then there isn't much we can do.	
	// setup the font data.
	this->data = kernel_default_font;
	this->width = 8;
	this->height = 16;
}

char* Font::GetBytes( char c ) {
	// First, figure out our index.
	uint32 start = (uint32)c * 16;
	uint32 end = start + 16;
	uint32 i = 0;
	
	// Create a structure to hold the result in.
	static char bytes[16];
	
	// Next, grab the relevant bytes.
	for ( i = start; i < end; i++ ) {
		bytes[i - start] = this->data[i];
	}
	
	// Return our byte collection
	return bytes;	
}

Color::Color() {
	this->r = 0xFF;
	this->g = 0xFF;
	this->b = 0xFF;
}

Color Color::ToColor( uint32 hex ) {
	Color result;
	result.r = (hex & 0xFF0000) >> 16;
	result.g = (hex & 0x00FF00) >> 8;
	result.b = (hex & 0x0000FF);
	return result;
}

uint32 Color::FromColor ( char r, char g, char b ) {
	return (uint32)((r << 16) | (g << 8) | b);
}

Canvas::Canvas( RaspberryLib::GPU* gpuData ) {
	this->gpu = gpuData;
}

void Canvas::SetPixel( uint32 x, uint32 y, Color color) {
	// If the framebuffer wasn't initialized properly,
	// exit.
	if ( !this->gpu->valid ) return;
	
	// Now calculate the offset.
	// TODO: Change x*3 to x*(depth/8) or something.
	// (Is that even right?)
	uint32 offset = (y * this->gpu->pitch) + x * 3;
	
	// Finally, the colors.
	RaspberryLib::PUT4( this->gpu->framePtr + offset + 0, color.r );
	RaspberryLib::PUT4( this->gpu->framePtr + offset + 1, color.g );
	RaspberryLib::PUT4( this->gpu->framePtr + offset + 2, color.b );
}

Color Canvas::GetPixel( uint32 x, uint32 y ) {
	// Create a color result.
	Color result;
	
	// Check if the framebuffer is initialized properly.
	if ( !(this->gpu->valid) ) return result;
	
	// Calculate the offset.
	uint32 offset = ( y * this->gpu->pitch ) + x * 3;
	
	// Get the value.
	uint32 hex = RaspberryLib::GET32( this->gpu->framePtr + offset );
	
	// Return the color.
	return result.ToColor( hex );
}

void Canvas::Clear( Color color ) {
	// Iterate over each pixel
	// defined by the GPU.
	uint32 x, y;
	for ( y = 0; y < this->gpu->screen_height; y++ ) {
		for ( x = 0; x < this->gpu->screen_width; x++ ) {
			// Set the pixel.
			this->SetPixel( x, y, color );
		}
	}
}

void Canvas::Clear( void ) {
	Color c;
	c.ToColor( 0x000000 );
	this->Clear( c );
}

void Canvas::DrawCharacter( char character, Font* font, uint32 x, uint32 y, uint32 color ) {
	
	short i, r;
	Color theColor;
	theColor = theColor.ToColor( color );
	
	// Get the bytes from the character.
	char* bytes = font->GetBytes( character );
	// Iterate over each byte.
	for( i = 0; i < 16; i++ ) {
		// Determine the binary pattern.
		byte b = *(bytes + i);
		// Iterate over each bit
		for ( r = 0; r < 8; r++ ) {
			// Calculate whether the bit is on.
			short on = (b & ( 0x01 << r)) != 0;
			// If it is...
			if ( on == true ) {
				// Draw the pixel.
				this->SetPixel( x + r, y + i, theColor );
			}
		}
	}	
}

void Canvas::DrawString( const char * string, Font* font, uint32 x, uint32 y, uint32 color ) {
	
	uint32 count = 0;
	// Iterate over the string.
	while( *(string + count) != '\0' ) {
		// Calculate the position to draw the string at.
		uint32 charx = x + (count * font->width);
		uint32 chary = y;
		
		// Draw the string.
		this->DrawCharacter( *(string + count), font, charx, chary, color );
		count++;
	}
}

void Canvas::Clear( uint32 c ) {
	Color color;
	color = color.ToColor( c );
	this->Clear(color);
}
