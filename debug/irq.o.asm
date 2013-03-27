
irq.o:     file format elf32-littlearm


Disassembly of section .text:

00000000 <vectorTable>:
   0:	eafffffe 	b	0 <init>
   4:	e59ff014 	ldr	pc, [pc, #20]	; 20 <stop>
   8:	e59ff010 	ldr	pc, [pc, #16]	; 20 <stop>
   c:	e59ff00c 	ldr	pc, [pc, #12]	; 20 <stop>
  10:	e59ff008 	ldr	pc, [pc, #8]	; 20 <stop>
  14:	e59ff004 	ldr	pc, [pc, #4]	; 20 <stop>
  18:	e59ff004 	ldr	pc, [pc, #4]	; 24 <arm_interrupt_handler>
  1c:	e51ff000 	ldr	pc, [pc, #-0]	; 24 <arm_interrupt_handler>

00000020 <stop>:
  20:	e1a02002 	mov	r2, r2

00000024 <arm_interrupt_handler>:
  24:	e24ee004 	sub	lr, lr, #4
  28:	e92d401f 	push	{r0, r1, r2, r3, r4, lr}
  2c:	ebfffffe 	bl	0 <irq_handler>
  30:	e8fd801f 	ldm	sp!, {r0, r1, r2, r3, r4, pc}^

Disassembly of section .ARM.attributes:

00000000 <.ARM.attributes>:
   0:	00001541 	andeq	r1, r0, r1, asr #10
   4:	61656100 	cmnvs	r5, r0, lsl #2
   8:	01006962 	tsteq	r0, r2, ror #18
   c:	0000000b 	andeq	r0, r0, fp
  10:	01080106 	tsteq	r8, r6, lsl #2
  14:	Address 0x00000014 is out of bounds.

