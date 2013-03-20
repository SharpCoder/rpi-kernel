.global init
.extern kmain

init:
	mov sp, #0x100000
	bl kmain
	b hang$
	
hang$:
	b hang$
