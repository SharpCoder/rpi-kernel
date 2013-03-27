
kmain.o:     file format elf32-littlearm


Disassembly of section .text:

00000000 <_Z6ioaddrj>:
       0:	e2800202 	add	r0, r0, #536870912	; 0x20000000
       4:	e12fff1e 	bx	lr

00000008 <irq_handler>:
       8:	e12fff1e 	bx	lr

0000000c <_Z3absi>:
       c:	e3500000 	cmp	r0, #0
      10:	b2600000 	rsblt	r0, r0, #0
      14:	e12fff1e 	bx	lr

00000018 <_Z15getNumberLengthiiPi>:
      18:	e1a03000 	mov	r3, r0
      1c:	e3a00000 	mov	r0, #0
      20:	e5820000 	str	r0, [r2]
      24:	e3a00001 	mov	r0, #1
      28:	ea000000 	b	30 <_Z15getNumberLengthiiPi+0x18>
      2c:	e1a00002 	mov	r0, r2
      30:	e0020091 	mul	r2, r1, r0
      34:	e1520003 	cmp	r2, r3
      38:	bafffffb 	blt	2c <_Z15getNumberLengthiiPi+0x14>
      3c:	e12fff1e 	bx	lr

00000040 <_Z15getNumberLengthii>:
      40:	e1a03000 	mov	r3, r0
      44:	e3a00001 	mov	r0, #1
      48:	ea000000 	b	50 <_Z15getNumberLengthii+0x10>
      4c:	e1a00002 	mov	r0, r2
      50:	e0020091 	mul	r2, r1, r0
      54:	e1530002 	cmp	r3, r2
      58:	cafffffb 	bgt	4c <_Z15getNumberLengthii+0xc>
      5c:	e12fff1e 	bx	lr

00000060 <_Z15getNumberLengthi>:
      60:	e3a03001 	mov	r3, #1
      64:	ea000000 	b	6c <_Z15getNumberLengthi+0xc>
      68:	e1a03002 	mov	r3, r2
      6c:	e0832103 	add	r2, r3, r3, lsl #2
      70:	e1a02082 	lsl	r2, r2, #1
      74:	e1500002 	cmp	r0, r2
      78:	cafffffa 	bgt	68 <_Z15getNumberLengthi+0x8>
      7c:	e1a00003 	mov	r0, r3
      80:	e12fff1e 	bx	lr

00000084 <_Z6divideiiPiS_>:
      84:	e3510000 	cmp	r1, #0
      88:	e92d00f0 	push	{r4, r5, r6, r7}
      8c:	0a00001d 	beq	108 <_Z6divideiiPiS_+0x84>
      90:	e3510001 	cmp	r1, #1
      94:	05820000 	streq	r0, [r2]
      98:	03a02000 	moveq	r2, #0
      9c:	05832000 	streq	r2, [r3]
      a0:	0a000018 	beq	108 <_Z6divideiiPiS_+0x84>
      a4:	e3a04000 	mov	r4, #0
      a8:	e3500000 	cmp	r0, #0
      ac:	b2600000 	rsblt	r0, r0, #0
      b0:	e1500004 	cmp	r0, r4
      b4:	e5824000 	str	r4, [r2]
      b8:	e5834000 	str	r4, [r3]
      bc:	0a000011 	beq	108 <_Z6divideiiPiS_+0x84>
      c0:	e3510000 	cmp	r1, #0
      c4:	b2611000 	rsblt	r1, r1, #0
      c8:	e050c001 	subs	ip, r0, r1
      cc:	4a000010 	bmi	114 <_Z6divideiiPiS_+0x90>
      d0:	e061c00c 	rsb	ip, r1, ip
      d4:	e5925000 	ldr	r5, [r2]
      d8:	e2617000 	rsb	r7, r1, #0
      dc:	e08c6001 	add	r6, ip, r1
      e0:	ea000001 	b	ec <_Z6divideiiPiS_+0x68>
      e4:	e09c6001 	adds	r6, ip, r1
      e8:	4a000008 	bmi	110 <_Z6divideiiPiS_+0x8c>
      ec:	e2844001 	add	r4, r4, #1
      f0:	e1540006 	cmp	r4, r6
      f4:	e1a00006 	mov	r0, r6
      f8:	e08cc007 	add	ip, ip, r7
      fc:	e2855001 	add	r5, r5, #1
     100:	bafffff7 	blt	e4 <_Z6divideiiPiS_+0x60>
     104:	e5825000 	str	r5, [r2]
     108:	e8bd00f0 	pop	{r4, r5, r6, r7}
     10c:	e12fff1e 	bx	lr
     110:	e5825000 	str	r5, [r2]
     114:	e5830000 	str	r0, [r3]
     118:	eafffffa 	b	108 <_Z6divideiiPiS_+0x84>

