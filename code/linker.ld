ENTRY(init)
MEMORY
{
	ram : ORIGIN = 0x8000, LENGTH = 0x5000,
	ivt : ORIGIN = 0xC100, LENGTH = 0x1000
}

SECTIONS
{
	.text : {
		bootstrap.o;
		kmain.o;
	} > ram,
	.ivt : {
		irq.o;
	} > ivt
}
