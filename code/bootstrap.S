.global init
.extern kmain

init:
@; Move the stack pointer.
	mov sp, #0x10000
	
@; Initialize interrupts.
	cpsie i
	
@; Invoke our main C++ entrypoint.
	bl kmain
	
@; Loop forever
	b hang$

hang$:
	b hang$
