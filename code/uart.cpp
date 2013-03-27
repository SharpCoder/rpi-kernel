// TODO: Delegate this to the raspberry lib.
// but I want to test it in a clean environment first.
unsigned int ioaddr( unsigned int addr ) {
	return 0x20000000 + addr;
}

extern "C" void irq_handler( void ) {
	// Blink once to show we've been here.
	// Blink( 1, 200 );
	return;
}
