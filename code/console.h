#ifndef __CONSOLE_H_
#define __CONSOLE_H_

#include "common.h"
#include "./libs/mem.h"
#include "./libs/math.h"
#include "raspberrylib.h"
#include "gpu2d.h"

#define 	MAX_CHAR_PER_LINE		120
#define		MAX_LINE				45

class Console {
	public:
		
		// Fancy print methods.
		template<class T>
		void kprintf( char* string, T value );
		
		template<class T>
		void kprintf( const char* string, T value );
		
		// Standard printf functions.
		void kprint( char c );
		void kprint( char* string );
		void kprint( const char* string );
		void kbase( long value, long base, long size );
		void kbase( long value, long base );
	
		// Really useless functions
		void kout( const char* string );
		
		// Clearscreen function.
		void clear( void );
		
		// Constructor.
		Console( gpu2dCanvas* surface );
		
	private:
		uint32 charx;
		uint32 chary;
		uint32 padding;
		gpu2dCanvas* canvas;
		void printChar( char c, uint32 color );
		void newLine( void );
};

#endif
