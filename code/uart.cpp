// TODO: Delegate this to the raspberry lib.
// but I want to test it in a clean environment first.
#include "common.h"
#include "raspberrylib.h"

using namespace RaspberryLib;

#define 	BASE_PERIPHERAL_ADDR		0x20000000

// Enable auxilary
#define		AUX_ENABLES					0x215004
// Mini UART I/O Data
#define		AUX_MU_IO_REG				0x215040
// Mini UART Interrupt Enable
#define		AUX_MU_IER_REG				0x215044
// Mini UART Line Control
#define		AUX_MU_IIR_REG				0x215048
// Mini UART Modem Control
#define		AUX_MU_LCR_REG				0x21504C
// Mini UART Scratch
#define		AUX_MU_MCR_REG				0x215050	
// Mini UART Line Status
#define		AUX_MU_LSR_REG				0x215054
// Mini UART Extra Controle
#define		AUX_MU_CNTL_REG				0x215060
// Mini UART Extra Status
#define		AUX_MU_STAT_REG				0x215064
// Mini UART Baudrate
#define		AUX_MU_BAUD_REG				0x215068

// GPIO Pin Enable Locations
#define		GPFSEL0						0x200004
#define		GPPUD						0x200095
#define		GPPUDCLK0					0x200098	

uint32 ioaddr( uint32 addr ) {
	return BASE_PERIPHERAL_ADDR + addr;
}

// SharpCoder
// 2013-03-21
// First test of the uart system. I have no idea what
// I'm doing. I'm kind of reading between the SoC Peripheral
// manual and some code examples, but mostly trying to derrive
// this myself.
void _test_uart_one(Console* console) {
	
	// Setup the GPIO function
	PUT32( ioaddr(GPFSEL0), (1 << 13) );
	PUT32( ioaddr(GPPUD), 0x01 );
	WaitQuick(150);
	PUT32( ioaddr(GPPUDCLK0), (1 << 14)) ;
	WaitQuick(150);
	PUT32( ioaddr(GPPUD), 0x00 );
	PUT32( ioaddr(GPPUDCLK0), 0x00 );
	
	// Now we have programmed pin 14
	// to be wired up to the mini UART
	// clock.
	
	// Enable the mini uart!
	PUT32( ioaddr(AUX_ENABLES), 0x01 );
	// Enable the uart ability to transmit.
	PUT32( ioaddr(AUX_MU_CNTL_REG), 0x01 );
	
	// Now poll the thing.
	uint32 data;
	while ( true ) {
		//data = GET32( ioaddr(AUX_MU_
	}
	
		
}
