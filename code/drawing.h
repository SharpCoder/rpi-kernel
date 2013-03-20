// *******************************
// FILE: 		drawing.h
// AUTHOR:		SharpCoder
// DATE:		2012-03-19
// ABOUT:		This is the drawing library for my kernel.
//				It interfaces with the RaspberryLib to get access
//				to framebuffer information.
//
// LICENSE:		Provided "AS IS". USE AT YOUR OWN RISK.
// *******************************
#ifndef __DRAWING_H_
#define __DRAWING_H_

// Include the raspberry library.
#include "raspberrylib.h"


class Color {
	public:
		Color();
		char r, g, b;
		static Color ToColor( uint32 hex );
		static uint32 FromColor ( char r, char g, char b );
};

class Canvas {
	public:
		// The public methods.
		// void DrawString( char* string );
		void Clear( Color c );
		void Clear( uint32 c );
		
		Canvas( RaspberryLib::GPU* gpuData );
		
	private:
		// Properties
		volatile RaspberryLib::GPU* gpu;
		
		// Methods
		void SetPixel( uint32 x, uint32 y, Color c);
		Color GetPixel( uint32 x, uint32 y );

};

#endif
