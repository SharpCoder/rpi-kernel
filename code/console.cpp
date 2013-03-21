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
				return;
			}
		break;
		case '\t':
			if ( this->charx + 4 < MAX_CHAR_PER_LINE ) {
				this->charx += 4;
				return;
			}
		break;
	}
	
	// Check for overflows.
	if ( this->charx > MAX_CHAR_PER_LINE ) {
		this->newLine();
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
	// Iterate over the string.
	while ( *string != '\0' ) {
		// Print the character.
		this->printChar( *(string++), 0xFFFFFF );
	}
}

void Console::kbase( uint32 value, uint32 base ) {
	// A google should be enough space...
	uint32 result[100];
	uint32 temp, i;
	
	// Put zeros in there.
	for ( temp = 0; temp < 100; temp++ )
		result[temp] = 0;
	
	// Reset temp.
	temp = 0;
	
	// Do the maths.
	while(true) {
		uint32 data = 0, remainder = 0;
		divide( value, base, &data, &remainder );
		
		// Store the remainder.
		result[temp++] = remainder;
		
		// If the new value is not zero, then continue again.
		if ( data == 0 ) break;
		// Validate
		if ( temp >= 99 ) break;
	}
	
	// Reverse the data and then write the output.
	for ( i = temp; i > 0; i-- ) {
		if ( result[i] == 0 )
			this->printChar( '0', 0xFFFFFF );
		else
			this->printChar( '1', 0xFFFFFF );
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
