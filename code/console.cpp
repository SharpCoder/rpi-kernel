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
				// Erase the character.
				this->canvas->ClearCharacter( this->charx * 8 + this->padding,
											  this->chary * 16 + this->padding );
				// Refresh
				this->canvas->Draw();
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
	this->canvas->DrawCharacter( (int)(this->charx * 8 + this->padding),
								 (int)(this->chary * 16 + this->padding),
								 c, color );
	
	// Refresh the screen.
	this->canvas->Draw();
	
	// Increment.
	this->charx++;
}

// Standard printf function.
void Console::kprint( const char* string ) {
	this->kprint( (char*) string );
}

// Clearscreen function.
void Console::clear( void ) {
	this->charx = 0;
	this->chary = 1;
	this->canvas->Clear( 0x000000 );
	this->canvas->Draw();
}

void Console::kprint( char* string ) {
	// Iterate over the string.
	while ( *string != '\0' ) {
		// Print the character.
		this->printChar( *(string++), 0xFFFFFF );
	}
}

void Console::kbase( long prim, long base, long size ) {

	// Validate the base.
	if ( base < 1 ) {
		this->kprint("error: Unsupported base in mathematical operation.\n");
		return;
	}

	// Create the kfloat
	Math::kfloat digit(prim);

	char symbols[] = { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P' };
	
	
	if ( digit.getIsLarge() ) {		
		this->kbase(digit.getBig1(), base, Math::getDigitCount<mint>( digit.getBig1(), base ) - 1);
		this->kbase(digit.getBig2(), base, Math::getDigitCount<mint>( digit.getBig2(), base ) - 1);
		return;
	} else if ( size == 0 ) {
	
		size = Math::getDigitCount<mint>(prim, base) - 1;
		
	}
	
	while ( size >= 0 ) {
		
		mint denominator = Math::pow( base, size - 1, false );
		
		Math::kfloat top, bottom, val;
		
		top = ( prim <= base ) ? prim * base : prim;
		
		bottom = denominator;
		
		val = top / bottom;
		
		// Print the character.
		// Check if the character overflows.
		if ( val.getMajor() > base ) {
			this->printChar( 'e', 0x00FF00 );
		} else {	
			this->printChar( symbols[(char)val.getMajor()], 0xFF0000 );
		}
				
	    prim = prim - (val.getMajor() * denominator );
	    
	    // Decrement
	    size--;
		
	}	
}

void Console::kbase( long value, long base ) {
	this->kbase( value, base, 0 );
}

template<class T>
void Console::kprintf( char* string, T value ) {
	// Iterate over each character.
	char p, c;
	while ( *(string) != '\0' ) {
		
		// Check for special characters.
		if ( *(string) == '%' ) {
			// Peek.
			if ( *(string+1) == 'x' || *(string + 1) == 'X' ) {
				// Hex print
				this->kbase( (mint)value, 16 );
				string+=2;
				continue;
			} else if ( *(string+1) == 'd' || *(string + 1) == 'D' ) {
				this->kbase( (mint)value, 10 );
				string+=2;
				continue;
			} else if ( *(string+1) == 'o' || *(string + 1) == 'O' ) {
				this->kbase( (mint)value, 8 );
				string+=2;
				continue;
			} else if ( *(string + 1) == '%' ) {
				this->printChar( '%', 0xFFFFFF );
				string+=2;
				continue;
			} else if ( *(string + 1) == 'b' || *(string + 1 ) == 'B' ) {
				this->kbase( (mint)value, 2 );
				string+=2;
				continue;
			}
		}
		
		// Otherwise, normal.
		this->printChar( *(string), 0xFFFFFF );
		string++;
	}
}

void Console::kout( const char* string ) {
	
	const char* prefix = "[DONE]\t";
	while ( *(prefix) != '\0' ) {
		this->printChar( *(prefix++), 0xFF0000 );
	}
	this->kprint( string );
	this->printChar('\n', 0xFF0000 );
	
}

template<class T>
void Console::kprintf( const char* string, T value ) {
	this->kprintf<T>( (char*)string, value );
}

// Constructor.
Console::Console( gpu2dCanvas* surface ) {

	// Setup the variables.
	this->charx = 0;
	this->chary = 0;
	this->padding = 10;
	this->canvas = surface;
	
	// Clear the screen.
	this->clear();
}
