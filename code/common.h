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

#include "./libs/mem.h"

#define NULL 0

typedef		unsigned long		ulong;
typedef		unsigned int		uint32;
typedef		volatile unsigned long int	uint32_t;
typedef		unsigned short		uint16;
typedef		unsigned char		byte;

// Stack data structure.
template<class T>
class iterator {
	public:
		T val;
		iterator* prev;
		iterator(iterator* previous, T value ) {
			this->val = value;
			this->prev = previous;
		}
		
		volatile iterator* next() {
			if ( this->prev == NULL ) return NULL;
			return this->prev;
		}
		
		T getVal() {
			return this->val;
		}
};

template<class T>
class Stack {
	private:
		iterator<T>* top;
		int length;
		
	public:			
		void push(T* val) {
			iterator<T>* next = new iterator<T>( this->top, val );
			this->top = next;
			this->length++;
		}
		
		T* pop( void ) {
			// NULL Checking
			if ( this->top == NULL ) return NULL;
			
			// Do the pop
			T* result = this->top->getVal();
			this->top = this->top->next();
			this->length--;
			
			// Return the result
			return result;
		}
		
		int getLength() {
			return this->length;
		}
		
		iterator<T>* getIterator() {
			return this->top;
		}
};

template<class T>
class List {
	public:
		iterator<T>* first;
		uint32 length;
		
		List() {
			this->first = NULL;
			this->length = 0;
		}
	
		void add(T val) {
			// Allocate it.
			void* ptrN = malloc(sizeof(iterator<T>));
			
			iterator<T>* newItem = new (ptrN) iterator<T> (NULL, val);
			iterator<T>* last = this->first;
			if ( last == NULL ) {
				this->first = newItem;
			} else if ( last->prev == NULL ) {
				this->first->prev = newItem;
			} else {			
				do {
					last = last->prev;
				} while ( last->prev != NULL );
				last->prev = newItem;
			}
			
			this->length++;
		}
		
		T getAt(int index) {
			if ( this->first == NULL ) return (T)NULL;
			
			if ( index == 0 ) {
				return this->first->val;
			} else {
				iterator<T>* last = this->first;
				do {
					last = last->prev;
					index--;
				} while ( last->prev != NULL && index > 0 );
				return last->val;
			}
		}
		
		T pop() {
			volatile iterator<T>* last = this->first;
			do {
				last = last->prev;
			} while ( last->prev != NULL );
			volatile iterator<T>* result = last->prev;
			last->prev = NULL;
			return result->val;
		}
		
		int getLength() {
			return this->length;
		}
		
		iterator<T>* getIterator() {
			return this->first;
		}
};

// Linked list structure/class
class LinkedList {
public:
	LinkedList* next;
	LinkedList* previous;
	uint32 value;
	
	// Public
	LinkedList() {
		
	}

	LinkedList* GetNext() {
		return this->next;
	}
	
	LinkedList* GetPrev() {
		return this->previous;
	}
	
	void Add( LinkedList* item ) {
		LinkedList* end;
		// Traverse the linked list.
		while( end->next ) { end = end->next; }
		// Add to the end.
		end->next = item;
	}
	
	void Remove() {
		
		if ( this->next && this->previous ) {
			// Link em.
			this->previous->next = this->next;
			this->next->previous = this->previous;
			// If there is a previous link...
		} else if ( this->previous ) {
			// We don't have any forward link.
			this->previous->next = 0;
		} else if ( this->next ) {
			// well...
			this->value = this->next->value;
			this->next = this->next->next;
			this->previous = 0;
		}
		
	}
};


int abs( int x ) {
	if ( x >= 0 ) return x;
	return x * -1;
}


int getNumberLength( int number, int base, int* count ) {
	int size = 1;
	*count = 0;
	
	while(true) {
		if ( number > (size*base) ) {
			size *= base;
			*(count)++;
		} else {
			break;
		}
	}
	
	return size;
}

int getNumberLength( int number, int base ) {
	int count = 0;
	return getNumberLength( number, base, &count );
}

int getNumberLength( int number ) {
	return getNumberLength( number, 10 );
}

void divide ( int top, int bottom, int* result, int* remainder ) {
	
	// Cannot divide by zero.
	if ( bottom == 0 ) return;
	if ( bottom == 1 ) {
		*result = top;
		*remainder = 0;
		return;
	}
	// Get the absolute values of everything.
	top = abs(top);
	bottom = abs(bottom);
	
	// Reset the pointer values.
	*result = 0;
	*remainder = 0;
		
	// Iterate until we hit zero.
	int i;
	for ( i = 0; i < top; i++ ) {
		if ( (top - bottom) >= 0 ) {
			*result = *result + 1;
		} else {
			*remainder = top;
			break;
		}
		top = top - bottom;
	}
}

int divide( int top, int bottom ) {
	int result = 0, remainder = 0;
	divide( top, bottom, &result, &remainder );
	return result;
}

int modulo( int top, int bottom ) {
	int result = 0, remainder = 0;
	divide( top, bottom, &result, &remainder );
	return remainder;
}

#endif
