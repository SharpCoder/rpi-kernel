
bootstrap.o:     file format elf32-littlearm


Disassembly of section .text:

00000000 <init>:
   0:	e3a0d601 	mov	sp, #1048576	; 0x100000
   4:	ebfffffe 	bl	0 <kmain>
   8:	eaffffff 	b	c <hang$>

0000000c <hang$>:
   c:	eafffffe 	b	c <hang$>

Disassembly of section .ARM.attributes:

00000000 <.ARM.attributes>:
   0:	00001541 	andeq	r1, r0, r1, asr #10
   4:	61656100 	cmnvs	r5, r0, lsl #2
   8:	01006962 	tsteq	r0, r2, ror #18
   c:	0000000b 	andeq	r0, r0, fp
  10:	01080106 	tsteq	r8, r6, lsl #2
  14:	Address 0x00000014 is out of bounds.

