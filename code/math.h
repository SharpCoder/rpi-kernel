#ifndef __MATH_H_
#define __MATH_H_

#include "common.h"
#include "mem.h"

typedef		long			mint;
typedef		unsigned long	umint;
	
	
namespace Math {
	
	// Basic methods not bound to anything.
	template <class T>
	T divide( T top, T bottom, T* result, T* remainder ) { 
		
		// Calculate whether or not we need to flip the sign
		// afterwards.
		bool flipTop = (top < 0 );
		bool flipBottom = (bottom < 0);
		
		if ( flipTop ) top *= -1;
		if ( flipBottom ) bottom *= -1;
		
		// Test for some edge cases first.
		if ( bottom == 0 ) {
			*result = -1;
			*remainder = -1;
			return *result;
		}
		
		if ( top < bottom ) { 
			*result = 0;
			*remainder = top;
			return *result;
		}
		
		// Reset the pointer variables and create some temp
		// containers.
		int topVar = top, bottomVar = bottom;
		*result = 0;
		*remainder = 0;
		
		// Do long division (note: everything should be positive now).
		for (; topVar >= bottomVar; topVar -= bottomVar ) {
			*(result) = *(result) + 1;
		}
		
		// Calculate the remainder.
		*(remainder) = top - (*(result) * bottom);
		
		// Do the flips.
		if ( flipTop ) *(result) = *(result) * -1;
		if ( flipBottom ) *(result) = *(result) * -1;
		
		// Return the result.
		return *(result);
		
	}
		
	template<class T>
	T pow( T x, T y, bool standard ) {
		if ( standard ) {
			if ( y == 0 ) return 1;
			if ( y == 1 ) return x;
		}
		
		T i = 0, r = x;
		for ( ; i < y; i++ )
			r = r * x;
		return r;
	}
	
	
	template<class T>
	T pow(T x, T y) {
		return pow( x, y, true );
	}
	
	template<class T>
	T getDigitCount(T num, T base) {
		T top = num, result = 0, remainder = 0, returnVal = 0;
		while ( top > 0 ) {
			divide<T>( top, base, &result, &remainder );
			top = result;
			returnVal++;
		}
		
		return returnVal;
	}
	
	class kfloat {	
		public:
			// Division operator override.
			kfloat operator/(const kfloat &target){ 
				if ( this == &target ) return *this;
				
				// Do the math.
				mint top = this->major, bottom = target.major, result = 0, remainder = 0, i;
								
				// Now calculate the proper.				
				divide<mint>( top, bottom, &result, &remainder);
				
				// Store the result.
				this->major = result;
				this->minor = 0;
				
				// Calculate the decimal.
				for ( i = this->precision; i > 0; i-- ) {
					// Do the long division.
					divide<mint>( remainder * 10, bottom, &result, &remainder );
					this->minor += ( pow<mint>( 10, i - 1 ) * result );
				}
				
				// Return
				return *this;
			}
			
			kfloat operator=(const mint &target) {
				this->init( target, 0, 2 );
				return *this;
			}
			
			// Constructors
			kfloat( void ) { this->init( 0, 0, 0); }
			kfloat( mint num ) { this->init( num, 0, 2 ); }	
			kfloat( mint num, mint dec ) { this->init( num, dec, 2 ); }
			kfloat( mint num, mint dec, mint prec) { this->init( num, dec, prec ); }
			
			// Basic assignment operations.
			mint getMajor() {
				return this->major;
			}
			
			mint getMinor() {
				return this->minor;
			}
			
			mint getPrecision() {
				return this->precision;
			}
			
			mint setPrecision(mint p) {
				this->precision = p;
			}
			
			mint getBig1() {
				return this->big1;
			}
			
			mint getBig2() {
				return this->big2;
			}
			
			bool getIsLarge() {
				return this->isLarge;
			}
			
		private:
			mint major;
			mint minor;
			mint precision;
			
			/* Note: this is used exclusivly for very large numbers */
			bool isLarge;
			mint big1;
			mint big2;
			
			void init( mint num, mint dec, mint prec ) {
			
				// Check if we need to incorporate the big major.
				if ( num > (umint)0xFFFFFF) {
					// Yes.
					this->big1 = (num & 0xFFFF0000) >> 16;// >> (4 * 4);
					this->big2 = (num & 0x0000FFFF);
					this->isLarge = true;
				} else {
					// No
					this->big1 = num;
					this->isLarge = false;
				}
			
				this->major = num;
				this->minor = dec;
				this->precision = prec;
			}
	};
	
	
	
};


#endif
