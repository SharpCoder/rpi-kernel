ENTRY (init_entry_point)
MEMORY
{
    ram : ORIGIN = 0x8000, LENGTH = 0x10000
}

SECTIONS
{
    .text : { *(.text*) } > ram
    . = ALIGN(4096);
    
    .data : { *(.data*) } > ram
    . = ALIGN(4096);
    
    .bss : { *(.bss*) } > ram
    . = ALIGN(4096);
    
    _bss_end = .;
    . = ALIGN(4096);
    
    . = . + 0x1000;
    _end = .;
}
