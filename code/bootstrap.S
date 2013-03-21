.global init
.extern kmain

init:
@; Move the stack pointer.
	mov sp, #0x100000
	
@; Invoke our main C++ entrypoint.
	bl kmain
	
@; Loop forever
	b hang$

hang$:
	b hang$
