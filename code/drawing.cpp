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

void Canvas::Clear( uint32 c ) {
	Color color;
	color = color.ToColor( c );
	this->Clear(color);
}
