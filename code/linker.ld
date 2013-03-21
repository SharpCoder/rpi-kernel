ENTRY(init)
SECTIONS
{	
	OVERLAY 0x8000 : AT ( 0x8000 )
	{
		text
		{
			*(.text)
			*(.rodata)
			*(.data)
		}
		

	}
}
