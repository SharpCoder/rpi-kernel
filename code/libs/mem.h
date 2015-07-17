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

typedef		unsigned int		uint32;

#define		page_size				(uint32)512
#define 	MAX_BRK 				0xf0000

extern char _end;

uint32 cur_brk = 0;

uint32 alloc_stack(uint32 bytes) {
	cur_brk += bytes;
	return cur_brk;
}

void *sbrk(uint32 increment)
{
	if(cur_brk == 0)
	{
		cur_brk = (uint32)&_end;
		if(cur_brk & 0xfff)
		{
			cur_brk &= 0xfffff000;
			cur_brk += 0x1000;
		}
	}
	
	uint32 old_brk = cur_brk;
	cur_brk += increment;
	
	// Align up to 512
	if(cur_brk & 0x1ff)
	{
		cur_brk &= ~0x1ff;
		cur_brk += 0x200;
	}
	
	// Fix if it's too big.
	if ( cur_brk > MAX_BRK ) {
		cur_brk = old_brk;
		return (void*)-1;
	}
	
	// Zero out the memory.
	for ( int i = 0; i < increment; i++ )
		*((uint32*)old_brk + i) = 0;
	
	// return the address.
	return (void*)old_brk;
}

void* malloc(uint32 bytes) {
	return sbrk(bytes);
}

void* operator new( uint32 bytes ) {
	return malloc(bytes);
}

void* operator new( uint32 bytes, void*& ptr ) {
	return ptr;
}

#endif
