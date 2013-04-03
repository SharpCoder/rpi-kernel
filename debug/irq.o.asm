
irq.o:     file format elf32-littlearm


Disassembly of section .text:

00000000 <init_entry_point>:
   0:	e59ff018 	ldr	pc, [pc, #24]	; 20 <reset_handler>
   4:	e59ff018 	ldr	pc, [pc, #24]	; 24 <basic_handler>
   8:	e59ff014 	ldr	pc, [pc, #20]	; 24 <basic_handler>
   c:	e59ff010 	ldr	pc, [pc, #16]	; 24 <basic_handler>
  10:	e59ff00c 	ldr	pc, [pc, #12]	; 24 <basic_handler>
  14:	e59ff008 	ldr	pc, [pc, #8]	; 24 <basic_handler>
  18:	e59ff004 	ldr	pc, [pc, #4]	; 24 <basic_handler>
  1c:	e51ff000 	ldr	pc, [pc, #-0]	; 24 <basic_handler>

00000020 <reset_handler>:
  20:	00000028 	andeq	r0, r0, r8, lsr #32

00000024 <basic_handler>:
  24:	0000004c 	andeq	r0, r0, ip, asr #32

00000028 <reset>:
  28:	e3a00902 	mov	r0, #32768	; 0x8000
  2c:	e3a01000 	mov	r1, #0
  30:	e8b003fc 	ldm	r0!, {r2, r3, r4, r5, r6, r7, r8, r9}
  34:	e8a103fc 	stmia	r1!, {r2, r3, r4, r5, r6, r7, r8, r9}
  38:	e8b003fc 	ldm	r0!, {r2, r3, r4, r5, r6, r7, r8, r9}
  3c:	e8a103fc 	stmia	r1!, {r2, r3, r4, r5, r6, r7, r8, r9}
  40:	eafffffe 	b	0 <init>
  44:	e12fff1e 	bx	lr

00000048 <hang>:
  48:	eafffffe 	b	48 <hang>

0000004c <arm_interrupt_handler>:
  4c:	e24ee004 	sub	lr, lr, #4
  50:	e92d401f 	push	{r0, r1, r2, r3, r4, lr}
  54:	ebfffffe 	bl	0 <irq_handler>
  58:	e8fd801f 	ldm	sp!, {r0, r1, r2, r3, r4, pc}^
  5c:	e12fff1e 	bx	lr

Disassembly of section .ARM.attributes:

00000000 <.ARM.attributes>:
   0:	00001741 	andeq	r1, r0, r1, asr #14
   4:	61656100 	cmnvs	r5, r0, lsl #2
   8:	01006962 	tsteq	r0, r2, ror #18
   c:	0000000d 	andeq	r0, r0, sp
  10:	01080206 	tsteq	r8, r6, lsl #4
  14:	012c0109 	teqeq	ip, r9, lsl #2
