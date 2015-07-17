// *******************************
// FILE: 		kstring.h
// AUTHOR:		SharpCoder
// DATE:		2015-03-30
// ABOUT:		This is a terrible, horrible, repulsive
//				string library I wrote.	
//
// LICENSE:		Provided "AS IS". USE AT YOUR OWN RISK.
// *******************************
#ifndef __PI_STRING_H_
#define __PI_STRING_H_

#include "./mem.h"

int strlen(char* input);

class string {
	private:
		char* value;

	public:
		int length;

		string(void) {
			this->value = (char*)"\0";
		}
		string(const char* val) {
			this->value = (char*)"\0";
			this->append((char*)val);
		}

		void append(const char* c) {
			this->append((char*)c);
		}

		void append(char* c) {
			int a = strlen(this->value);
			int b = strlen(c);			
			int len = a + b;
			
			char* newVal = (char*)malloc((len + 1) * sizeof(char));
			// Clear it out.
			for ( int i = 0; i < len + 1; i++ )
				*(newVal + i) = '\0';
			
			for ( int i = 0; i < a; i++ )
				*(newVal + i) = this->value[i];
				
			for ( int i = 0; i < b; i++ )
				*(newVal + a + i) = *(c + i);

			this->value = newVal;
			this->length = a + b + 1;
		}

		void append(char c) {
			char vals[] = { c, '\0' };
			this->append(vals);
		}

		char getAt(int index) {
			if ( index > this->length ) return (char)NULL;
			return *(this->value + index);
		}

		string* substr(int start, int end) {
			string* der = new string();
			for ( int i = start; i < end; i++ ) {
				der->append(*(this->value + i));
			}
			return der;
		}

		char* toString() {
			return this->value;
		}
};

int strlen(char* input) { 
	int index = 0;
	char temp = ' ';
	do {
		temp = input[index++];
	} while ( temp != '\0' );
	return index - 1;
}

bool strcmp(string* a, string* b) {
	if ( a->length != b->length ) return false;

	const char* one = a->toString();
	const char* two = b->toString();

	for ( int i = 0; i < a->length; i++ ) {
		if ( one[i] != two[i] ) return false;
	}

	return true;
}

#endif
