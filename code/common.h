// *******************************
// FILE: 		common.h
// AUTHOR:		SharpCoder
// DATE:		2012-03-18
// ABOUT:		This is the include file for all pages. It defines
//				data types and memory locations that should be
//				accessible all around.
//
// LICENSE:		Provided "AS IS". USE AT YOUR OWN RISK.
// *******************************
#ifndef __COMMON_H_
#define __COMMON_H_

typedef		unsigned long		ulong;
typedef		unsigned int		uint32;
typedef		unsigned short		uint16;
typedef		unsigned char		byte;

uint32 abs( uint32 x ) {
	if ( x >= 0 ) return x;
	return x * -1;
}

void divide ( uint32 top, uint32 bottom, uint32* result, uint32* remainder ) {
	// Really lame.
	top = abs(top);
	bottom = abs(bottom);
	*result = 0;
	*remainder = 0;
		
	while (true) {
		if ( top - bottom > 0 ) {
			*(result)++;
		} else {
			*(remainder) = top;
			break;
		}
		// Subtract.
		top -= bottom;
	}
}

uint32 divide( uint32 top, uint32 bottom ) {
	uint32 result = 0, remainder = 0;
	divide( top, bottom, &result, &remainder );
	return result;
}

uint32 modulo( uint32 top, uint32 bottom ) {
	uint32 result = 0, remainder = 0;
	divide( top, bottom, &result, &remainder );
	return remainder;
}

#endif
