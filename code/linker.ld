ENTRY(init)
SECTIONS
{	
	vectortable 0x0000 : {
		irq.o;
	},
	kernel 0x8000 : {
		*(.text)		
		*(.bss);
		*(.data);
		*(.rodata);
	}
	
	
}
