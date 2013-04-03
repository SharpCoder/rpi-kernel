MEMORY
{
	ram : ORIGIN = 0x8000, LENGTH = 0x5000
}

SECTIONS
{
	.text : {
		irq.o;
		bootstrap.o;
		kmain.o;
	} > ram
}