0000011c <_Z6divideii>:
     11c:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
     120:	e24dd00c 	sub	sp, sp, #12
     124:	e3a0c000 	mov	ip, #0
     128:	e28d2004 	add	r2, sp, #4
     12c:	e1a0300d 	mov	r3, sp
     130:	e58dc004 	str	ip, [sp, #4]
     134:	e58dc000 	str	ip, [sp]
     138:	ebfffffe 	bl	84 <_Z6divideiiPiS_>
     13c:	e59d0004 	ldr	r0, [sp, #4]
     140:	e28dd00c 	add	sp, sp, #12
     144:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
     148:	e12fff1e 	bx	lr

0000014c <_Z6moduloii>:
     14c:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
     150:	e24dd00c 	sub	sp, sp, #12
     154:	e3a0c000 	mov	ip, #0
     158:	e28d2004 	add	r2, sp, #4
     15c:	e1a0300d 	mov	r3, sp
     160:	e58dc004 	str	ip, [sp, #4]
     164:	e58dc000 	str	ip, [sp]
     168:	ebfffffe 	bl	84 <_Z6divideiiPiS_>
     16c:	e59d0000 	ldr	r0, [sp]
     170:	e28dd00c 	add	sp, sp, #12
     174:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
     178:	e12fff1e 	bx	lr

0000017c <_ZN12RaspberryLib5GET32Ej>:
     17c:	e5900000 	ldr	r0, [r0]
     180:	e12fff1e 	bx	lr

00000184 <_ZN12RaspberryLib5PUT32Ejj>:
     184:	e5801000 	str	r1, [r0]
     188:	e12fff1e 	bx	lr

0000018c <_ZN12RaspberryLib4GET4Ej>:
     18c:	e5d00000 	ldrb	r0, [r0]
     190:	e12fff1e 	bx	lr

00000194 <_ZN12RaspberryLib4PUT4Ejc>:
     194:	e5c01000 	strb	r1, [r0]
     198:	e12fff1e 	bx	lr

0000019c <_ZN12RaspberryLib7SetGPIOEjj>:
     19c:	e59f2094 	ldr	r2, [pc, #148]	; 238 <_ZN12RaspberryLib7SetGPIOEjj+0x9c>
     1a0:	e3510001 	cmp	r1, #1
     1a4:	e59f3090 	ldr	r3, [pc, #144]	; 23c <_ZN12RaspberryLib7SetGPIOEjj+0xa0>
     1a8:	11a03002 	movne	r3, r2
     1ac:	e350000a 	cmp	r0, #10
     1b0:	959f1088 	ldrls	r1, [pc, #136]	; 240 <_ZN12RaspberryLib7SetGPIOEjj+0xa4>
     1b4:	93a0c001 	movls	ip, #1
     1b8:	9a000018 	bls	220 <_ZN12RaspberryLib7SetGPIOEjj+0x84>
     1bc:	e59f2080 	ldr	r2, [pc, #128]	; 244 <_ZN12RaspberryLib7SetGPIOEjj+0xa8>
     1c0:	e240100b 	sub	r1, r0, #11
     1c4:	e082c291 	umull	ip, r2, r1, r2
     1c8:	e240000a 	sub	r0, r0, #10
     1cc:	e1a011a2 	lsr	r1, r2, #3
     1d0:	e350000a 	cmp	r0, #10
     1d4:	e2012001 	and	r2, r1, #1
     1d8:	e3a0c001 	mov	ip, #1
     1dc:	9a000009 	bls	208 <_ZN12RaspberryLib7SetGPIOEjj+0x6c>
     1e0:	e3520000 	cmp	r2, #0
     1e4:	0a000003 	beq	1f8 <_ZN12RaspberryLib7SetGPIOEjj+0x5c>
     1e8:	e240000a 	sub	r0, r0, #10
     1ec:	e350000a 	cmp	r0, #10
     1f0:	e3a0c002 	mov	ip, #2
     1f4:	9a000003 	bls	208 <_ZN12RaspberryLib7SetGPIOEjj+0x6c>
     1f8:	e2400014 	sub	r0, r0, #20
     1fc:	e350000a 	cmp	r0, #10
     200:	e28cc002 	add	ip, ip, #2
     204:	8afffffb 	bhi	1f8 <_ZN12RaspberryLib7SetGPIOEjj+0x5c>
     208:	e1a0110c 	lsl	r1, ip, #2
     20c:	e3a02001 	mov	r2, #1
     210:	e1a0c20c 	lsl	ip, ip, #4
     214:	e1a0cc12 	lsl	ip, r2, ip
     218:	e2811202 	add	r1, r1, #536870912	; 0x20000000
     21c:	e2811602 	add	r1, r1, #2097152	; 0x200000
     220:	e0800080 	add	r0, r0, r0, lsl #1
     224:	e3a02001 	mov	r2, #1
     228:	e1a00012 	lsl	r0, r2, r0
     22c:	e5810000 	str	r0, [r1]
     230:	e583c000 	str	ip, [r3]
     234:	e12fff1e 	bx	lr
     238:	2020001c 	eorcs	r0, r0, ip, lsl r0
     23c:	20200028 	eorcs	r0, r0, r8, lsr #32
     240:	20200000 	eorcs	r0, r0, r0
     244:	cccccccd 	stclgt	12, cr12, [ip], {205}	; 0xcd

00000248 <_ZN12RaspberryLib12CheckCounterEv>:
     248:	e59f3004 	ldr	r3, [pc, #4]	; 254 <_ZN12RaspberryLib12CheckCounterEv+0xc>
     24c:	e5930004 	ldr	r0, [r3, #4]
     250:	e12fff1e 	bx	lr
     254:	20003000 	andcs	r3, r0, r0

00000258 <_ZN12RaspberryLib9WaitQuickEj>:
     258:	e59f3014 	ldr	r3, [pc, #20]	; 274 <_ZN12RaspberryLib9WaitQuickEj+0x1c>
     25c:	e5932004 	ldr	r2, [r3, #4]
     260:	e0802002 	add	r2, r0, r2
     264:	e5931004 	ldr	r1, [r3, #4]
     268:	e1520001 	cmp	r2, r1
     26c:	8afffffc 	bhi	264 <_ZN12RaspberryLib9WaitQuickEj+0xc>
     270:	e12fff1e 	bx	lr
     274:	20003000 	andcs	r3, r0, r0

00000278 <_ZN12RaspberryLib4WaitEj>:
     278:	e59f301c 	ldr	r3, [pc, #28]	; 29c <_ZN12RaspberryLib4WaitEj+0x24>
     27c:	e0801100 	add	r1, r0, r0, lsl #2
     280:	e5932004 	ldr	r2, [r3, #4]
     284:	e0810101 	add	r0, r1, r1, lsl #2
     288:	e0821280 	add	r1, r2, r0, lsl #5
     28c:	e593c004 	ldr	ip, [r3, #4]
     290:	e151000c 	cmp	r1, ip
     294:	8afffffc 	bhi	28c <_ZN12RaspberryLib4WaitEj+0x14>
     298:	e12fff1e 	bx	lr
     29c:	20003000 	andcs	r3, r0, r0

000002a0 <_ZN12RaspberryLib5BlinkEjj>:
     2a0:	e92d40f8 	push	{r3, r4, r5, r6, r7, lr}
     2a4:	e2505000 	subs	r5, r0, #0
     2a8:	0a000016 	beq	308 <_ZN12RaspberryLib5BlinkEjj+0x68>
     2ac:	e0810101 	add	r0, r1, r1, lsl #2
     2b0:	e59f4058 	ldr	r4, [pc, #88]	; 310 <_ZN12RaspberryLib5BlinkEjj+0x70>
     2b4:	e0801100 	add	r1, r0, r0, lsl #2
     2b8:	e1a06281 	lsl	r6, r1, #5
     2bc:	e1a07004 	mov	r7, r4
     2c0:	e3a00010 	mov	r0, #16
     2c4:	e3a01001 	mov	r1, #1
     2c8:	ebfffffe 	bl	19c <_ZN12RaspberryLib7SetGPIOEjj>
     2cc:	e5942004 	ldr	r2, [r4, #4]
     2d0:	e0862002 	add	r2, r6, r2
     2d4:	e5943004 	ldr	r3, [r4, #4]
     2d8:	e1520003 	cmp	r2, r3
     2dc:	8afffffc 	bhi	2d4 <_ZN12RaspberryLib5BlinkEjj+0x34>
     2e0:	e3a00010 	mov	r0, #16
     2e4:	e3a01000 	mov	r1, #0
     2e8:	ebfffffe 	bl	19c <_ZN12RaspberryLib7SetGPIOEjj>
     2ec:	e597c004 	ldr	ip, [r7, #4]
     2f0:	e086200c 	add	r2, r6, ip
     2f4:	e594e004 	ldr	lr, [r4, #4]
     2f8:	e152000e 	cmp	r2, lr
     2fc:	8afffffc 	bhi	2f4 <_ZN12RaspberryLib5BlinkEjj+0x54>
     300:	e2555001 	subs	r5, r5, #1
     304:	1affffed 	bne	2c0 <_ZN12RaspberryLib5BlinkEjj+0x20>
     308:	e8bd40f8 	pop	{r3, r4, r5, r6, r7, lr}
     30c:	e12fff1e 	bx	lr
     310:	20003000 	andcs	r3, r0, r0

00000314 <_ZN12RaspberryLib7PiFaultEPKc>:
     314:	e3a00004 	mov	r0, #4
     318:	e3a010c8 	mov	r1, #200	; 0xc8
     31c:	eafffffe 	b	2a0 <_ZN12RaspberryLib5BlinkEjj>

00000320 <_ZN12RaspberryLib12MailboxWriteEcj>:
     320:	e59f303c 	ldr	r3, [pc, #60]	; 364 <_ZN12RaspberryLib12MailboxWriteEcj+0x44>
     324:	e5932898 	ldr	r2, [r3, #2200]	; 0x898
     328:	e3520000 	cmp	r2, #0
     32c:	bafffffc 	blt	324 <_ZN12RaspberryLib12MailboxWriteEcj+0x4>
     330:	ee07cf15 	mcr	15, 0, ip, cr7, cr5, {0}
     334:	ee07cfd5 	mcr	15, 0, ip, cr7, cr5, {6}
     338:	ee07cf9a 	mcr	15, 0, ip, cr7, cr10, {4}
     33c:	ee07cf95 	mcr	15, 0, ip, cr7, cr5, {4}
     340:	e59f301c 	ldr	r3, [pc, #28]	; 364 <_ZN12RaspberryLib12MailboxWriteEcj+0x44>
     344:	e3c1100f 	bic	r1, r1, #15
     348:	e1810000 	orr	r0, r1, r0
     34c:	e58308a0 	str	r0, [r3, #2208]	; 0x8a0
     350:	ee07cf15 	mcr	15, 0, ip, cr7, cr5, {0}
     354:	ee07cfd5 	mcr	15, 0, ip, cr7, cr5, {6}
     358:	ee07cf9a 	mcr	15, 0, ip, cr7, cr10, {4}
     35c:	ee07cf95 	mcr	15, 0, ip, cr7, cr5, {4}
     360:	e12fff1e 	bx	lr
     364:	2000b000 	andcs	fp, r0, r0

00000368 <_ZN12RaspberryLib12MailboxCheckEc>:
     368:	e92d4010 	push	{r4, lr}
     36c:	e59f2068 	ldr	r2, [pc, #104]	; 3dc <_ZN12RaspberryLib12MailboxCheckEc+0x74>
     370:	e59f4068 	ldr	r4, [pc, #104]	; 3e0 <_ZN12RaspberryLib12MailboxCheckEc+0x78>
     374:	e3a01000 	mov	r1, #0
     378:	e5923898 	ldr	r3, [r2, #2200]	; 0x898
     37c:	e3130101 	tst	r3, #1073741824	; 0x40000000
     380:	1a00000e 	bne	3c0 <_ZN12RaspberryLib12MailboxCheckEc+0x58>
     384:	ee07cf15 	mcr	15, 0, ip, cr7, cr5, {0}
     388:	ee07cfd5 	mcr	15, 0, ip, cr7, cr5, {6}
     38c:	ee07cf9a 	mcr	15, 0, ip, cr7, cr10, {4}
     390:	ee07cf95 	mcr	15, 0, ip, cr7, cr5, {4}
     394:	e5923880 	ldr	r3, [r2, #2176]	; 0x880
     398:	ee07cf15 	mcr	15, 0, ip, cr7, cr5, {0}
     39c:	ee07cfd5 	mcr	15, 0, ip, cr7, cr5, {6}
     3a0:	ee07cf9a 	mcr	15, 0, ip, cr7, cr10, {4}
     3a4:	ee07cf95 	mcr	15, 0, ip, cr7, cr5, {4}
     3a8:	e203c00f 	and	ip, r3, #15
     3ac:	e15c0000 	cmp	ip, r0
     3b0:	1afffff0 	bne	378 <_ZN12RaspberryLib12MailboxCheckEc+0x10>
     3b4:	e3c3000f 	bic	r0, r3, #15
     3b8:	e8bd4010 	pop	{r4, lr}
     3bc:	e12fff1e 	bx	lr
     3c0:	e1510004 	cmp	r1, r4
     3c4:	92811001 	addls	r1, r1, #1
     3c8:	9affffea 	bls	378 <_ZN12RaspberryLib12MailboxCheckEc+0x10>
     3cc:	e59f0010 	ldr	r0, [pc, #16]	; 3e4 <_ZN12RaspberryLib12MailboxCheckEc+0x7c>
     3d0:	ebfffffe 	bl	314 <_ZN12RaspberryLib7PiFaultEPKc>
     3d4:	e3e00000 	mvn	r0, #0
     3d8:	eafffff6 	b	3b8 <_ZN12RaspberryLib12MailboxCheckEc+0x50>
     3dc:	2000b000 	andcs	fp, r0, r0
     3e0:	000fffff 	strdeq	pc, [pc], -pc	; <UNPREDICTABLE>
     3e4:	00000000 	andeq	r0, r0, r0

000003e8 <_ZN12RaspberryLib18AcquireFrameBufferEjj>:
     3e8:	e3a03a02 	mov	r3, #8192	; 0x2000
     3ec:	e1a0c001 	mov	ip, r1
     3f0:	e92d4010 	push	{r4, lr}
     3f4:	e3a02000 	mov	r2, #0
     3f8:	e1a0e000 	mov	lr, r0
     3fc:	e583c004 	str	ip, [r3, #4]
     400:	e583c00c 	str	ip, [r3, #12]
     404:	e3a0c018 	mov	ip, #24
     408:	e3a00001 	mov	r0, #1
     40c:	e59f10e4 	ldr	r1, [pc, #228]	; 4f8 <_ZN12RaspberryLib18AcquireFrameBufferEjj+0x110>
     410:	e583e000 	str	lr, [r3]
     414:	e583e008 	str	lr, [r3, #8]
     418:	e5832010 	str	r2, [r3, #16]
     41c:	e583c014 	str	ip, [r3, #20]
     420:	e5832018 	str	r2, [r3, #24]
     424:	e583201c 	str	r2, [r3, #28]
     428:	e5832020 	str	r2, [r3, #32]
     42c:	e5832024 	str	r2, [r3, #36]	; 0x24
     430:	e5c32028 	strb	r2, [r3, #40]	; 0x28
     434:	ebfffffe 	bl	320 <_ZN12RaspberryLib12MailboxWriteEcj>
     438:	e3a00001 	mov	r0, #1
     43c:	ebfffffe 	bl	368 <_ZN12RaspberryLib12MailboxCheckEc>
     440:	e3500000 	cmp	r0, #0
     444:	1a00000d 	bne	480 <_ZN12RaspberryLib18AcquireFrameBufferEjj+0x98>
     448:	e3a02a02 	mov	r2, #8192	; 0x2000
     44c:	e5923020 	ldr	r3, [r2, #32]
     450:	e3530000 	cmp	r3, #0
     454:	0a000024 	beq	4ec <_ZN12RaspberryLib18AcquireFrameBufferEjj+0x104>
     458:	e5921010 	ldr	r1, [r2, #16]
     45c:	e3510000 	cmp	r1, #0
     460:	0a00001e 	beq	4e0 <_ZN12RaspberryLib18AcquireFrameBufferEjj+0xf8>
     464:	e3530101 	cmp	r3, #1073741824	; 0x40000000
     468:	e3a0c001 	mov	ip, #1
     46c:	82833103 	addhi	r3, r3, #-1073741824	; 0xc0000000
     470:	e3a00a02 	mov	r0, #8192	; 0x2000
     474:	e5c2c028 	strb	ip, [r2, #40]	; 0x28
     478:	e5803020 	str	r3, [r0, #32]
     47c:	ea000014 	b	4d4 <_ZN12RaspberryLib18AcquireFrameBufferEjj+0xec>
     480:	e3a00001 	mov	r0, #1
     484:	ebfffffe 	bl	368 <_ZN12RaspberryLib12MailboxCheckEc>
     488:	e3500000 	cmp	r0, #0
     48c:	e59f4068 	ldr	r4, [pc, #104]	; 4fc <_ZN12RaspberryLib18AcquireFrameBufferEjj+0x114>
     490:	e3a00001 	mov	r0, #1
     494:	0a00000a 	beq	4c4 <_ZN12RaspberryLib18AcquireFrameBufferEjj+0xdc>
     498:	ebfffffe 	bl	368 <_ZN12RaspberryLib12MailboxCheckEc>
     49c:	e3500000 	cmp	r0, #0
     4a0:	e2444001 	sub	r4, r4, #1
     4a4:	0a000006 	beq	4c4 <_ZN12RaspberryLib18AcquireFrameBufferEjj+0xdc>
     4a8:	e2544001 	subs	r4, r4, #1
     4ac:	3affffe5 	bcc	448 <_ZN12RaspberryLib18AcquireFrameBufferEjj+0x60>
     4b0:	e3a00001 	mov	r0, #1
     4b4:	ebfffffe 	bl	368 <_ZN12RaspberryLib12MailboxCheckEc>
     4b8:	e3500000 	cmp	r0, #0
     4bc:	e3a00001 	mov	r0, #1
     4c0:	1afffff4 	bne	498 <_ZN12RaspberryLib18AcquireFrameBufferEjj+0xb0>
     4c4:	e3540000 	cmp	r4, #0
     4c8:	1affffde 	bne	448 <_ZN12RaspberryLib18AcquireFrameBufferEjj+0x60>
     4cc:	e59f002c 	ldr	r0, [pc, #44]	; 500 <_ZN12RaspberryLib18AcquireFrameBufferEjj+0x118>
     4d0:	ebfffffe 	bl	314 <_ZN12RaspberryLib7PiFaultEPKc>
     4d4:	e3a00a02 	mov	r0, #8192	; 0x2000
     4d8:	e8bd4010 	pop	{r4, lr}
     4dc:	e12fff1e 	bx	lr
     4e0:	e59f001c 	ldr	r0, [pc, #28]	; 504 <_ZN12RaspberryLib18AcquireFrameBufferEjj+0x11c>
     4e4:	ebfffffe 	bl	314 <_ZN12RaspberryLib7PiFaultEPKc>
     4e8:	eafffff9 	b	4d4 <_ZN12RaspberryLib18AcquireFrameBufferEjj+0xec>
     4ec:	e59f0014 	ldr	r0, [pc, #20]	; 508 <_ZN12RaspberryLib18AcquireFrameBufferEjj+0x120>
     4f0:	ebfffffe 	bl	314 <_ZN12RaspberryLib7PiFaultEPKc>
     4f4:	eafffff6 	b	4d4 <_ZN12RaspberryLib18AcquireFrameBufferEjj+0xec>
     4f8:	40002000 	andmi	r2, r0, r0
     4fc:	0000270f 	andeq	r2, r0, pc, lsl #14
     500:	0000002c 	andeq	r0, r0, ip, lsr #32
     504:	000000c4 	andeq	r0, r0, r4, asr #1
     508:	00000074 	andeq	r0, r0, r4, ror r0

0000050c <_ZN4FontC1Ev>:
     50c:	e59fc00c 	ldr	ip, [pc, #12]	; 520 <_ZN4FontC1Ev+0x14>
     510:	e3a01008 	mov	r1, #8
     514:	e3a02010 	mov	r2, #16
     518:	e9801006 	stmib	r0, {r1, r2, ip}
     51c:	e12fff1e 	bx	lr
     520:	00000000 	andeq	r0, r0, r0

00000524 <_ZN4Font8GetBytesEc>:
     524:	e1a03201 	lsl	r3, r1, #4
     528:	e2832010 	add	r2, r3, #16
     52c:	e1530002 	cmp	r3, r2
     530:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     534:	2a00004d 	bcs	670 <_ZN4Font8GetBytesEc+0x14c>
     538:	e590c00c 	ldr	ip, [r0, #12]
     53c:	e59f2138 	ldr	r2, [pc, #312]	; 67c <_ZN4Font8GetBytesEc+0x158>
     540:	e7dc1201 	ldrb	r1, [ip, r1, lsl #4]
     544:	e5c21000 	strb	r1, [r2]
     548:	e590c00c 	ldr	ip, [r0, #12]
     54c:	e2834001 	add	r4, r3, #1
     550:	e7dc1004 	ldrb	r1, [ip, r4]
     554:	e5c21001 	strb	r1, [r2, #1]
     558:	e590400c 	ldr	r4, [r0, #12]
     55c:	e2831002 	add	r1, r3, #2
     560:	e7d44001 	ldrb	r4, [r4, r1]
     564:	e063c001 	rsb	ip, r3, r1
     568:	e7c2400c 	strb	r4, [r2, ip]
     56c:	e590400c 	ldr	r4, [r0, #12]
     570:	e2811001 	add	r1, r1, #1
     574:	e7d44001 	ldrb	r4, [r4, r1]
     578:	e063c001 	rsb	ip, r3, r1
     57c:	e7c2400c 	strb	r4, [r2, ip]
     580:	e590400c 	ldr	r4, [r0, #12]
     584:	e2811001 	add	r1, r1, #1
     588:	e7d44001 	ldrb	r4, [r4, r1]
     58c:	e063c001 	rsb	ip, r3, r1
     590:	e7c2400c 	strb	r4, [r2, ip]
     594:	e590400c 	ldr	r4, [r0, #12]
     598:	e2811001 	add	r1, r1, #1
     59c:	e7d44001 	ldrb	r4, [r4, r1]
     5a0:	e063c001 	rsb	ip, r3, r1
     5a4:	e7c2400c 	strb	r4, [r2, ip]
     5a8:	e590400c 	ldr	r4, [r0, #12]
     5ac:	e2811001 	add	r1, r1, #1
     5b0:	e7d44001 	ldrb	r4, [r4, r1]
     5b4:	e063c001 	rsb	ip, r3, r1
     5b8:	e7c2400c 	strb	r4, [r2, ip]
     5bc:	e590400c 	ldr	r4, [r0, #12]
     5c0:	e2811001 	add	r1, r1, #1
     5c4:	e7d44001 	ldrb	r4, [r4, r1]
     5c8:	e063c001 	rsb	ip, r3, r1
     5cc:	e7c2400c 	strb	r4, [r2, ip]
     5d0:	e590400c 	ldr	r4, [r0, #12]
     5d4:	e2811001 	add	r1, r1, #1
     5d8:	e7d44001 	ldrb	r4, [r4, r1]
     5dc:	e063c001 	rsb	ip, r3, r1
     5e0:	e7c2400c 	strb	r4, [r2, ip]
     5e4:	e590400c 	ldr	r4, [r0, #12]
     5e8:	e2811001 	add	r1, r1, #1
     5ec:	e7d44001 	ldrb	r4, [r4, r1]
     5f0:	e063c001 	rsb	ip, r3, r1
     5f4:	e7c2400c 	strb	r4, [r2, ip]
     5f8:	e590400c 	ldr	r4, [r0, #12]
     5fc:	e2811001 	add	r1, r1, #1
     600:	e7d44001 	ldrb	r4, [r4, r1]
     604:	e063c001 	rsb	ip, r3, r1
     608:	e7c2400c 	strb	r4, [r2, ip]
     60c:	e590400c 	ldr	r4, [r0, #12]
     610:	e2811001 	add	r1, r1, #1
     614:	e7d44001 	ldrb	r4, [r4, r1]
     618:	e063c001 	rsb	ip, r3, r1
     61c:	e7c2400c 	strb	r4, [r2, ip]
     620:	e590400c 	ldr	r4, [r0, #12]
     624:	e2811001 	add	r1, r1, #1
     628:	e7d44001 	ldrb	r4, [r4, r1]
     62c:	e063c001 	rsb	ip, r3, r1
     630:	e7c2400c 	strb	r4, [r2, ip]
     634:	e590400c 	ldr	r4, [r0, #12]
     638:	e2811001 	add	r1, r1, #1
     63c:	e7d44001 	ldrb	r4, [r4, r1]
     640:	e063c001 	rsb	ip, r3, r1
     644:	e7c2400c 	strb	r4, [r2, ip]
     648:	e590400c 	ldr	r4, [r0, #12]
     64c:	e2811001 	add	r1, r1, #1
     650:	e7d44001 	ldrb	r4, [r4, r1]
     654:	e063c001 	rsb	ip, r3, r1
     658:	e7c2400c 	strb	r4, [r2, ip]
     65c:	e590000c 	ldr	r0, [r0, #12]
     660:	e281c001 	add	ip, r1, #1
     664:	e7d0000c 	ldrb	r0, [r0, ip]
     668:	e063100c 	rsb	r1, r3, ip
     66c:	e7c20001 	strb	r0, [r2, r1]
     670:	e59f0004 	ldr	r0, [pc, #4]	; 67c <_ZN4Font8GetBytesEc+0x158>
     674:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     678:	e12fff1e 	bx	lr
     67c:	00000000 	andeq	r0, r0, r0

00000680 <_ZN5ColorC1Ev>:
     680:	e3e02000 	mvn	r2, #0
     684:	e5c02000 	strb	r2, [r0]
     688:	e5c02001 	strb	r2, [r0, #1]
     68c:	e5c02002 	strb	r2, [r0, #2]
     690:	e12fff1e 	bx	lr

00000694 <_ZN5Color7ToColorEj>:
     694:	e20028ff 	and	r2, r0, #16711680	; 0xff0000
     698:	e2001cff 	and	r1, r0, #65280	; 0xff00
     69c:	e1813822 	orr	r3, r1, r2, lsr #16
     6a0:	e20000ff 	and	r0, r0, #255	; 0xff
     6a4:	e24dd008 	sub	sp, sp, #8
     6a8:	e1830800 	orr	r0, r3, r0, lsl #16
     6ac:	e28dd008 	add	sp, sp, #8
     6b0:	e12fff1e 	bx	lr

000006b4 <_ZN5Color9FromColorEccc>:
     6b4:	e1822401 	orr	r2, r2, r1, lsl #8
     6b8:	e1820800 	orr	r0, r2, r0, lsl #16
     6bc:	e12fff1e 	bx	lr

000006c0 <_ZN6CanvasC1EPN12RaspberryLib3GPUE>:
     6c0:	e5801000 	str	r1, [r0]
     6c4:	e12fff1e 	bx	lr

000006c8 <_ZN6Canvas8SetPixelEjj5Color>:
     6c8:	e24dd008 	sub	sp, sp, #8
     6cc:	e58d3004 	str	r3, [sp, #4]
     6d0:	e5903000 	ldr	r3, [r0]
     6d4:	e5d3c028 	ldrb	ip, [r3, #40]	; 0x28
     6d8:	e35c0000 	cmp	ip, #0
     6dc:	0a00000f 	beq	720 <_ZN6Canvas8SetPixelEjj5Color+0x58>
     6e0:	e593c010 	ldr	ip, [r3, #16]
     6e4:	e0811081 	add	r1, r1, r1, lsl #1
     6e8:	e022129c 	mla	r2, ip, r2, r1
     6ec:	e5933020 	ldr	r3, [r3, #32]
     6f0:	e5ddc004 	ldrb	ip, [sp, #4]
     6f4:	e7c2c003 	strb	ip, [r2, r3]
     6f8:	e5901000 	ldr	r1, [r0]
     6fc:	e591c020 	ldr	ip, [r1, #32]
     700:	e5dd1005 	ldrb	r1, [sp, #5]
     704:	e28c3001 	add	r3, ip, #1
     708:	e7c31002 	strb	r1, [r3, r2]
     70c:	e590c000 	ldr	ip, [r0]
     710:	e59c0020 	ldr	r0, [ip, #32]
     714:	e5dd1006 	ldrb	r1, [sp, #6]
     718:	e2803002 	add	r3, r0, #2
     71c:	e7c31002 	strb	r1, [r3, r2]
     720:	e28dd008 	add	sp, sp, #8
     724:	e12fff1e 	bx	lr

00000728 <_ZN6Canvas8GetPixelEjj>:
     728:	e5903000 	ldr	r3, [r0]
     72c:	e5d30028 	ldrb	r0, [r3, #40]	; 0x28
     730:	e3500000 	cmp	r0, #0
     734:	e24dd008 	sub	sp, sp, #8
     738:	0a000011 	beq	784 <_ZN6Canvas8GetPixelEjj+0x5c>
     73c:	e5930010 	ldr	r0, [r3, #16]
     740:	e0020290 	mul	r2, r0, r2
     744:	e5933020 	ldr	r3, [r3, #32]
     748:	e081c081 	add	ip, r1, r1, lsl #1
     74c:	e08c0003 	add	r0, ip, r3
     750:	e790c002 	ldr	ip, [r0, r2]
     754:	e1a0182c 	lsr	r1, ip, #16
     758:	e1a0242c 	lsr	r2, ip, #8
     75c:	e5cd1004 	strb	r1, [sp, #4]
     760:	e5cd2005 	strb	r2, [sp, #5]
     764:	e5cdc006 	strb	ip, [sp, #6]
     768:	e5ddc004 	ldrb	ip, [sp, #4]
     76c:	e5dd3005 	ldrb	r3, [sp, #5]
     770:	e5dd1006 	ldrb	r1, [sp, #6]
     774:	e18c2403 	orr	r2, ip, r3, lsl #8
     778:	e1820801 	orr	r0, r2, r1, lsl #16
     77c:	e28dd008 	add	sp, sp, #8
     780:	e12fff1e 	bx	lr
     784:	e3e03000 	mvn	r3, #0
     788:	e5cd3004 	strb	r3, [sp, #4]
     78c:	e5cd3005 	strb	r3, [sp, #5]
     790:	e5cd3006 	strb	r3, [sp, #6]
     794:	eafffff3 	b	768 <_ZN6Canvas8GetPixelEjj+0x40>

00000798 <_ZN6Canvas5ClearE5Color>:
     798:	e92d4070 	push	{r4, r5, r6, lr}
     79c:	e24dd008 	sub	sp, sp, #8
     7a0:	e58d1004 	str	r1, [sp, #4]
     7a4:	e5903000 	ldr	r3, [r0]
     7a8:	e5932004 	ldr	r2, [r3, #4]
     7ac:	e3520000 	cmp	r2, #0
     7b0:	e1a05000 	mov	r5, r0
     7b4:	13a06000 	movne	r6, #0
     7b8:	0a000011 	beq	804 <_ZN6Canvas5ClearE5Color+0x6c>
     7bc:	e593c000 	ldr	ip, [r3]
     7c0:	e35c0000 	cmp	ip, #0
     7c4:	13a04000 	movne	r4, #0
     7c8:	0a000009 	beq	7f4 <_ZN6Canvas5ClearE5Color+0x5c>
     7cc:	e1a01004 	mov	r1, r4
     7d0:	e1a00005 	mov	r0, r5
     7d4:	e59d3004 	ldr	r3, [sp, #4]
     7d8:	e1a02006 	mov	r2, r6
     7dc:	ebfffffe 	bl	6c8 <_ZN6Canvas8SetPixelEjj5Color>
     7e0:	e5953000 	ldr	r3, [r5]
     7e4:	e5930000 	ldr	r0, [r3]
     7e8:	e2844001 	add	r4, r4, #1
     7ec:	e1500004 	cmp	r0, r4
     7f0:	8afffff5 	bhi	7cc <_ZN6Canvas5ClearE5Color+0x34>
     7f4:	e5931004 	ldr	r1, [r3, #4]
     7f8:	e2866001 	add	r6, r6, #1
     7fc:	e1510006 	cmp	r1, r6
     800:	8affffed 	bhi	7bc <_ZN6Canvas5ClearE5Color+0x24>
     804:	e28dd008 	add	sp, sp, #8
     808:	e8bd4070 	pop	{r4, r5, r6, lr}
     80c:	e12fff1e 	bx	lr

00000810 <_ZN6Canvas5ClearEv>:
     810:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
     814:	e3e03000 	mvn	r3, #0
     818:	e24dd00c 	sub	sp, sp, #12
     81c:	e5cd3004 	strb	r3, [sp, #4]
     820:	e5cd3005 	strb	r3, [sp, #5]
     824:	e5cd3006 	strb	r3, [sp, #6]
     828:	e59d1004 	ldr	r1, [sp, #4]
     82c:	ebfffffe 	bl	798 <_ZN6Canvas5ClearE5Color>
     830:	e28dd00c 	add	sp, sp, #12
     834:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
     838:	e12fff1e 	bx	lr

0000083c <_ZN6Canvas13DrawCharacterEcP4Fontjjj>:
     83c:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
     840:	e24dd014 	sub	sp, sp, #20
     844:	e59d403c 	ldr	r4, [sp, #60]	; 0x3c
     848:	e1a0c201 	lsl	ip, r1, #4
     84c:	e28c5010 	add	r5, ip, #16
     850:	e1a06824 	lsr	r6, r4, #16
     854:	e1a0a424 	lsr	sl, r4, #8
     858:	e15c0005 	cmp	ip, r5
     85c:	e1a07000 	mov	r7, r0
     860:	e1a08003 	mov	r8, r3
     864:	e59d5038 	ldr	r5, [sp, #56]	; 0x38
     868:	e5cd600c 	strb	r6, [sp, #12]
     86c:	e5cda00d 	strb	sl, [sp, #13]
     870:	e5cd400e 	strb	r4, [sp, #14]
     874:	2a00004d 	bcs	9b0 <_ZN6Canvas13DrawCharacterEcP4Fontjjj+0x174>
     878:	e592000c 	ldr	r0, [r2, #12]
     87c:	e59f3288 	ldr	r3, [pc, #648]	; b0c <_ZN6Canvas13DrawCharacterEcP4Fontjjj+0x2d0>
     880:	e7d06201 	ldrb	r6, [r0, r1, lsl #4]
     884:	e5c36000 	strb	r6, [r3]
     888:	e592b00c 	ldr	fp, [r2, #12]
     88c:	e28ca001 	add	sl, ip, #1
     890:	e7db900a 	ldrb	r9, [fp, sl]
     894:	e5c39001 	strb	r9, [r3, #1]
     898:	e592100c 	ldr	r1, [r2, #12]
     89c:	e28c6002 	add	r6, ip, #2
     8a0:	e7d14006 	ldrb	r4, [r1, r6]
     8a4:	e06c0006 	rsb	r0, ip, r6
     8a8:	e7c34000 	strb	r4, [r3, r0]
     8ac:	e592a00c 	ldr	sl, [r2, #12]
     8b0:	e2861001 	add	r1, r6, #1
     8b4:	e7dab001 	ldrb	fp, [sl, r1]
     8b8:	e06c9001 	rsb	r9, ip, r1
     8bc:	e7c3b009 	strb	fp, [r3, r9]
     8c0:	e592600c 	ldr	r6, [r2, #12]
     8c4:	e281a001 	add	sl, r1, #1
     8c8:	e7d6400a 	ldrb	r4, [r6, sl]
     8cc:	e06c000a 	rsb	r0, ip, sl
     8d0:	e7c34000 	strb	r4, [r3, r0]
     8d4:	e592b00c 	ldr	fp, [r2, #12]
     8d8:	e28a1001 	add	r1, sl, #1
     8dc:	e7db9001 	ldrb	r9, [fp, r1]
     8e0:	e06c6001 	rsb	r6, ip, r1
     8e4:	e7c39006 	strb	r9, [r3, r6]
     8e8:	e592a00c 	ldr	sl, [r2, #12]
     8ec:	e281b001 	add	fp, r1, #1
     8f0:	e7da400b 	ldrb	r4, [sl, fp]
     8f4:	e06c000b 	rsb	r0, ip, fp
     8f8:	e7c34000 	strb	r4, [r3, r0]
     8fc:	e592900c 	ldr	r9, [r2, #12]
     900:	e28b1001 	add	r1, fp, #1
     904:	e7d96001 	ldrb	r6, [r9, r1]
     908:	e06ca001 	rsb	sl, ip, r1
     90c:	e7c3600a 	strb	r6, [r3, sl]
     910:	e592b00c 	ldr	fp, [r2, #12]
     914:	e2819001 	add	r9, r1, #1
     918:	e7db4009 	ldrb	r4, [fp, r9]
     91c:	e06c0009 	rsb	r0, ip, r9
     920:	e7c34000 	strb	r4, [r3, r0]
     924:	e592600c 	ldr	r6, [r2, #12]
     928:	e2891001 	add	r1, r9, #1
     92c:	e7d6a001 	ldrb	sl, [r6, r1]
     930:	e06cb001 	rsb	fp, ip, r1
     934:	e7c3a00b 	strb	sl, [r3, fp]
     938:	e592900c 	ldr	r9, [r2, #12]
     93c:	e2816001 	add	r6, r1, #1
     940:	e7d94006 	ldrb	r4, [r9, r6]
     944:	e06c0006 	rsb	r0, ip, r6
     948:	e7c34000 	strb	r4, [r3, r0]
     94c:	e592a00c 	ldr	sl, [r2, #12]
     950:	e2861001 	add	r1, r6, #1
     954:	e7dab001 	ldrb	fp, [sl, r1]
     958:	e06c9001 	rsb	r9, ip, r1
     95c:	e7c3b009 	strb	fp, [r3, r9]
     960:	e592000c 	ldr	r0, [r2, #12]
     964:	e281a001 	add	sl, r1, #1
     968:	e7d0400a 	ldrb	r4, [r0, sl]
     96c:	e06c600a 	rsb	r6, ip, sl
     970:	e7c34006 	strb	r4, [r3, r6]
     974:	e592b00c 	ldr	fp, [r2, #12]
     978:	e28a1001 	add	r1, sl, #1
     97c:	e7db9001 	ldrb	r9, [fp, r1]
     980:	e06c0001 	rsb	r0, ip, r1
     984:	e7c39000 	strb	r9, [r3, r0]
     988:	e592600c 	ldr	r6, [r2, #12]
     98c:	e281b001 	add	fp, r1, #1
     990:	e7d6400b 	ldrb	r4, [r6, fp]
     994:	e06ca00b 	rsb	sl, ip, fp
     998:	e7c3400a 	strb	r4, [r3, sl]
     99c:	e592900c 	ldr	r9, [r2, #12]
     9a0:	e28b0001 	add	r0, fp, #1
     9a4:	e7d92000 	ldrb	r2, [r9, r0]
     9a8:	e06c1000 	rsb	r1, ip, r0
     9ac:	e7c32001 	strb	r2, [r3, r1]
     9b0:	e59f6158 	ldr	r6, [pc, #344]	; b10 <_ZN6Canvas13DrawCharacterEcP4Fontjjj+0x2d4>
     9b4:	e288c003 	add	ip, r8, #3
     9b8:	e2889001 	add	r9, r8, #1
     9bc:	e286a010 	add	sl, r6, #16
     9c0:	e288b002 	add	fp, r8, #2
     9c4:	e58dc004 	str	ip, [sp, #4]
     9c8:	ea000010 	b	a10 <_ZN6Canvas13DrawCharacterEcP4Fontjjj+0x1d4>
     9cc:	e3140002 	tst	r4, #2
     9d0:	1a000018 	bne	a38 <_ZN6Canvas13DrawCharacterEcP4Fontjjj+0x1fc>
     9d4:	e3140004 	tst	r4, #4
     9d8:	1a00001d 	bne	a54 <_ZN6Canvas13DrawCharacterEcP4Fontjjj+0x218>
     9dc:	e3140008 	tst	r4, #8
     9e0:	1a000022 	bne	a70 <_ZN6Canvas13DrawCharacterEcP4Fontjjj+0x234>
     9e4:	e3140010 	tst	r4, #16
     9e8:	1a000027 	bne	a8c <_ZN6Canvas13DrawCharacterEcP4Fontjjj+0x250>
     9ec:	e3140020 	tst	r4, #32
     9f0:	1a00002c 	bne	aa8 <_ZN6Canvas13DrawCharacterEcP4Fontjjj+0x26c>
     9f4:	e3140040 	tst	r4, #64	; 0x40
     9f8:	1a000031 	bne	ac4 <_ZN6Canvas13DrawCharacterEcP4Fontjjj+0x288>
     9fc:	e1b043a4 	lsrs	r4, r4, #7
     a00:	1a000036 	bne	ae0 <_ZN6Canvas13DrawCharacterEcP4Fontjjj+0x2a4>
     a04:	e156000a 	cmp	r6, sl
     a08:	e2855001 	add	r5, r5, #1
     a0c:	0a00003b 	beq	b00 <_ZN6Canvas13DrawCharacterEcP4Fontjjj+0x2c4>
     a10:	e5f64001 	ldrb	r4, [r6, #1]!
     a14:	e3140001 	tst	r4, #1
     a18:	0affffeb 	beq	9cc <_ZN6Canvas13DrawCharacterEcP4Fontjjj+0x190>
     a1c:	e1a00007 	mov	r0, r7
     a20:	e1a01008 	mov	r1, r8
     a24:	e1a02005 	mov	r2, r5
     a28:	e59d300c 	ldr	r3, [sp, #12]
     a2c:	ebfffffe 	bl	6c8 <_ZN6Canvas8SetPixelEjj5Color>
     a30:	e3140002 	tst	r4, #2
     a34:	0affffe6 	beq	9d4 <_ZN6Canvas13DrawCharacterEcP4Fontjjj+0x198>
     a38:	e1a00007 	mov	r0, r7
     a3c:	e1a01009 	mov	r1, r9
     a40:	e1a02005 	mov	r2, r5
     a44:	e59d300c 	ldr	r3, [sp, #12]
     a48:	ebfffffe 	bl	6c8 <_ZN6Canvas8SetPixelEjj5Color>
     a4c:	e3140004 	tst	r4, #4
     a50:	0affffe1 	beq	9dc <_ZN6Canvas13DrawCharacterEcP4Fontjjj+0x1a0>
     a54:	e1a00007 	mov	r0, r7
     a58:	e1a0100b 	mov	r1, fp
     a5c:	e1a02005 	mov	r2, r5
     a60:	e59d300c 	ldr	r3, [sp, #12]
     a64:	ebfffffe 	bl	6c8 <_ZN6Canvas8SetPixelEjj5Color>
     a68:	e3140008 	tst	r4, #8
     a6c:	0affffdc 	beq	9e4 <_ZN6Canvas13DrawCharacterEcP4Fontjjj+0x1a8>
     a70:	e1a00007 	mov	r0, r7
     a74:	e59d1004 	ldr	r1, [sp, #4]
     a78:	e1a02005 	mov	r2, r5
     a7c:	e59d300c 	ldr	r3, [sp, #12]
     a80:	ebfffffe 	bl	6c8 <_ZN6Canvas8SetPixelEjj5Color>
     a84:	e3140010 	tst	r4, #16
     a88:	0affffd7 	beq	9ec <_ZN6Canvas13DrawCharacterEcP4Fontjjj+0x1b0>
     a8c:	e1a00007 	mov	r0, r7
     a90:	e2881004 	add	r1, r8, #4
     a94:	e1a02005 	mov	r2, r5
     a98:	e59d300c 	ldr	r3, [sp, #12]
     a9c:	ebfffffe 	bl	6c8 <_ZN6Canvas8SetPixelEjj5Color>
     aa0:	e3140020 	tst	r4, #32
     aa4:	0affffd2 	beq	9f4 <_ZN6Canvas13DrawCharacterEcP4Fontjjj+0x1b8>
     aa8:	e1a00007 	mov	r0, r7
     aac:	e2881005 	add	r1, r8, #5
     ab0:	e1a02005 	mov	r2, r5
     ab4:	e59d300c 	ldr	r3, [sp, #12]
     ab8:	ebfffffe 	bl	6c8 <_ZN6Canvas8SetPixelEjj5Color>
     abc:	e3140040 	tst	r4, #64	; 0x40
     ac0:	0affffcd 	beq	9fc <_ZN6Canvas13DrawCharacterEcP4Fontjjj+0x1c0>
     ac4:	e1a00007 	mov	r0, r7
     ac8:	e2881006 	add	r1, r8, #6
     acc:	e1a02005 	mov	r2, r5
     ad0:	e59d300c 	ldr	r3, [sp, #12]
     ad4:	ebfffffe 	bl	6c8 <_ZN6Canvas8SetPixelEjj5Color>
     ad8:	e1b043a4 	lsrs	r4, r4, #7
     adc:	0affffc8 	beq	a04 <_ZN6Canvas13DrawCharacterEcP4Fontjjj+0x1c8>
     ae0:	e1a02005 	mov	r2, r5
     ae4:	e1a00007 	mov	r0, r7
     ae8:	e2881007 	add	r1, r8, #7
     aec:	e59d300c 	ldr	r3, [sp, #12]
     af0:	ebfffffe 	bl	6c8 <_ZN6Canvas8SetPixelEjj5Color>
     af4:	e156000a 	cmp	r6, sl
     af8:	e2855001 	add	r5, r5, #1
     afc:	1affffc3 	bne	a10 <_ZN6Canvas13DrawCharacterEcP4Fontjjj+0x1d4>
     b00:	e28dd014 	add	sp, sp, #20
     b04:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
     b08:	e12fff1e 	bx	lr
     b0c:	00000000 	andeq	r0, r0, r0
     b10:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff

00000b14 <_ZN6Canvas10DrawStringEPKcP4Fontjjj>:
     b14:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
     b18:	e1a06001 	mov	r6, r1
     b1c:	e5d11000 	ldrb	r1, [r1]
     b20:	e24dd008 	sub	sp, sp, #8
     b24:	e3510000 	cmp	r1, #0
     b28:	e1a08000 	mov	r8, r0
     b2c:	e1a05002 	mov	r5, r2
     b30:	e1a07003 	mov	r7, r3
     b34:	e28d9028 	add	r9, sp, #40	; 0x28
     b38:	e8990600 	ldm	r9, {r9, sl}
     b3c:	0a00000c 	beq	b74 <_ZN6Canvas10DrawStringEPKcP4Fontjjj+0x60>
     b40:	e5923004 	ldr	r3, [r2, #4]
     b44:	e3a04000 	mov	r4, #0
     b48:	ea000000 	b	b50 <_ZN6Canvas10DrawStringEPKcP4Fontjjj+0x3c>
     b4c:	e5953004 	ldr	r3, [r5, #4]
     b50:	e0237394 	mla	r3, r4, r3, r7
     b54:	e1a00008 	mov	r0, r8
     b58:	e1a02005 	mov	r2, r5
     b5c:	e88d0600 	stm	sp, {r9, sl}
     b60:	ebfffffe 	bl	83c <_ZN6Canvas13DrawCharacterEcP4Fontjjj>
     b64:	e5f61001 	ldrb	r1, [r6, #1]!
     b68:	e3510000 	cmp	r1, #0
     b6c:	e2844001 	add	r4, r4, #1
     b70:	1afffff5 	bne	b4c <_ZN6Canvas10DrawStringEPKcP4Fontjjj+0x38>
     b74:	e28dd008 	add	sp, sp, #8
     b78:	e8bd47f0 	pop	{r4, r5, r6, r7, r8, r9, sl, lr}
     b7c:	e12fff1e 	bx	lr

00000b80 <_ZN6Canvas5ClearEj>:
     b80:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
     b84:	e1a02821 	lsr	r2, r1, #16
     b88:	e24dd00c 	sub	sp, sp, #12
     b8c:	e1a03421 	lsr	r3, r1, #8
     b90:	e5cd2004 	strb	r2, [sp, #4]
     b94:	e5cd3005 	strb	r3, [sp, #5]
     b98:	e5cd1006 	strb	r1, [sp, #6]
     b9c:	e59d1004 	ldr	r1, [sp, #4]
     ba0:	ebfffffe 	bl	798 <_ZN6Canvas5ClearE5Color>
     ba4:	e28dd00c 	add	sp, sp, #12
     ba8:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
     bac:	e12fff1e 	bx	lr

00000bb0 <_ZN7Console5clearEv>:
     bb0:	e92d4010 	push	{r4, lr}
     bb4:	e3a01000 	mov	r1, #0
     bb8:	e1a04000 	mov	r4, r0
     bbc:	e590000c 	ldr	r0, [r0, #12]
     bc0:	ebfffffe 	bl	b80 <_ZN6Canvas5ClearEj>
     bc4:	e3a03000 	mov	r3, #0
     bc8:	e5843000 	str	r3, [r4]
     bcc:	e5843004 	str	r3, [r4, #4]
     bd0:	e8bd4010 	pop	{r4, lr}
     bd4:	e12fff1e 	bx	lr

00000bd8 <_ZN7Console7newLineEv>:
     bd8:	e590c004 	ldr	ip, [r0, #4]
     bdc:	e28c1001 	add	r1, ip, #1
     be0:	e3a02000 	mov	r2, #0
     be4:	e351002d 	cmp	r1, #45	; 0x2d
     be8:	e5801004 	str	r1, [r0, #4]
     bec:	e5802000 	str	r2, [r0]
     bf0:	912fff1e 	bxls	lr
     bf4:	eafffffe 	b	bb0 <_ZN7Console5clearEv>

00000bf8 <_ZN7Console9printCharEcj>:
     bf8:	e92d4070 	push	{r4, r5, r6, lr}
     bfc:	e3510009 	cmp	r1, #9
     c00:	e24dd010 	sub	sp, sp, #16
     c04:	e1a04000 	mov	r4, r0
     c08:	e1a05002 	mov	r5, r2
     c0c:	0a000022 	beq	c9c <_ZN7Console9printCharEcj+0xa4>
     c10:	e351000a 	cmp	r1, #10
     c14:	0a00001d 	beq	c90 <_ZN7Console9printCharEcj+0x98>
     c18:	e3510008 	cmp	r1, #8
     c1c:	0a000014 	beq	c74 <_ZN7Console9printCharEcj+0x7c>
     c20:	e5902000 	ldr	r2, [r0]
     c24:	e3520078 	cmp	r2, #120	; 0x78
     c28:	8a000024 	bhi	cc0 <_ZN7Console9printCharEcj+0xc8>
     c2c:	e5943004 	ldr	r3, [r4, #4]
     c30:	e353002d 	cmp	r3, #45	; 0x2d
     c34:	8a00001d 	bhi	cb0 <_ZN7Console9printCharEcj+0xb8>
     c38:	e594e008 	ldr	lr, [r4, #8]
     c3c:	e594c018 	ldr	ip, [r4, #24]
     c40:	e02cec93 	mla	ip, r3, ip, lr
     c44:	e5946000 	ldr	r6, [r4]
     c48:	e5943014 	ldr	r3, [r4, #20]
     c4c:	e594000c 	ldr	r0, [r4, #12]
     c50:	e023e396 	mla	r3, r6, r3, lr
     c54:	e2842010 	add	r2, r4, #16
     c58:	e58dc000 	str	ip, [sp]
     c5c:	e58d5004 	str	r5, [sp, #4]
     c60:	ebfffffe 	bl	83c <_ZN6Canvas13DrawCharacterEcP4Fontjjj>
     c64:	e5941000 	ldr	r1, [r4]
     c68:	e2813001 	add	r3, r1, #1
     c6c:	e5843000 	str	r3, [r4]
     c70:	ea000003 	b	c84 <_ZN7Console9printCharEcj+0x8c>
     c74:	e5903000 	ldr	r3, [r0]
     c78:	e3530000 	cmp	r3, #0
     c7c:	12433001 	subne	r3, r3, #1
     c80:	15803000 	strne	r3, [r0]
     c84:	e28dd010 	add	sp, sp, #16
     c88:	e8bd4070 	pop	{r4, r5, r6, lr}
     c8c:	e12fff1e 	bx	lr
     c90:	e28dd010 	add	sp, sp, #16
     c94:	e8bd4070 	pop	{r4, r5, r6, lr}
     c98:	eafffffe 	b	bd8 <_ZN7Console7newLineEv>
     c9c:	e5900000 	ldr	r0, [r0]
     ca0:	e2803004 	add	r3, r0, #4
     ca4:	e3530077 	cmp	r3, #119	; 0x77
     ca8:	95843000 	strls	r3, [r4]
     cac:	eafffff4 	b	c84 <_ZN7Console9printCharEcj+0x8c>
     cb0:	e1a00004 	mov	r0, r4
     cb4:	e28dd010 	add	sp, sp, #16
     cb8:	e8bd4070 	pop	{r4, r5, r6, lr}
     cbc:	eafffffe 	b	bb0 <_ZN7Console5clearEv>
     cc0:	e58d100c 	str	r1, [sp, #12]
     cc4:	ebfffffe 	bl	bd8 <_ZN7Console7newLineEv>
     cc8:	e59d100c 	ldr	r1, [sp, #12]
     ccc:	eaffffd6 	b	c2c <_ZN7Console9printCharEcj+0x34>

00000cd0 <_ZN7Console6kprintEPc>:
     cd0:	e92d4038 	push	{r3, r4, r5, lr}
     cd4:	e1a04001 	mov	r4, r1
     cd8:	e5d11000 	ldrb	r1, [r1]
     cdc:	e3510000 	cmp	r1, #0
     ce0:	e1a05000 	mov	r5, r0
     ce4:	0a000005 	beq	d00 <_ZN7Console6kprintEPc+0x30>
     ce8:	e1a00005 	mov	r0, r5
     cec:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
     cf0:	ebfffffe 	bl	bf8 <_ZN7Console9printCharEcj>
     cf4:	e5f41001 	ldrb	r1, [r4, #1]!
     cf8:	e3510000 	cmp	r1, #0
     cfc:	1afffff9 	bne	ce8 <_ZN7Console6kprintEPc+0x18>
     d00:	e8bd4038 	pop	{r3, r4, r5, lr}
     d04:	e12fff1e 	bx	lr

00000d08 <_ZN7Console6kprintEPKc>:
     d08:	eafffffe 	b	cd0 <_ZN7Console6kprintEPc>

00000d0c <_ZN7Console5kbaseEii>:
     d0c:	e92d40f0 	push	{r4, r5, r6, r7, lr}
     d10:	e2423005 	sub	r3, r2, #5
     d14:	e3530015 	cmp	r3, #21
     d18:	e24dd02c 	sub	sp, sp, #44	; 0x2c
     d1c:	e1a05002 	mov	r5, r2
     d20:	e1a06000 	mov	r6, r0
     d24:	e1a04001 	mov	r4, r1
     d28:	8a000027 	bhi	dcc <_ZN7Console5kbaseEii+0xc0>
     d2c:	e3a00000 	mov	r0, #0
     d30:	e58d0020 	str	r0, [sp, #32]
     d34:	e58d001c 	str	r0, [sp, #28]
     d38:	e3a0c001 	mov	ip, #1
     d3c:	ea000000 	b	d44 <_ZN7Console5kbaseEii+0x38>
     d40:	e1a0c003 	mov	ip, r3
     d44:	e0030c95 	mul	r3, r5, ip
     d48:	e1540003 	cmp	r4, r3
     d4c:	cafffffb 	bgt	d40 <_ZN7Console5kbaseEii+0x34>
     d50:	e59f7080 	ldr	r7, [pc, #128]	; dd8 <_ZN7Console5kbaseEii+0xcc>
     d54:	e8b7000f 	ldm	r7!, {r0, r1, r2, r3}
     d58:	e1a0e00d 	mov	lr, sp
     d5c:	e8ae000f 	stmia	lr!, {r0, r1, r2, r3}
     d60:	e8970007 	ldm	r7, {r0, r1, r2}
     d64:	e8ae0003 	stmia	lr!, {r0, r1}
     d68:	e58dc024 	str	ip, [sp, #36]	; 0x24
     d6c:	e1ce20b0 	strh	r2, [lr]
     d70:	e1a0100c 	mov	r1, ip
     d74:	e1a00004 	mov	r0, r4
     d78:	e28d301c 	add	r3, sp, #28
     d7c:	e28d2020 	add	r2, sp, #32
     d80:	ebfffffe 	bl	84 <_Z6divideiiPiS_>
     d84:	e59d3020 	ldr	r3, [sp, #32]
     d88:	e28d0028 	add	r0, sp, #40	; 0x28
     d8c:	e0802003 	add	r2, r0, r3
     d90:	e5521028 	ldrb	r1, [r2, #-40]	; 0xffffffd8
     d94:	e1a00006 	mov	r0, r6
     d98:	e3a028ff 	mov	r2, #16711680	; 0xff0000
     d9c:	ebfffffe 	bl	bf8 <_ZN7Console9printCharEcj>
     da0:	e59d0024 	ldr	r0, [sp, #36]	; 0x24
     da4:	e59dc020 	ldr	ip, [sp, #32]
     da8:	e00c0c90 	mul	ip, r0, ip
     dac:	e1a01005 	mov	r1, r5
     db0:	e28d2024 	add	r2, sp, #36	; 0x24
     db4:	e28d301c 	add	r3, sp, #28
     db8:	e06c4004 	rsb	r4, ip, r4
     dbc:	ebfffffe 	bl	84 <_Z6divideiiPiS_>
     dc0:	e59dc024 	ldr	ip, [sp, #36]	; 0x24
     dc4:	e35c0000 	cmp	ip, #0
     dc8:	caffffe8 	bgt	d70 <_ZN7Console5kbaseEii+0x64>
     dcc:	e28dd02c 	add	sp, sp, #44	; 0x2c
     dd0:	e8bd40f0 	pop	{r4, r5, r6, r7, lr}
     dd4:	e12fff1e 	bx	lr
     dd8:	00000000 	andeq	r0, r0, r0

00000ddc <_ZN7ConsoleC1EP6Canvas>:
     ddc:	e92d4010 	push	{r4, lr}
     de0:	e59fe038 	ldr	lr, [pc, #56]	; e20 <_ZN7ConsoleC1EP6Canvas+0x44>
     de4:	e3a03000 	mov	r3, #0
     de8:	e3a0c008 	mov	ip, #8
     dec:	e3a02010 	mov	r2, #16
     df0:	e1a04000 	mov	r4, r0
     df4:	e580e01c 	str	lr, [r0, #28]
     df8:	e580c014 	str	ip, [r0, #20]
     dfc:	e5802018 	str	r2, [r0, #24]
     e00:	e5803000 	str	r3, [r0]
     e04:	e5803004 	str	r3, [r0, #4]
     e08:	e5803008 	str	r3, [r0, #8]
     e0c:	e580100c 	str	r1, [r0, #12]
     e10:	ebfffffe 	bl	bb0 <_ZN7Console5clearEv>
     e14:	e1a00004 	mov	r0, r4
     e18:	e8bd4010 	pop	{r4, lr}
     e1c:	e12fff1e 	bx	lr
     e20:	00000000 	andeq	r0, r0, r0

00000e24 <_Z11init_memoryv>:
     e24:	e24dd018 	sub	sp, sp, #24
     e28:	e59f300c 	ldr	r3, [pc, #12]	; e3c <_Z11init_memoryv+0x18>
     e2c:	e28d2004 	add	r2, sp, #4
     e30:	e5832010 	str	r2, [r3, #16]
     e34:	e28dd018 	add	sp, sp, #24
     e38:	e12fff1e 	bx	lr
     e3c:	00000000 	andeq	r0, r0, r0

00000e40 <_Z6kalloci>:
     e40:	e92d0070 	push	{r4, r5, r6}
     e44:	e59f3084 	ldr	r3, [pc, #132]	; ed0 <_Z6kalloci+0x90>
     e48:	e1b06100 	lsls	r6, r0, #2
     e4c:	e1a02000 	mov	r2, r0
     e50:	e24dd01c 	sub	sp, sp, #28
     e54:	e5930014 	ldr	r0, [r3, #20]
     e58:	0a000014 	beq	eb0 <_Z6kalloci+0x70>
     e5c:	e59f1070 	ldr	r1, [pc, #112]	; ed4 <_Z6kalloci+0x94>
     e60:	e5911800 	ldr	r1, [r1, #2048]	; 0x800
     e64:	e3a05000 	mov	r5, #0
     e68:	e3560001 	cmp	r6, #1
     e6c:	e4815004 	str	r5, [r1], #4
     e70:	e3a04001 	mov	r4, #1
     e74:	9a00000d 	bls	eb0 <_Z6kalloci+0x70>
     e78:	e3a0c001 	mov	ip, #1
     e7c:	e35c0000 	cmp	ip, #0
     e80:	0a000003 	beq	e94 <_Z6kalloci+0x54>
     e84:	e3a04002 	mov	r4, #2
     e88:	e1560004 	cmp	r6, r4
     e8c:	e4815004 	str	r5, [r1], #4
     e90:	9a000006 	bls	eb0 <_Z6kalloci+0x70>
     e94:	e1a0c001 	mov	ip, r1
     e98:	e48c5004 	str	r5, [ip], #4
     e9c:	e2844002 	add	r4, r4, #2
     ea0:	e1560004 	cmp	r6, r4
     ea4:	e5815004 	str	r5, [r1, #4]
     ea8:	e28c1004 	add	r1, ip, #4
     eac:	8afffff8 	bhi	e94 <_Z6kalloci+0x54>
     eb0:	e5931010 	ldr	r1, [r3, #16]
     eb4:	e0802202 	add	r2, r0, r2, lsl #4
     eb8:	e28dc004 	add	ip, sp, #4
     ebc:	e581c000 	str	ip, [r1]
     ec0:	e5832014 	str	r2, [r3, #20]
     ec4:	e28dd01c 	add	sp, sp, #28
     ec8:	e8bd0070 	pop	{r4, r5, r6}
     ecc:	e12fff1e 	bx	lr
	...

00000ed8 <_Z14outputMetaDataP7Console>:
     ed8:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
     edc:	e59f1104 	ldr	r1, [pc, #260]	; fe8 <_Z14outputMetaDataP7Console+0x110>
     ee0:	e1a04000 	mov	r4, r0
     ee4:	ebfffffe 	bl	cd0 <_ZN7Console6kprintEPc>
     ee8:	e1a00004 	mov	r0, r4
     eec:	e59f10f8 	ldr	r1, [pc, #248]	; fec <_Z14outputMetaDataP7Console+0x114>
     ef0:	ebfffffe 	bl	cd0 <_ZN7Console6kprintEPc>
     ef4:	e59f70f4 	ldr	r7, [pc, #244]	; ff0 <_Z14outputMetaDataP7Console+0x118>
     ef8:	e1a00004 	mov	r0, r4
     efc:	e59f10f0 	ldr	r1, [pc, #240]	; ff4 <_Z14outputMetaDataP7Console+0x11c>
     f00:	ebfffffe 	bl	cd0 <_ZN7Console6kprintEPc>
     f04:	e1a00004 	mov	r0, r4
     f08:	e59f10e8 	ldr	r1, [pc, #232]	; ff8 <_Z14outputMetaDataP7Console+0x120>
     f0c:	ebfffffe 	bl	cd0 <_ZN7Console6kprintEPc>
     f10:	e1a01007 	mov	r1, r7
     f14:	e1a00004 	mov	r0, r4
     f18:	ebfffffe 	bl	cd0 <_ZN7Console6kprintEPc>
     f1c:	e59f60d8 	ldr	r6, [pc, #216]	; ffc <_Z14outputMetaDataP7Console+0x124>
     f20:	e1a00004 	mov	r0, r4
     f24:	e59f10d4 	ldr	r1, [pc, #212]	; 1000 <_Z14outputMetaDataP7Console+0x128>
     f28:	ebfffffe 	bl	cd0 <_ZN7Console6kprintEPc>
     f2c:	e1a00004 	mov	r0, r4
     f30:	e59f10cc 	ldr	r1, [pc, #204]	; 1004 <_Z14outputMetaDataP7Console+0x12c>
     f34:	ebfffffe 	bl	cd0 <_ZN7Console6kprintEPc>
     f38:	e1a01006 	mov	r1, r6
     f3c:	e1a00004 	mov	r0, r4
     f40:	ebfffffe 	bl	cd0 <_ZN7Console6kprintEPc>
     f44:	e59f50bc 	ldr	r5, [pc, #188]	; 1008 <_Z14outputMetaDataP7Console+0x130>
     f48:	e1a00004 	mov	r0, r4
     f4c:	e59f10b8 	ldr	r1, [pc, #184]	; 100c <_Z14outputMetaDataP7Console+0x134>
     f50:	ebfffffe 	bl	cd0 <_ZN7Console6kprintEPc>
     f54:	e1a00004 	mov	r0, r4
     f58:	e59f10b0 	ldr	r1, [pc, #176]	; 1010 <_Z14outputMetaDataP7Console+0x138>
     f5c:	ebfffffe 	bl	cd0 <_ZN7Console6kprintEPc>
     f60:	e1a01005 	mov	r1, r5
     f64:	e1a00004 	mov	r0, r4
     f68:	ebfffffe 	bl	cd0 <_ZN7Console6kprintEPc>
     f6c:	e1a00004 	mov	r0, r4
     f70:	e59f109c 	ldr	r1, [pc, #156]	; 1014 <_Z14outputMetaDataP7Console+0x13c>
     f74:	ebfffffe 	bl	cd0 <_ZN7Console6kprintEPc>
     f78:	e1a00004 	mov	r0, r4
     f7c:	e1a01007 	mov	r1, r7
     f80:	ebfffffe 	bl	cd0 <_ZN7Console6kprintEPc>
     f84:	e1a00004 	mov	r0, r4
     f88:	e59f1088 	ldr	r1, [pc, #136]	; 1018 <_Z14outputMetaDataP7Console+0x140>
     f8c:	ebfffffe 	bl	cd0 <_ZN7Console6kprintEPc>
     f90:	e1a00004 	mov	r0, r4
     f94:	e59f1080 	ldr	r1, [pc, #128]	; 101c <_Z14outputMetaDataP7Console+0x144>
     f98:	ebfffffe 	bl	cd0 <_ZN7Console6kprintEPc>
     f9c:	e1a00004 	mov	r0, r4
     fa0:	e1a01006 	mov	r1, r6
     fa4:	ebfffffe 	bl	cd0 <_ZN7Console6kprintEPc>
     fa8:	e1a00004 	mov	r0, r4
     fac:	e59f106c 	ldr	r1, [pc, #108]	; 1020 <_Z14outputMetaDataP7Console+0x148>
     fb0:	ebfffffe 	bl	cd0 <_ZN7Console6kprintEPc>
     fb4:	e1a00004 	mov	r0, r4
     fb8:	e59f1064 	ldr	r1, [pc, #100]	; 1024 <_Z14outputMetaDataP7Console+0x14c>
     fbc:	ebfffffe 	bl	cd0 <_ZN7Console6kprintEPc>
     fc0:	e1a00004 	mov	r0, r4
     fc4:	e59f105c 	ldr	r1, [pc, #92]	; 1028 <_Z14outputMetaDataP7Console+0x150>
     fc8:	ebfffffe 	bl	cd0 <_ZN7Console6kprintEPc>
     fcc:	e1a00004 	mov	r0, r4
     fd0:	e59f1054 	ldr	r1, [pc, #84]	; 102c <_Z14outputMetaDataP7Console+0x154>
     fd4:	ebfffffe 	bl	cd0 <_ZN7Console6kprintEPc>
     fd8:	e1a00004 	mov	r0, r4
     fdc:	e1a01005 	mov	r1, r5
     fe0:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
     fe4:	eafffffe 	b	cd0 <_ZN7Console6kprintEPc>
     fe8:	0000010c 	andeq	r0, r0, ip, lsl #2
     fec:	0000011c 	andeq	r0, r0, ip, lsl r1
     ff0:	0000013c 	andeq	r0, r0, ip, lsr r1
     ff4:	0000012c 	andeq	r0, r0, ip, lsr #2
     ff8:	00000130 	andeq	r0, r0, r0, lsr r1
     ffc:	00000154 	andeq	r0, r0, r4, asr r1
    1000:	00000144 	andeq	r0, r0, r4, asr #2
    1004:	00000148 	andeq	r0, r0, r8, asr #2
    1008:	00000198 	muleq	r0, r8, r1
    100c:	00000158 	andeq	r0, r0, r8, asr r1
    1010:	0000016c 	andeq	r0, r0, ip, ror #2
    1014:	0000019c 	muleq	r0, ip, r1
    1018:	000001a0 	andeq	r0, r0, r0, lsr #3
    101c:	000001a4 	andeq	r0, r0, r4, lsr #3
    1020:	000001bc 			; <UNDEFINED> instruction: 0x000001bc
    1024:	000001d0 	ldrdeq	r0, [r0], -r0	; <UNPREDICTABLE>
    1028:	000001dc 	ldrdeq	r0, [r0], -ip
    102c:	000001f4 	strdeq	r0, [r0], -r4

00001030 <kmain>:
    1030:	e92d4030 	push	{r4, r5, lr}
    1034:	e3a00b01 	mov	r0, #1024	; 0x400
    1038:	e24dd03c 	sub	sp, sp, #60	; 0x3c
    103c:	e3a01c03 	mov	r1, #768	; 0x300
    1040:	ebfffffe 	bl	3e8 <_ZN12RaspberryLib18AcquireFrameBufferEjj>
    1044:	e5d02028 	ldrb	r2, [r0, #40]	; 0x28
    1048:	e3520000 	cmp	r2, #0
    104c:	e1a03000 	mov	r3, r0
    1050:	0a000019 	beq	10bc <kmain+0x8c>
    1054:	e59f206c 	ldr	r2, [pc, #108]	; 10c8 <kmain+0x98>
    1058:	e28dc020 	add	ip, sp, #32
    105c:	e59f1068 	ldr	r1, [pc, #104]	; 10cc <kmain+0x9c>
    1060:	e3a0e000 	mov	lr, #0
    1064:	e582c010 	str	ip, [r2, #16]
    1068:	e3a04010 	mov	r4, #16
    106c:	e28d5034 	add	r5, sp, #52	; 0x34
    1070:	e1a0000d 	mov	r0, sp
    1074:	e58d3034 	str	r3, [sp, #52]	; 0x34
    1078:	e3a03008 	mov	r3, #8
    107c:	e58d3014 	str	r3, [sp, #20]
    1080:	e58de000 	str	lr, [sp]
    1084:	e58de004 	str	lr, [sp, #4]
    1088:	e58de008 	str	lr, [sp, #8]
    108c:	e58d101c 	str	r1, [sp, #28]
    1090:	e58d4018 	str	r4, [sp, #24]
    1094:	e58d500c 	str	r5, [sp, #12]
    1098:	ebfffffe 	bl	bb0 <_ZN7Console5clearEv>
    109c:	e59f102c 	ldr	r1, [pc, #44]	; 10d0 <kmain+0xa0>
    10a0:	e1a00005 	mov	r0, r5
    10a4:	ebfffffe 	bl	b80 <_ZN6Canvas5ClearEj>
    10a8:	e1a0000d 	mov	r0, sp
    10ac:	ebfffffe 	bl	ed8 <_Z14outputMetaDataP7Console>
    10b0:	e1a00004 	mov	r0, r4
    10b4:	e3a01001 	mov	r1, #1
    10b8:	ebfffffe 	bl	19c <_ZN12RaspberryLib7SetGPIOEjj>
    10bc:	e28dd03c 	add	sp, sp, #60	; 0x3c
    10c0:	e8bd4030 	pop	{r4, r5, lr}
    10c4:	e12fff1e 	bx	lr
	...
    10d0:	000a0c25 	andeq	r0, sl, r5, lsr #24

Disassembly of section .data:

00000000 <kernel_default_font>:
	...
 210:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
 214:	08080808 	stmdaeq	r8, {r3, fp}
 218:	08080008 	stmdaeq	r8, {r3}
 21c:	00000000 	andeq	r0, r0, r0
 220:	14000000 	strne	r0, [r0], #-0
 224:	00141414 	andseq	r1, r4, r4, lsl r4
	...
 230:	48480000 	stmdami	r8, {}^	; <UNPREDICTABLE>
 234:	2424fe68 	strtcs	pc, [r4], #-3688	; 0xfffff198
 238:	1212147f 	andsne	r1, r2, #2130706432	; 0x7f000000
 23c:	00000000 	andeq	r0, r0, r0
 240:	10000000 	andne	r0, r0, r0
 244:	1c12927c 	lfmne	f1, 1, [r2], {124}	; 0x7c
 248:	7c929070 	ldcvc	0, cr9, [r2], {112}	; 0x70
 24c:	00001010 	andeq	r1, r0, r0, lsl r0
 250:	06000000 	streq	r0, [r0], -r0
 254:	38460909 	stmdacc	r6, {r0, r3, r8, fp}^
 258:	60909066 	addsvs	r9, r0, r6, rrx
 25c:	00000000 	andeq	r0, r0, r0
 260:	38000000 	stmdacc	r0, {}	; <UNPREDICTABLE>
 264:	920c0404 	andls	r0, ip, #4, 8	; 0x4000000
 268:	bc46a2b2 	sfmlt	f2, 3, [r6], {178}	; 0xb2
 26c:	00000000 	andeq	r0, r0, r0
 270:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
 274:	00080808 	andeq	r0, r8, r8, lsl #16
	...
 280:	10103000 	andsne	r3, r0, r0
 284:	08080808 	stmdaeq	r8, {r3, fp}
 288:	10100808 	andsne	r0, r0, r8, lsl #16
 28c:	00000020 	andeq	r0, r0, r0, lsr #32
 290:	08080c00 	stmdaeq	r8, {sl, fp}
 294:	10101010 	andsne	r1, r0, r0, lsl r0
 298:	08081010 	stmdaeq	r8, {r4, ip}
 29c:	0000000c 	andeq	r0, r0, ip
 2a0:	10000000 	andne	r0, r0, r0
 2a4:	d6387c92 			; <UNDEFINED> instruction: 0xd6387c92
 2a8:	00000010 	andeq	r0, r0, r0, lsl r0
	...
 2b4:	7f080808 	svcvc	0x00080808
 2b8:	00080808 	andeq	r0, r8, r8, lsl #16
	...
 2c8:	18180000 	ldmdane	r8, {}	; <UNPREDICTABLE>
 2cc:	00000408 	andeq	r0, r0, r8, lsl #8
	...
 2d8:	0000001c 	andeq	r0, r0, ip, lsl r0
	...
 2e8:	18180000 	ldmdane	r8, {}	; <UNPREDICTABLE>
 2ec:	00000000 	andeq	r0, r0, r0
 2f0:	40000000 	andmi	r0, r0, r0
 2f4:	10102020 	andsne	r2, r0, r0, lsr #32
 2f8:	04080818 	streq	r0, [r8], #-2072	; 0xfffff7e8
 2fc:	00000204 	andeq	r0, r0, r4, lsl #4
 300:	38000000 	stmdacc	r0, {}	; <UNPREDICTABLE>
 304:	92828244 	addls	r8, r2, #68, 4	; 0x40000004
 308:	38448282 	stmdacc	r4, {r1, r7, r9, pc}^
 30c:	00000000 	andeq	r0, r0, r0
 310:	1c000000 	stcne	0, cr0, [r0], {-0}
 314:	10101010 	andsne	r1, r0, r0, lsl r0
 318:	7c101010 	ldcvc	0, cr1, [r0], {16}
 31c:	00000000 	andeq	r0, r0, r0
 320:	7c000000 	stcvc	0, cr0, [r0], {-0}
 324:	408080c2 	addmi	r8, r0, r2, asr #1
 328:	fe041830 	mcr2	8, 0, r1, cr4, cr0, {1}
 32c:	00000000 	andeq	r0, r0, r0
 330:	7c000000 	stcvc	0, cr0, [r0], {-0}
 334:	38c08082 	stmiacc	r0, {r1, r7, pc}^
 338:	7cc280c0 	stclvc	0, cr8, [r2], {192}	; 0xc0
 33c:	00000000 	andeq	r0, r0, r0
 340:	60000000 	andvs	r0, r0, r0
 344:	44485850 	strbmi	r5, [r8], #-2128	; 0xfffff7b0
 348:	4040fe42 	submi	pc, r0, r2, asr #28
 34c:	00000000 	andeq	r0, r0, r0
 350:	7e000000 	cdpvc	0, 0, cr0, cr0, cr0, {0}
 354:	c03e0202 	eorsgt	r0, lr, r2, lsl #4
 358:	3cc28080 	stclcc	0, cr8, [r2], {128}	; 0x80
 35c:	00000000 	andeq	r0, r0, r0
 360:	78000000 	stmdavc	r0, {}	; <UNPREDICTABLE>
 364:	c67a0284 	ldrbtgt	r0, [sl], -r4, lsl #5
 368:	78c48282 	stmiavc	r4, {r1, r7, r9, pc}^
 36c:	00000000 	andeq	r0, r0, r0
 370:	fe000000 	cdp2	0, 0, cr0, cr0, cr0, {0}
 374:	20204040 	eorcs	r4, r0, r0, asr #32
 378:	04081810 	streq	r1, [r8], #-2064	; 0xfffff7f0
 37c:	00000000 	andeq	r0, r0, r0
 380:	7c000000 	stcvc	0, cr0, [r0], {-0}
 384:	7c828282 	sfmvc	f0, 1, [r2], {130}	; 0x82
 388:	7c868282 	sfmvc	f0, 1, [r6], {130}	; 0x82
 38c:	00000000 	andeq	r0, r0, r0
 390:	3c000000 	stccc	0, cr0, [r0], {-0}
 394:	c6828246 	strgt	r8, [r2], r6, asr #4
 398:	3c4280bc 	mcrrcc	0, 11, r8, r2, cr12
	...
 3a4:	00181800 	andseq	r1, r8, r0, lsl #16
 3a8:	18180000 	ldmdane	r8, {}	; <UNPREDICTABLE>
	...
 3b4:	00181800 	andseq	r1, r8, r0, lsl #16
 3b8:	18180000 	ldmdane	r8, {}	; <UNPREDICTABLE>
 3bc:	00000408 	andeq	r0, r0, r8, lsl #8
 3c0:	00000000 	andeq	r0, r0, r0
 3c4:	0e708000 	cdpeq	0, 7, cr8, cr0, cr0, {0}
 3c8:	0080700e 	addeq	r7, r0, lr
	...
 3d4:	00fe0000 	rscseq	r0, lr, r0
 3d8:	0000fe00 	andeq	pc, r0, r0, lsl #28
	...
 3e4:	e01c0200 	ands	r0, ip, r0, lsl #4
 3e8:	00021ce0 	andeq	r1, r2, r0, ror #25
 3ec:	00000000 	andeq	r0, r0, r0
 3f0:	1c000000 	stcne	0, cr0, [r0], {-0}
 3f4:	08102022 	ldmdaeq	r0, {r1, r5, sp}
 3f8:	08080008 	stmdaeq	r8, {r3}
 3fc:	00000000 	andeq	r0, r0, r0
 400:	78000000 	stmdavc	r0, {}	; <UNPREDICTABLE>
 404:	92e284cc 	rscls	r8, r2, #204, 8	; 0xcc000000
 408:	04e29292 	strbteq	r9, [r2], #658	; 0x292
 40c:	0000780c 	andeq	r7, r0, ip, lsl #16
 410:	10000000 	andne	r0, r0, r0
 414:	44282828 	strtmi	r2, [r8], #-2088	; 0xfffff7d8
 418:	82c67c44 	sbchi	r7, r6, #68, 24	; 0x4400
 41c:	00000000 	andeq	r0, r0, r0
 420:	7e000000 	cdpvc	0, 0, cr0, cr0, cr0, {0}
 424:	7e828282 	cdpvc	2, 8, cr8, cr2, cr2, {4}
 428:	7e828282 	cdpvc	2, 8, cr8, cr2, cr2, {4}
 42c:	00000000 	andeq	r0, r0, r0
 430:	78000000 	stmdavc	r0, {}	; <UNPREDICTABLE>
 434:	02020284 	andeq	r0, r2, #132, 4	; 0x40000008
 438:	78840202 	stmvc	r4, {r1, r9}
 43c:	00000000 	andeq	r0, r0, r0
 440:	3e000000 	cdpcc	0, 0, cr0, cr0, cr0, {0}
 444:	82828242 	addhi	r8, r2, #536870916	; 0x20000004
 448:	3e428282 	cdpcc	2, 4, cr8, cr2, cr2, {4}
 44c:	00000000 	andeq	r0, r0, r0
 450:	fe000000 	cdp2	0, 0, cr0, cr0, cr0, {0}
 454:	fe020202 	cdp2	2, 0, cr0, cr2, cr2, {0}
 458:	fe020202 	cdp2	2, 0, cr0, cr2, cr2, {0}
 45c:	00000000 	andeq	r0, r0, r0
 460:	fe000000 	cdp2	0, 0, cr0, cr0, cr0, {0}
 464:	fe020202 	cdp2	2, 0, cr0, cr2, cr2, {0}
 468:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
 46c:	00000000 	andeq	r0, r0, r0
 470:	78000000 	stmdavc	r0, {}	; <UNPREDICTABLE>
 474:	c2020284 	andgt	r0, r2, #132, 4	; 0x40000008
 478:	78848282 	stmvc	r4, {r1, r7, r9, pc}
 47c:	00000000 	andeq	r0, r0, r0
 480:	82000000 	andhi	r0, r0, #0
 484:	fe828282 	cdp2	2, 8, cr8, cr2, cr2, {4}
 488:	82828282 	addhi	r8, r2, #536870920	; 0x20000008
 48c:	00000000 	andeq	r0, r0, r0
 490:	3e000000 	cdpcc	0, 0, cr0, cr0, cr0, {0}
 494:	08080808 	stmdaeq	r8, {r3, fp}
 498:	3e080808 	cdpcc	8, 0, cr0, cr8, cr8, {0}
 49c:	00000000 	andeq	r0, r0, r0
 4a0:	38000000 	stmdacc	r0, {}	; <UNPREDICTABLE>
 4a4:	20202020 	eorcs	r2, r0, r0, lsr #32
 4a8:	1c222020 	stcne	0, cr2, [r2], #-128	; 0xffffff80
 4ac:	00000000 	andeq	r0, r0, r0
 4b0:	42000000 	andmi	r0, r0, #0
 4b4:	0e0a1222 	cdpeq	2, 0, cr1, cr10, cr2, {1}
 4b8:	42222212 	eormi	r2, r2, #536870913	; 0x20000001
 4bc:	00000000 	andeq	r0, r0, r0
 4c0:	02000000 	andeq	r0, r0, #0
 4c4:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
 4c8:	fe020202 	cdp2	2, 0, cr0, cr2, cr2, {0}
 4cc:	00000000 	andeq	r0, r0, r0
 4d0:	c6000000 	strgt	r0, [r0], -r0
 4d4:	aaaaaac6 	bge	feaaaff4 <kmain+0xfeaa9fc4>
 4d8:	82828292 	addhi	r8, r2, #536870921	; 0x20000009
 4dc:	00000000 	andeq	r0, r0, r0
 4e0:	86000000 	strhi	r0, [r0], -r0
 4e4:	928a8a86 	addls	r8, sl, #548864	; 0x86000
 4e8:	c2c2a2a2 	sbcgt	sl, r2, #536870922	; 0x2000000a
 4ec:	00000000 	andeq	r0, r0, r0
 4f0:	38000000 	stmdacc	r0, {}	; <UNPREDICTABLE>
 4f4:	82828244 	addhi	r8, r2, #68, 4	; 0x40000004
 4f8:	38448282 	stmdacc	r4, {r1, r7, r9, pc}^
 4fc:	00000000 	andeq	r0, r0, r0
 500:	7e000000 	cdpvc	0, 0, cr0, cr0, cr0, {0}
 504:	c28282c2 	addgt	r8, r2, #536870924	; 0x2000000c
 508:	0202027e 	andeq	r0, r2, #-536870905	; 0xe0000007
 50c:	00000000 	andeq	r0, r0, r0
 510:	38000000 	stmdacc	r0, {}	; <UNPREDICTABLE>
 514:	82828244 	addhi	r8, r2, #68, 4	; 0x40000004
 518:	78448282 	stmdavc	r4, {r1, r7, r9, pc}^
 51c:	00004060 	andeq	r4, r0, r0, rrx
 520:	7e000000 	cdpvc	0, 0, cr0, cr0, cr0, {0}
 524:	7e8282c2 	cdpvc	2, 8, cr8, cr2, cr2, {6}
 528:	02828242 	addeq	r8, r2, #536870916	; 0x20000004
 52c:	00000000 	andeq	r0, r0, r0
 530:	7c000000 	stcvc	0, cr0, [r0], {-0}
 534:	7c060286 	sfmvc	f0, 4, [r6], {134}	; 0x86
 538:	7dc280c0 	stclvc	0, cr8, [r2, #768]	; 0x300
 53c:	00000000 	andeq	r0, r0, r0
 540:	7f000000 	svcvc	0x00000000
 544:	08080808 	stmdaeq	r8, {r3, fp}
 548:	08080808 	stmdaeq	r8, {r3, fp}
 54c:	00000000 	andeq	r0, r0, r0
 550:	82000000 	andhi	r0, r0, #0
 554:	82828282 	addhi	r8, r2, #536870920	; 0x20000008
 558:	7c828282 	sfmvc	f0, 1, [r2], {130}	; 0x82
 55c:	00000000 	andeq	r0, r0, r0
 560:	82000000 	andhi	r0, r0, #0
 564:	444444c6 	strbmi	r4, [r4], #-1222	; 0xfffffb3a
 568:	10282828 	eorne	r2, r8, r8, lsr #16
 56c:	00000000 	andeq	r0, r0, r0
 570:	81000000 	tsthi	r0, r0
 574:	5a5a8181 	bpl	16a0b80 <kmain+0x169fb50>
 578:	6666665a 			; <UNDEFINED> instruction: 0x6666665a
 57c:	00000000 	andeq	r0, r0, r0
 580:	c6000000 	strgt	r0, [r0], -r0
 584:	10382844 	eorsne	r2, r8, r4, asr #16
 588:	82446c28 	subhi	r6, r4, #40, 24	; 0x2800
 58c:	00000000 	andeq	r0, r0, r0
 590:	41000000 	tstmi	r0, r0
 594:	08141422 	ldmdaeq	r4, {r1, r5, sl, ip}
 598:	08080808 	stmdaeq	r8, {r3, fp}
 59c:	00000000 	andeq	r0, r0, r0
 5a0:	fe000000 	cdp2	0, 0, cr0, cr0, cr0, {0}
 5a4:	102060c0 	eorne	r6, r0, r0, asr #1
 5a8:	fe060c08 	cdp2	12, 0, cr0, cr6, cr8, {0}
 5ac:	00000000 	andeq	r0, r0, r0
 5b0:	08083800 	stmdaeq	r8, {fp, ip, sp}
 5b4:	08080808 	stmdaeq	r8, {r3, fp}
 5b8:	08080808 	stmdaeq	r8, {r3, fp}
 5bc:	00000038 	andeq	r0, r0, r8, lsr r0
 5c0:	02000000 	andeq	r0, r0, #0
 5c4:	08080404 	stmdaeq	r8, {r2, sl}
 5c8:	20101018 	andscs	r1, r0, r8, lsl r0
 5cc:	00004020 	andeq	r4, r0, r0, lsr #32
 5d0:	10101c00 	andsne	r1, r0, r0, lsl #24
 5d4:	10101010 	andsne	r1, r0, r0, lsl r0
 5d8:	10101010 	andsne	r1, r0, r0, lsl r0
 5dc:	0000001c 	andeq	r0, r0, ip, lsl r0
 5e0:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
 5e4:	00632214 	rsbeq	r2, r3, r4, lsl r2
	...
 5fc:	007f0000 	rsbseq	r0, pc, r0
 600:	10080000 	andne	r0, r8, r0
	...
 614:	40443800 	submi	r3, r4, r0, lsl #16
 618:	5c62427c 	sfmpl	f4, 2, [r2], #-496	; 0xfffffe10
 61c:	00000000 	andeq	r0, r0, r0
 620:	02020200 	andeq	r0, r2, #0, 4
 624:	42663e02 	rsbmi	r3, r6, #2, 28
 628:	3e664242 	cdpcc	2, 6, cr4, cr6, cr2, {2}
	...
 634:	02443800 	subeq	r3, r4, #0, 16
 638:	38440202 	stmdacc	r4, {r1, r9}^
 63c:	00000000 	andeq	r0, r0, r0
 640:	40404000 	submi	r4, r0, r0
 644:	42667c40 	rsbmi	r7, r6, #64, 24	; 0x4000
 648:	7c664242 	sfmvc	f4, 2, [r6], #-264	; 0xfffffef8
	...
 654:	42663c00 	rsbmi	r3, r6, #0, 24
 658:	3c46027e 	sfmcc	f0, 2, [r6], {126}	; 0x7e
 65c:	00000000 	andeq	r0, r0, r0
 660:	08083000 	stmdaeq	r8, {ip, sp}
 664:	08083e08 	stmdaeq	r8, {r3, r9, sl, fp, ip, sp}
 668:	08080808 	stmdaeq	r8, {r3, fp}
	...
 674:	42667c00 	rsbmi	r7, r6, #0, 24
 678:	5c664242 	sfmpl	f4, 2, [r6], #-264	; 0xfffffef8
 67c:	00384440 	eorseq	r4, r8, r0, asr #8
 680:	02020200 	andeq	r0, r2, #0, 4
 684:	42463a02 	submi	r3, r6, #8192	; 0x2000
 688:	42424242 	submi	r4, r2, #536870916	; 0x20000004
 68c:	00000000 	andeq	r0, r0, r0
 690:	00000800 	andeq	r0, r0, r0, lsl #16
 694:	08080e00 	stmdaeq	r8, {r9, sl, fp}
 698:	3e080808 	cdpcc	8, 0, cr0, cr8, cr8, {0}
 69c:	00000000 	andeq	r0, r0, r0
 6a0:	00001000 	andeq	r1, r0, r0
 6a4:	10101c00 	andsne	r1, r0, r0, lsl #24
 6a8:	10101010 	andsne	r1, r0, r0, lsl r0
 6ac:	000e1010 	andeq	r1, lr, r0, lsl r0
 6b0:	02020200 	andeq	r0, r2, #0, 4
 6b4:	0a122202 	beq	488ec4 <kmain+0x487e94>
 6b8:	4222120e 	eormi	r1, r2, #-536870912	; 0xe0000000
 6bc:	00000000 	andeq	r0, r0, r0
 6c0:	08080e00 	stmdaeq	r8, {r9, sl, fp}
 6c4:	08080808 	stmdaeq	r8, {r3, fp}
 6c8:	70080808 	andvc	r0, r8, r8, lsl #16
	...
 6d4:	9292fe00 	addsls	pc, r2, #0, 28
 6d8:	92929292 	addsls	r9, r2, #536870921	; 0x20000009
	...
 6e4:	42463a00 	submi	r3, r6, #0, 20
 6e8:	42424242 	submi	r4, r2, #536870916	; 0x20000004
	...
 6f4:	42663c00 	rsbmi	r3, r6, #0, 24
 6f8:	3c664242 	sfmcc	f4, 2, [r6], #-264	; 0xfffffef8
	...
 704:	42663e00 	rsbmi	r3, r6, #0, 28
 708:	3e664242 	cdpcc	2, 6, cr4, cr6, cr2, {2}
 70c:	00020202 	andeq	r0, r2, r2, lsl #4
 710:	00000000 	andeq	r0, r0, r0
 714:	42667c00 	rsbmi	r7, r6, #0, 24
 718:	5c664242 	sfmpl	f4, 2, [r6], #-264	; 0xfffffef8
 71c:	00404040 	subeq	r4, r0, r0, asr #32
 720:	00000000 	andeq	r0, r0, r0
 724:	044c3c00 	strbeq	r3, [ip], #-3072	; 0xfffff400
 728:	04040404 	streq	r0, [r4], #-1028	; 0xfffffbfc
	...
 734:	02423c00 	subeq	r3, r2, #0, 24
 738:	3c42403c 	mcrrcc	0, 3, r4, r2, cr12
 73c:	00000000 	andeq	r0, r0, r0
 740:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
 744:	08087e08 	stmdaeq	r8, {r3, r9, sl, fp, ip, sp, lr}
 748:	70080808 	andvc	r0, r8, r8, lsl #16
	...
 754:	42424200 	submi	r4, r2, #0, 4
 758:	5c624242 	sfmpl	f4, 2, [r2], #-264	; 0xfffffef8
	...
 764:	24664200 	strbtcs	r4, [r6], #-512	; 0xfffffe00
 768:	18183c24 	ldmdane	r8, {r2, r5, sl, fp, ip, sp}
	...
 774:	5a818100 	bpl	fe060b7c <kmain+0xfe05fb4c>
 778:	24245a5a 	strtcs	r5, [r4], #-2650	; 0xfffff5a6
	...
 784:	18246600 	stmdane	r4!, {r9, sl, sp, lr}
 788:	66241818 			; <UNDEFINED> instruction: 0x66241818
	...
 794:	24444200 	strbcs	r4, [r4], #-512	; 0xfffffe00
 798:	10182824 	andsne	r2, r8, r4, lsr #16
 79c:	000c0810 	andeq	r0, ip, r0, lsl r8
 7a0:	00000000 	andeq	r0, r0, r0
 7a4:	20407e00 	subcs	r7, r0, r0, lsl #28
 7a8:	7e020418 	cfmvdlrvc	mvd2, r0
 7ac:	00000000 	andeq	r0, r0, r0
 7b0:	08083800 	stmdaeq	r8, {fp, ip, sp}
 7b4:	08060808 	stmdaeq	r6, {r3, fp}
 7b8:	08080808 	stmdaeq	r8, {r3, fp}
 7bc:	00000030 	andeq	r0, r0, r0, lsr r0
 7c0:	08080800 	stmdaeq	r8, {fp}
 7c4:	08080808 	stmdaeq	r8, {r3, fp}
 7c8:	08080808 	stmdaeq	r8, {r3, fp}
 7cc:	00000808 	andeq	r0, r0, r8, lsl #16
 7d0:	08080e00 	stmdaeq	r8, {r9, sl, fp}
 7d4:	08300808 	ldmdaeq	r0!, {r3, fp}
 7d8:	08080808 	stmdaeq	r8, {r3, fp}
 7dc:	00000006 	andeq	r0, r0, r6
 7e0:	00000000 	andeq	r0, r0, r0
 7e4:	9c000000 	stcls	0, cr0, [r0], {-0}
 7e8:	00000062 	andeq	r0, r0, r2, rrx
 7ec:	00000000 	andeq	r0, r0, r0
 7f0:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 7f4:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 7f8:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 7fc:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff

00000800 <memory_space>:
 800:	00009000 	andeq	r9, r0, r0

Disassembly of section .bss:

00000000 <_ZZN4Font8GetBytesEcE5bytes>:
	...

00000010 <page_table>:
  10:	00000000 	andeq	r0, r0, r0

00000014 <end>:
  14:	00000000 	andeq	r0, r0, r0

Disassembly of section .rodata:

00000000 <_ZZN7Console5kbaseEiiE3C.8>:
   0:	33323130 	teqcc	r2, #48, 2
   4:	37363534 			; <UNDEFINED> instruction: 0x37363534
   8:	42413938 	submi	r3, r1, #56, 18	; 0xe0000
   c:	46454443 	strbmi	r4, [r5], -r3, asr #8
  10:	4a494847 	bmi	1252134 <kmain+0x1251104>
  14:	4e4d4c4b 	cdpmi	12, 4, cr4, cr13, cr11, {2}
  18:	0000504f 	andeq	r5, r0, pc, asr #32

Disassembly of section .rodata.str1.4:

00000000 <.rodata.str1.4>:
   0:	6f727245 	svcvs	0x00727245
   4:	43202e72 	teqmi	r0, #1824	; 0x720
   8:	75637269 	strbvc	r7, [r3, #-617]!	; 0xfffffd97
   c:	2072616c 	rsbscs	r6, r2, ip, ror #2
  10:	706f6f6c 	rsbvc	r6, pc, ip, ror #30
  14:	65686320 	strbvs	r6, [r8, #-800]!	; 0xfffffce0
  18:	6e696b63 	vnmulvs.f64	d22, d9, d19
  1c:	6f662067 	svcvs	0x00662067
  20:	74732072 	ldrbtvc	r2, [r3], #-114	; 0xffffff8e
  24:	73757461 	cmnvc	r5, #1627389952	; 0x61000000
  28:	0000002e 	andeq	r0, r0, lr, lsr #32
  2c:	6f727245 	svcvs	0x00727245
  30:	54202172 	strtpl	r2, [r0], #-370	; 0xfffffe8e
  34:	6d206568 	cfstr32vs	mvfx6, [r0, #-416]!	; 0xfffffe60
  38:	626c6961 	rsbvs	r6, ip, #1589248	; 0x184000
  3c:	6420786f 	strtvs	r7, [r0], #-2159	; 0xfffff791
  40:	276e6469 	strbcs	r6, [lr, -r9, ror #8]!
  44:	65722074 	ldrbvs	r2, [r2, #-116]!	; 0xffffff8c
  48:	6e727574 	mrcvs	5, 3, r7, cr2, cr4, {3}
  4c:	73206120 	teqvc	r0, #32, 2
  50:	61746975 	cmnvs	r4, r5, ror r9
  54:	20656c62 	rsbcs	r6, r5, r2, ror #24
  58:	756c6176 	strbvc	r6, [ip, #-374]!	; 0xfffffe8a
  5c:	6e692065 	cdpvs	0, 6, cr2, cr9, cr5, {3}
  60:	74206120 	strtvc	r6, [r0], #-288	; 0xfffffee0
  64:	6c656d69 	stclvs	13, cr6, [r5], #-420	; 0xfffffe5c
  68:	616d2079 	smcvs	53769	; 0xd209
  6c:	72656e6e 	rsbvc	r6, r5, #1760	; 0x6e0
  70:	0000002e 	andeq	r0, r0, lr, lsr #32
  74:	6f727245 	svcvs	0x00727245
  78:	54202172 	strtpl	r2, [r0], #-370	; 0xfffffe8e
  7c:	66206568 	strtvs	r6, [r0], -r8, ror #10
  80:	656d6172 	strbvs	r6, [sp, #-370]!	; 0xfffffe8e
  84:	66667562 	strbtvs	r7, [r6], -r2, ror #10
  88:	72207265 	eorvc	r7, r0, #1342177286	; 0x50000006
  8c:	72757465 	rsbsvc	r7, r5, #1694498816	; 0x65000000
  90:	2064656e 	rsbcs	r6, r4, lr, ror #10
  94:	69207369 	stmdbvs	r0!, {r0, r3, r5, r6, r8, r9, ip, sp, lr}
  98:	6c61766e 	stclvs	6, cr7, [r1], #-440	; 0xfffffe48
  9c:	202e6469 	eorcs	r6, lr, r9, ror #8
  a0:	726f6241 	rsbvc	r6, pc, #268435460	; 0x10000004
  a4:	676e6974 			; <UNDEFINED> instruction: 0x676e6974
  a8:	61726620 	cmnvs	r2, r0, lsr #12
  ac:	7562656d 	strbvc	r6, [r2, #-1389]!	; 0xfffffa93
  b0:	72656666 	rsbvc	r6, r5, #106954752	; 0x6600000
  b4:	71636120 	cmnvc	r3, r0, lsr #2
  b8:	69736975 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r8, fp, sp, lr}^
  bc:	6e6f6974 	mcrvs	9, 3, r6, cr15, cr4, {3}
  c0:	00000000 	andeq	r0, r0, r0
  c4:	6f727245 	svcvs	0x00727245
  c8:	54202172 	strtpl	r2, [r0], #-370	; 0xfffffe8e
  cc:	70206568 	eorvc	r6, r0, r8, ror #10
  d0:	68637469 	stmdavs	r3!, {r0, r3, r5, r6, sl, ip, sp, lr}^
  d4:	74657220 	strbtvc	r7, [r5], #-544	; 0xfffffde0
  d8:	656e7275 	strbvs	r7, [lr, #-629]!	; 0xfffffd8b
  dc:	73692064 	cmnvc	r9, #100	; 0x64
  e0:	766e6920 	strbtvc	r6, [lr], -r0, lsr #18
  e4:	64696c61 	strbtvs	r6, [r9], #-3169	; 0xfffff39f
  e8:	6241202e 	subvs	r2, r1, #46	; 0x2e
  ec:	6974726f 	ldmdbvs	r4!, {r0, r1, r2, r3, r5, r6, r9, ip, sp, lr}^
  f0:	6620676e 	strtvs	r6, [r0], -lr, ror #14
  f4:	656d6172 	strbvs	r6, [sp, #-370]!	; 0xfffffe8e
  f8:	66667562 	strbtvs	r7, [r6], -r2, ror #10
  fc:	61207265 	teqvs	r0, r5, ror #4
 100:	69757163 	ldmdbvs	r5!, {r0, r1, r5, r6, r8, ip, sp, lr}^
 104:	69746973 	ldmdbvs	r4!, {r0, r1, r4, r5, r6, r8, fp, sp, lr}^
 108:	002e6e6f 	eoreq	r6, lr, pc, ror #28
 10c:	636c6557 	cmnvs	ip, #364904448	; 0x15c00000
 110:	20656d6f 	rsbcs	r6, r5, pc, ror #26
 114:	74206f74 	strtvc	r6, [r0], #-3956	; 0xfffff08c
 118:	00206568 	eoreq	r6, r0, r8, ror #10
 11c:	70727830 	rsbsvc	r7, r2, r0, lsr r8
 120:	654b2069 	strbvs	r2, [fp, #-105]	; 0xffffff97
 124:	6c656e72 	stclvs	14, cr6, [r5], #-456	; 0xfffffe38
 128:	00000000 	andeq	r0, r0, r0
 12c:	00000a21 	andeq	r0, r0, r1, lsr #20
 130:	73726556 	cmnvc	r2, #360710144	; 0x15800000
 134:	3a6e6f69 	bcc	1b9bee0 <kmain+0x1b9aeb0>
 138:	00000020 	andeq	r0, r0, r0, lsr #32
 13c:	2e302e30 	mrccs	14, 1, r2, cr0, cr0, {1}
 140:	00313932 	eorseq	r3, r1, r2, lsr r9
 144:	00202d20 	eoreq	r2, r0, r0, lsr #26
 148:	646e694d 	strbtvs	r6, [lr], #-2381	; 0xfffff6b3
 14c:	79616c66 	stmdbvc	r1!, {r1, r2, r5, r6, sl, fp, sp, lr}^
 150:	00007265 	andeq	r7, r0, r5, ror #4
 154:	0000000a 	andeq	r0, r0, sl
 158:	77656956 			; <UNDEFINED> instruction: 0x77656956
 15c:	65687420 	strbvs	r7, [r8, #-1056]!	; 0xfffffbe0
 160:	646f6320 	strbtvs	r6, [pc], #-800	; 168 <.rodata.str1.4+0x168>
 164:	74612065 	strbtvc	r2, [r1], #-101	; 0xffffff9b
 168:	0000203a 	andeq	r2, r0, sl, lsr r0
 16c:	70747468 	rsbsvc	r7, r4, r8, ror #8
 170:	2f2f3a73 	svccs	0x002f3a73
 174:	68746967 	ldmdavs	r4!, {r0, r1, r2, r5, r6, r8, fp, sp, lr}^
 178:	632e6275 	teqvs	lr, #1342177287	; 0x50000007
 17c:	532f6d6f 	teqpl	pc, #7104	; 0x1bc0
 180:	70726168 	rsbsvc	r6, r2, r8, ror #2
 184:	65646f43 	strbvs	r6, [r4, #-3907]!	; 0xfffff0bd
 188:	70722f72 	rsbsvc	r2, r2, r2, ror pc
 18c:	656b2d69 	strbvs	r2, [fp, #-3433]!	; 0xfffff297
 190:	6c656e72 	stclvs	14, cr6, [r5], #-456	; 0xfffffe38
 194:	00000000 	andeq	r0, r0, r0
 198:	00000a0a 	andeq	r0, r0, sl, lsl #20
 19c:	00000076 	andeq	r0, r0, r6, ror r0
 1a0:	00000020 	andeq	r0, r0, r0, lsr #32
 1a4:	33313032 	teqcc	r1, #50	; 0x32
 1a8:	2d33302d 	ldccs	0, cr3, [r3, #-180]!	; 0xffffff4c
 1ac:	20203632 	eorcs	r3, r0, r2, lsr r6
 1b0:	353a3031 	ldrcc	r3, [sl, #-49]!	; 0xffffffcf
 1b4:	31343a39 	teqcc	r4, r9, lsr sl
 1b8:	004d5020 	subeq	r5, sp, r0, lsr #32
 1bc:	6769724f 	strbvs	r7, [r9, -pc, asr #4]!
 1c0:	6c616e69 	stclvs	14, cr6, [r1], #-420	; 0xfffffe5c
 1c4:	74756120 	ldrbtvc	r6, [r5], #-288	; 0xfffffee0
 1c8:	3a726f68 	bcc	1c9bf70 <kmain+0x1c9af40>
 1cc:	00000020 	andeq	r0, r0, r0, lsr #32
 1d0:	72616853 	rsbvc	r6, r1, #5439488	; 0x530000
 1d4:	646f4370 	strbtvs	r4, [pc], #-880	; 1dc <.rodata.str1.4+0x1dc>
 1d8:	00007265 	andeq	r7, r0, r5, ror #4
 1dc:	6e6f430a 	cdpvs	3, 6, cr4, cr15, cr10, {0}
 1e0:	74636174 	strbtvc	r6, [r3], #-372	; 0xfffffe8c
 1e4:	666e6920 	strbtvs	r6, [lr], -r0, lsr #18
 1e8:	616d726f 	cmnvs	sp, pc, ror #4
 1ec:	6e6f6974 	mcrvs	9, 3, r6, cr15, cr4, {3}
 1f0:	0000203a 	andeq	r2, r0, sl, lsr r0
 1f4:	75736f4a 	ldrbvc	r6, [r3, #-3914]!	; 0xfffff0b6
 1f8:	64406168 	strbvs	r6, [r0], #-360	; 0xfffffe98
 1fc:	67756265 	ldrbvs	r6, [r5, -r5, ror #4]!
 200:	2e656c67 	cdpcs	12, 6, cr6, cr5, cr7, {3}
 204:	006d6f63 	rsbeq	r6, sp, r3, ror #30

Disassembly of section .comment:

00000000 <.comment>:
   0:	43434700 	movtmi	r4, #14080	; 0x3700
   4:	5328203a 	teqpl	r8, #58	; 0x3a
   8:	6372756f 	cmnvs	r2, #465567744	; 0x1bc00000
   c:	20797265 	rsbscs	r7, r9, r5, ror #4
  10:	202b2b47 	eorcs	r2, fp, r7, asr #22
  14:	6574694c 	ldrbvs	r6, [r4, #-2380]!	; 0xfffff6b4
  18:	31303220 	teqcc	r0, r0, lsr #4
  1c:	39302e30 	ldmdbcc	r0!, {r4, r5, r9, sl, fp, sp}
  20:	2931352d 	ldmdbcs	r1!, {r0, r2, r3, r5, r8, sl, ip, sp}
  24:	352e3420 	strcc	r3, [lr, #-1056]!	; 0xfffffbe0
  28:	Address 0x00000028 is out of bounds.


Disassembly of section .ARM.attributes:

00000000 <.ARM.attributes>:
   0:	00003341 	andeq	r3, r0, r1, asr #6
   4:	61656100 	cmnvs	r5, r0, lsl #2
   8:	01006962 	tsteq	r0, r2, ror #18
   c:	00000029 	andeq	r0, r0, r9, lsr #32
  10:	4d524105 	ldfmie	f4, [r2, #-20]	; 0xffffffec
  14:	4d445437 	cfstrdmi	mvd5, [r4, #-220]	; 0xffffff24
  18:	00532d49 	subseq	r2, r3, r9, asr #26
  1c:	01080206 	tsteq	r8, r6, lsl #4
  20:	04120109 	ldreq	r0, [r2], #-265	; 0xfffffef7
  24:	01150114 	tsteq	r5, r4, lsl r1
  28:	01180317 	tsteq	r8, r7, lsl r3
  2c:	011a0119 	tsteq	sl, r9, lsl r1
  30:	012c021e 	teqeq	ip, lr, lsl r2
