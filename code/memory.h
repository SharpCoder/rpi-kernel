#ifndef __MEMORY_H_
#define __MEMORY_H_

#include "common.h"
 
class PageEntry : public LinkedList {
public:
	volatile ulong* address;
	ulong size;
	
	PageEntry( ulong usize ) {
		this->size = usize;
	}	
};

volatile ulong* memory_space = (volatile ulong*)(0x9000);
volatile ulong* end;

volatile PageEntry* page_table;

void init_memory() {
	// Create the first page entry.
	PageEntry first(1024);
	page_table = &first;
}

volatile void* kalloc( int bytes ) {
	
	// Create a new page entry.
	PageEntry newPage( bytes * 4 );
	uint32 index;
	
	// Allocate the space.
	newPage.address = end;
	
	// Write zero in the space.
	for (index = 0; index < bytes * 4; index++) {
		*(memory_space + index) = 0;
	}
	
	// Traverse the end of the page table linked list.
	page_table->next = &newPage;
	
	// Update the end pointer.
	end = (ulong*)( end + bytes * 4 );
	
	// Return a pointer to the memory.
	return newPage.address;
}

#endif
