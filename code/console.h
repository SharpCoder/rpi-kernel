#ifndef __CONSOLE_H_
#define __CONSOLE_H_

#include "common.h"
#include "raspberrylib.h"
#include "drawing.h"

#define 	MAX_CHAR_PER_LINE		120
#define		MAX_LINE				45

class Console {
	public:
		
		// Standard printf functions.
		void kprint( char* string );
		void kprint( const char* string );
		void kbase( int value, int base );
		
		// Clearscreen function.
		void clear( void );
		
		// Constructor.
		Console( Canvas* surface );
		
	private:
		uint32 charx;
		uint32 chary;
		uint32 padding;
		Canvas* canvas;
		Font consoleFont;
		void printChar( char c, uint32 color );
		void newLine( void );
};

#endif
