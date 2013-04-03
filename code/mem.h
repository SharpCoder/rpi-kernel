// This is a completely blank test arena for memory management.
// The pre-implemented test case functions (defined at the bottom) are
// already wired up to the drawing engine. An array of possible output colors
// are defined which reveal what test(s) passed/failed.

// The idea is to write up a variety of methods and general
// functionality based around memory management to experiment and see
// what we have available.

// Please note: I've never written any memory management system, nor have I
// taken a class on it. I'm just winging it with my own ideas.
// Nothing fancy here.

#ifndef __MEM_H_
#define __MEM_H_

#define		memory_page_table		(void*)0xF0000
#define 	memory_base				(void*)0xFF000


// Create a basic linked list to represent page data.
class page {
public:
	// The next item in the list.
	page* next;
	// Whether we point to anything.
	bool linked;
	
	// This is the memory_base address we point to
	// and how many blocks we take up.
	void* addr;
	uint32 blocks;
		
	void init( uint32 bytes, void* addrPtr ) {
		this->linked = false;
		this->addr = addrPtr;
		this->blocks = bytes;
		// Overwrite the memory blocks.
		uint32 index;
		for ( index = 0; index < bytes; index++ ) {
			*((uint32*)addrPtr + index) = 0;
		}
	}
	
	void* allocate(uint32 bytes) {
		page* endNode = last();
		
		// Create a new page entry.
		page* entry = (endNode + (sizeof(page)*4));
		
		// Setup the new page node.
		// Calculate the starting address of this location in memory.
		uint32* memLoc = (uint32*)endNode->addr;
		memLoc = ( memLoc + endNode->blocks );
		
		// Now calculate the total bytes.
		entry->init(bytes, memLoc);
		
		// Associate the entry.
		endNode->next = entry;
		endNode->linked = true;
		
		// Return the address to our new block of memory.
		return entry->addr;
	}
	
	page* last() {
		page* t = this;
		while ( t->linked ) {
			t = t->next;
		}
		return t;
	}
	
};

// Create a parent object.
page* rootPageTable;

// Now create some methods.
void* alloc( uint32 bytes ) {
	return rootPageTable->allocate( bytes );	
}

template <class type>
type* talloc( ) {
	type* result = (type*)alloc( sizeof(type) * 4 );
	return result;
}


// Initialize the memory
void init_page_table( void ) {
	// First, create a page.
	rootPageTable = (page*)(memory_page_table);
	// Setup the initial variables.
	rootPageTable->linked = false;
	rootPageTable->addr = memory_base;
}


#endif
