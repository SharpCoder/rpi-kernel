// TODO: Delegate this to the raspberry lib.
// but I want to test it in a clean environment first.
#include "common.h"
#include "raspberrylib.h"

using namespace RaspberryLib;

#define 	BASE_PERIPHERAL_ADDR		0x20000000

uint32 ioaddr( uint32 addr ) {
	return BASE_PERIPHERAL_ADDR + addr;
}

extern "C" void irq_handler( void ) {
	
}
