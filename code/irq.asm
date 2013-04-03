.extern irq_handler

vectorTable:	
	ldr pc, stop
	ldr pc, stop
	ldr pc, stop
	ldr pc, stop
	ldr pc, stop
	ldr pc, stop
	ldr pc, arm_interrupt_handler
	ldr pc, arm_interrupt_handler
	
stop:
	;@ do nothing
	mov r2, r2

arm_interrupt_handler:
	;@ Store the return link.
	;@ sub r14, r14, #4
	;@ stmfd sp!, {r0,r1,r2,r3,r4,r14}
	
	;@ Invoke our C++ irq handler.
	bl irq_handler
	
	;@ Restore to the original caller.
	;@ ldmfd sp!, {r0,r1,r2,r3,r4,pc}^
	


