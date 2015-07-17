.global init_entry_point

.extern kmain
.extern init
.extern interrupt_vector

;@ This is the actual entr point to the application.
;@ I need to look into how to do this another way, but it seems like
;@ this is the most reliable method for copying the interrupt handlers
;@ into the IVT.
init_entry_point:

	;@ Basically each line represents the value to a branch command.
	;@ Since this is the first thing, we know that our _relative_
	;@ interrupt vector table will always be at the start of our
	;@ kernel ( location: 0x8000 ).
	
	;@ Reset Interrupt
	ldr pc, reset_handler
	
	;@ Undefined Instruction
	ldr pc, basic_handler
	
	;@ Software Interrupt
	ldr pc, basic_handler
	
	;@ Prefetch Abort
	ldr pc, basic_handler
	
	;@ Data Abort
	ldr pc, basic_handler
	
	;@ ?? Looks like the ARM ARM specifys that
	;@ there is just a casual hole here, so I guess we
	;@ are filling it with another handler. Though I don't
	;@ really know what calls this.
	ldr pc, basic_handler
	
	;@ IRQ
	ldr pc, basic_handler
	
	;@ FIQ
	ldr pc, basic_handler

;@ Next up is a trick to basically force the compiler
;@ to store the branch command as a value
;@ into the respective register.
reset_handler: .word reset
basic_handler: .word arm_interrupt_handler

;@ Then this is our "reset" function
;@ which is what will actually get automatically
;@ called since the program is going to flow down
;@ into this method.
reset:

	;@ So now we setup everything to copy the values over.
	mov r0, #0x8000
	mov r1, #0x0000

	;@ And then we do the actual data copy.
	ldmia r0!,{r2,r3,r4,r5,r6,r7,r8,r9}
	stmia r1!,{r2,r3,r4,r5,r6,r7,r8,r9}
	ldmia r0!,{r2,r3,r4,r5,r6,r7,r8,r9}
	stmia r1!,{r2,r3,r4,r5,r6,r7,r8,r9}
	
	;@ (PSR_IRQ_MODE|PSR_FIQ_DIS|PSR_IRQ_DIS)
    mov r0,#0xD2
    msr cpsr_c,r0
    mov sp,#0x8000

    ;@ (PSR_FIQ_MODE|PSR_FIQ_DIS|PSR_IRQ_DIS)
    mov r0,#0xD1
    msr cpsr_c,r0
    mov sp,#0x4000

    ;@ (PSR_SVC_MODE|PSR_FIQ_DIS|PSR_IRQ_DIS)
    mov r0,#0xD3
    msr cpsr_c,r0
    mov sp,#0x800000
	
	;@ And then call the bootstrapper init function.
	;@ NOTE: I delegated these two assembly files because I don't
	;@ want to marry my kernel to the ivt setup code.
	bl kmain
	b hang
hang:
	b hang

.globl enable_irq
enable_irq:
    mrs r0,cpsr
    bic r0,r0,#0x80
    msr cpsr_c,r0
    bx lr

;@ And here is the actual interrupt handler code.
arm_interrupt_handler:
	
    ;@ Store the return link.
    stm sp, {r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12}
	
	;@ Setup the arguments for our method.
	mov r0, lr
	mov r1, sp
	
	;@ Invoke our C++ irq handler.
	bl interrupt_vector
	
	;@ subs pc, r14, #4
	b hang
	;@ Restore to the original caller.
	;@ ldmfd sp!, {r0,r1,r2,r3,r4,pc}^
	;@ bx lr
