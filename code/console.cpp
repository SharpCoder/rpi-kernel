#include "console.h"

void Console::newLine( void ) {
	this->chary++;
	this->charx = 0;
	
	// Check for overflows.
	if ( this->chary > MAX_LINE ) {
		this->clear();
	}
}

void Console::printChar( char c, uint32 color ) {
	
	// Look at all the important characters.
	switch ( c ) {
		case '\n':
			this->newLine();
			return;
		break;
		case '\b': 
			if ( this->charx > 0 ) {
				this->charx--;
			}
			return;
		break;
		case '\t':
			if ( this->charx + 4 < MAX_CHAR_PER_LINE ) {
				this->charx += 4;
			}
			return;
		break;
	}
	
	// Check for overflows.
	if ( this->charx > MAX_CHAR_PER_LINE ) {
		this->newLine();
	}
	
	if ( this->chary > MAX_LINE ) {
		this->clear( );
		return;
	}
	
	// Draw it.
	this->canvas->DrawCharacter( c, &this->consoleFont, 
									this->charx * this->consoleFont.width + this->padding, 
									this->chary * this->consoleFont.height + this->padding, 
									color );
	
	// Increment.
	this->charx++;
}

// Standard printf function.
void Console::kprint( const char* string ) {
	this->kprint( (char*) string );
}

// Clearscreen function.
void Console::clear( void ) {
	this->canvas->Clear( 0x000000 );
	this->charx = 0;
	this->chary = 0;
}

void Console::kprint( char* string ) {
	// Iterate over the string.
	while ( *string != '\0' ) {
		// Print the character.
		this->printChar( *(string++), 0xFFFFFF );
	}
}

void Console::kbase( int number, int base ) {

	// Validate the base.
	if ( base < 5 || base > 26 ) {
		return;
	}

	// Determine some info about the number.
	int size = 0, count = 0, resNum = 0, remainder = 0, index = 0;
	size = getNumberLength( number, base, &count );
	
	// Size = 10 * count
	// Count = how many value places.
	// char* result = (char*)kalloc( 4 * count );
	
	// Create an array of values to easily convert
	// a given number into a character.
	char symbols[] = { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P' };
	
	// Derrive the result.
	while ( size > 0 ) {
		// resNum = number / size		
		divide( number, size, &resNum, &remainder );
		
		// Store the result.
		this->printChar( symbols[resNum], 0xFF0000 );
		// *(result + index++) =  symbols[resNum];
		
		// Subtract
		number = number - ( resNum * size );
		
		// Reduce size.
		divide( size, base, &size, &remainder );
	}
	
}

// Constructor.
Console::Console( Canvas* surface ) {

	// Instantiate the font.
	Font font;
	
	// Setup the variables.
	this->charx = 0;
	this->chary = 0;
	this->padding = 0;
	this->consoleFont = font;
	this->canvas = surface;
	
	// Clear the screen.
	this->clear();
}
