
kmain.o:     file format elf32-littlearm


Disassembly of section .group:

00000000 <.group>:
   0:	00000001 	andeq	r0, r0, r1
   4:	00000007 	andeq	r0, r0, r7

Disassembly of section .group:

00000000 <.group>:
   0:	00000001 	andeq	r0, r0, r1
   4:	00000009 	andeq	r0, r0, r9

Disassembly of section .text:

00000000 <_Z3absi>:
       0:	e3500000 	cmp	r0, #0
       4:	b2600000 	rsblt	r0, r0, #0
       8:	e12fff1e 	bx	lr

0000000c <_Z15getNumberLengthiiPi>:
       c:	e1a03000 	mov	r3, r0
      10:	e3a00000 	mov	r0, #0
      14:	e5820000 	str	r0, [r2]
      18:	e3a00001 	mov	r0, #1
      1c:	ea000000 	b	24 <_Z15getNumberLengthiiPi+0x18>
      20:	e1a00002 	mov	r0, r2
      24:	e0020091 	mul	r2, r1, r0
      28:	e1520003 	cmp	r2, r3
      2c:	bafffffb 	blt	20 <_Z15getNumberLengthiiPi+0x14>
      30:	e12fff1e 	bx	lr

00000034 <_Z15getNumberLengthii>:
      34:	e1a03000 	mov	r3, r0
      38:	e3a00001 	mov	r0, #1
      3c:	ea000000 	b	44 <_Z15getNumberLengthii+0x10>
      40:	e1a00002 	mov	r0, r2
      44:	e0020091 	mul	r2, r1, r0
      48:	e1530002 	cmp	r3, r2
      4c:	cafffffb 	bgt	40 <_Z15getNumberLengthii+0xc>
      50:	e12fff1e 	bx	lr

00000054 <_Z15getNumberLengthi>:
      54:	e3a03001 	mov	r3, #1
      58:	ea000000 	b	60 <_Z15getNumberLengthi+0xc>
      5c:	e1a03002 	mov	r3, r2
      60:	e0832103 	add	r2, r3, r3, lsl #2
      64:	e1a02082 	lsl	r2, r2, #1
      68:	e1500002 	cmp	r0, r2
      6c:	cafffffa 	bgt	5c <_Z15getNumberLengthi+0x8>
      70:	e1a00003 	mov	r0, r3
      74:	e12fff1e 	bx	lr

00000078 <_Z6divideiiPiS_>:
      78:	e3510000 	cmp	r1, #0
      7c:	e92d00f0 	push	{r4, r5, r6, r7}
      80:	0a00001d 	beq	fc <_Z6divideiiPiS_+0x84>
      84:	e3510001 	cmp	r1, #1
      88:	05820000 	streq	r0, [r2]
      8c:	03a02000 	moveq	r2, #0
      90:	05832000 	streq	r2, [r3]
      94:	0a000018 	beq	fc <_Z6divideiiPiS_+0x84>
      98:	e3a04000 	mov	r4, #0
      9c:	e3500000 	cmp	r0, #0
      a0:	b2600000 	rsblt	r0, r0, #0
      a4:	e1500004 	cmp	r0, r4
      a8:	e5824000 	str	r4, [r2]
      ac:	e5834000 	str	r4, [r3]
      b0:	0a000011 	beq	fc <_Z6divideiiPiS_+0x84>
      b4:	e3510000 	cmp	r1, #0
      b8:	b2611000 	rsblt	r1, r1, #0
      bc:	e050c001 	subs	ip, r0, r1
      c0:	4a000010 	bmi	108 <_Z6divideiiPiS_+0x90>
      c4:	e061c00c 	rsb	ip, r1, ip
      c8:	e5925000 	ldr	r5, [r2]
      cc:	e2617000 	rsb	r7, r1, #0
      d0:	e08c6001 	add	r6, ip, r1
      d4:	ea000001 	b	e0 <_Z6divideiiPiS_+0x68>
      d8:	e09c6001 	adds	r6, ip, r1
      dc:	4a000008 	bmi	104 <_Z6divideiiPiS_+0x8c>
      e0:	e2844001 	add	r4, r4, #1
      e4:	e1540006 	cmp	r4, r6
      e8:	e1a00006 	mov	r0, r6
      ec:	e08cc007 	add	ip, ip, r7
      f0:	e2855001 	add	r5, r5, #1
      f4:	bafffff7 	blt	d8 <_Z6divideiiPiS_+0x60>
      f8:	e5825000 	str	r5, [r2]
      fc:	e8bd00f0 	pop	{r4, r5, r6, r7}
     100:	e12fff1e 	bx	lr
     104:	e5825000 	str	r5, [r2]
     108:	e5830000 	str	r0, [r3]
     10c:	eafffffa 	b	fc <_Z6divideiiPiS_+0x84>

00000110 <_Z6divideii>:
     110:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
     114:	e24dd00c 	sub	sp, sp, #12
     118:	e3a0c000 	mov	ip, #0
     11c:	e28d2004 	add	r2, sp, #4
     120:	e1a0300d 	mov	r3, sp
     124:	e58dc004 	str	ip, [sp, #4]
     128:	e58dc000 	str	ip, [sp]
     12c:	ebfffffe 	bl	78 <_Z6divideiiPiS_>
     130:	e59d0004 	ldr	r0, [sp, #4]
     134:	e28dd00c 	add	sp, sp, #12
     138:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
     13c:	e12fff1e 	bx	lr

00000140 <_Z6moduloii>:
     140:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
     144:	e24dd00c 	sub	sp, sp, #12
     148:	e3a0c000 	mov	ip, #0
     14c:	e28d2004 	add	r2, sp, #4
     150:	e1a0300d 	mov	r3, sp
     154:	e58dc004 	str	ip, [sp, #4]
     158:	e58dc000 	str	ip, [sp]
     15c:	ebfffffe 	bl	78 <_Z6divideiiPiS_>
     160:	e59d0000 	ldr	r0, [sp]
     164:	e28dd00c 	add	sp, sp, #12
     168:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
     16c:	e12fff1e 	bx	lr

00000170 <_Z5allocj>:
     170:	e59f30b0 	ldr	r3, [pc, #176]	; 228 <_Z5allocj+0xb8>
     174:	e5933000 	ldr	r3, [r3]
     178:	e5d32004 	ldrb	r2, [r3, #4]
     17c:	e3520000 	cmp	r2, #0
     180:	e92d0070 	push	{r4, r5, r6}
     184:	e1a05000 	mov	r5, r0
     188:	0a000003 	beq	19c <_Z5allocj+0x2c>
     18c:	e5933000 	ldr	r3, [r3]
     190:	e5d30004 	ldrb	r0, [r3, #4]
     194:	e3500000 	cmp	r0, #0
     198:	1afffffb 	bne	18c <_Z5allocj+0x1c>
     19c:	e5936008 	ldr	r6, [r3, #8]
     1a0:	e593100c 	ldr	r1, [r3, #12]
     1a4:	e3a04000 	mov	r4, #0
     1a8:	e0860101 	add	r0, r6, r1, lsl #2
     1ac:	e1550004 	cmp	r5, r4
     1b0:	e2836b01 	add	r6, r3, #1024	; 0x400
     1b4:	e5c34404 	strb	r4, [r3, #1028]	; 0x404
     1b8:	e5830408 	str	r0, [r3, #1032]	; 0x408
     1bc:	e583540c 	str	r5, [r3, #1036]	; 0x40c
     1c0:	0a000013 	beq	214 <_Z5allocj+0xa4>
     1c4:	e245c001 	sub	ip, r5, #1
     1c8:	e1a02000 	mov	r2, r0
     1cc:	e3550001 	cmp	r5, #1
     1d0:	e20c1001 	and	r1, ip, #1
     1d4:	e4824004 	str	r4, [r2], #4
     1d8:	e3a0c001 	mov	ip, #1
     1dc:	9a00000c 	bls	214 <_Z5allocj+0xa4>
     1e0:	e3510000 	cmp	r1, #0
     1e4:	0a000003 	beq	1f8 <_Z5allocj+0x88>
     1e8:	e3a0c002 	mov	ip, #2
     1ec:	e155000c 	cmp	r5, ip
     1f0:	e4824004 	str	r4, [r2], #4
     1f4:	9a000006 	bls	214 <_Z5allocj+0xa4>
     1f8:	e1a01002 	mov	r1, r2
     1fc:	e4814004 	str	r4, [r1], #4
     200:	e28cc002 	add	ip, ip, #2
     204:	e155000c 	cmp	r5, ip
     208:	e5824004 	str	r4, [r2, #4]
     20c:	e2812004 	add	r2, r1, #4
     210:	8afffff8 	bhi	1f8 <_Z5allocj+0x88>
     214:	e3a02001 	mov	r2, #1
     218:	e5836000 	str	r6, [r3]
     21c:	e5c32004 	strb	r2, [r3, #4]
     220:	e8bd0070 	pop	{r4, r5, r6}
     224:	e12fff1e 	bx	lr
     228:	00000000 	andeq	r0, r0, r0

0000022c <_Z15init_page_tablev>:
     22c:	e59f1018 	ldr	r1, [pc, #24]	; 24c <_Z15init_page_tablev+0x20>
     230:	e3a0380f 	mov	r3, #983040	; 0xf0000
     234:	e3a00000 	mov	r0, #0
     238:	e3a02aff 	mov	r2, #1044480	; 0xff000
     23c:	e5813000 	str	r3, [r1]
     240:	e5c30004 	strb	r0, [r3, #4]
     244:	e5832008 	str	r2, [r3, #8]
     248:	e12fff1e 	bx	lr
     24c:	00000000 	andeq	r0, r0, r0

00000250 <_Z10irq_enablev>:
     250:	e59f3018 	ldr	r3, [pc, #24]	; 270 <_Z10irq_enablev+0x20>
     254:	e3e01000 	mvn	r1, #0
     258:	e3a020ff 	mov	r2, #255	; 0xff
     25c:	e5831840 	str	r1, [r3, #2112]	; 0x840
     260:	e3a00001 	mov	r0, #1
     264:	e5831850 	str	r1, [r3, #2128]	; 0x850
     268:	e5832860 	str	r2, [r3, #2144]	; 0x860
     26c:	e12fff1e 	bx	lr
     270:	2000b000 	andcs	fp, r0, r0

00000274 <_Z8irq_testv>:
     274:	ef0000ff 	svc	0x000000ff
     278:	e12fff1e 	bx	lr

0000027c <_ZN12RaspberryLib5GET32Ej>:
     27c:	e5900000 	ldr	r0, [r0]
     280:	e12fff1e 	bx	lr

00000284 <_ZN12RaspberryLib5PUT32Ejj>:
     284:	e5801000 	str	r1, [r0]
     288:	e12fff1e 	bx	lr

0000028c <_ZN12RaspberryLib4GET4Ej>:
     28c:	e5d00000 	ldrb	r0, [r0]
     290:	e12fff1e 	bx	lr

00000294 <_ZN12RaspberryLib4PUT4Ejc>:
     294:	e5c01000 	strb	r1, [r0]
     298:	e12fff1e 	bx	lr

0000029c <_ZN12RaspberryLib7SetGPIOEjj>:
     29c:	e59f2094 	ldr	r2, [pc, #148]	; 338 <_ZN12RaspberryLib7SetGPIOEjj+0x9c>
     2a0:	e3510001 	cmp	r1, #1
     2a4:	e59f3090 	ldr	r3, [pc, #144]	; 33c <_ZN12RaspberryLib7SetGPIOEjj+0xa0>
     2a8:	11a03002 	movne	r3, r2
     2ac:	e350000a 	cmp	r0, #10
     2b0:	959f1088 	ldrls	r1, [pc, #136]	; 340 <_ZN12RaspberryLib7SetGPIOEjj+0xa4>
     2b4:	93a0c001 	movls	ip, #1
     2b8:	9a000018 	bls	320 <_ZN12RaspberryLib7SetGPIOEjj+0x84>
     2bc:	e59f2080 	ldr	r2, [pc, #128]	; 344 <_ZN12RaspberryLib7SetGPIOEjj+0xa8>
     2c0:	e240100b 	sub	r1, r0, #11
     2c4:	e082c291 	umull	ip, r2, r1, r2
     2c8:	e240000a 	sub	r0, r0, #10
     2cc:	e1a011a2 	lsr	r1, r2, #3
     2d0:	e350000a 	cmp	r0, #10
     2d4:	e2012001 	and	r2, r1, #1
     2d8:	e3a0c001 	mov	ip, #1
     2dc:	9a000009 	bls	308 <_ZN12RaspberryLib7SetGPIOEjj+0x6c>
     2e0:	e3520000 	cmp	r2, #0
     2e4:	0a000003 	beq	2f8 <_ZN12RaspberryLib7SetGPIOEjj+0x5c>
     2e8:	e240000a 	sub	r0, r0, #10
     2ec:	e350000a 	cmp	r0, #10
     2f0:	e3a0c002 	mov	ip, #2
     2f4:	9a000003 	bls	308 <_ZN12RaspberryLib7SetGPIOEjj+0x6c>
     2f8:	e2400014 	sub	r0, r0, #20
     2fc:	e350000a 	cmp	r0, #10
     300:	e28cc002 	add	ip, ip, #2
     304:	8afffffb 	bhi	2f8 <_ZN12RaspberryLib7SetGPIOEjj+0x5c>
     308:	e1a0110c 	lsl	r1, ip, #2
     30c:	e3a02001 	mov	r2, #1
     310:	e1a0c20c 	lsl	ip, ip, #4
     314:	e1a0cc12 	lsl	ip, r2, ip
     318:	e2811202 	add	r1, r1, #536870912	; 0x20000000
     31c:	e2811602 	add	r1, r1, #2097152	; 0x200000
     320:	e0800080 	add	r0, r0, r0, lsl #1
     324:	e3a02001 	mov	r2, #1
     328:	e1a00012 	lsl	r0, r2, r0
     32c:	e5810000 	str	r0, [r1]
     330:	e583c000 	str	ip, [r3]
     334:	e12fff1e 	bx	lr
     338:	2020001c 	eorcs	r0, r0, ip, lsl r0
     33c:	20200028 	eorcs	r0, r0, r8, lsr #32
     340:	20200000 	eorcs	r0, r0, r0
     344:	cccccccd 	stclgt	12, cr12, [ip], {205}	; 0xcd

00000348 <_ZN12RaspberryLib12CheckCounterEv>:
     348:	e59f3004 	ldr	r3, [pc, #4]	; 354 <_ZN12RaspberryLib12CheckCounterEv+0xc>
     34c:	e5930004 	ldr	r0, [r3, #4]
     350:	e12fff1e 	bx	lr
     354:	20003000 	andcs	r3, r0, r0

00000358 <_ZN12RaspberryLib9WaitQuickEj>:
     358:	e59f3014 	ldr	r3, [pc, #20]	; 374 <_ZN12RaspberryLib9WaitQuickEj+0x1c>
     35c:	e5932004 	ldr	r2, [r3, #4]
     360:	e0802002 	add	r2, r0, r2
     364:	e5931004 	ldr	r1, [r3, #4]
     368:	e1520001 	cmp	r2, r1
     36c:	8afffffc 	bhi	364 <_ZN12RaspberryLib9WaitQuickEj+0xc>
     370:	e12fff1e 	bx	lr
     374:	20003000 	andcs	r3, r0, r0

00000378 <_ZN12RaspberryLib4WaitEj>:
     378:	e59f301c 	ldr	r3, [pc, #28]	; 39c <_ZN12RaspberryLib4WaitEj+0x24>
     37c:	e0801100 	add	r1, r0, r0, lsl #2
     380:	e5932004 	ldr	r2, [r3, #4]
     384:	e0810101 	add	r0, r1, r1, lsl #2
     388:	e0821280 	add	r1, r2, r0, lsl #5
     38c:	e593c004 	ldr	ip, [r3, #4]
     390:	e151000c 	cmp	r1, ip
     394:	8afffffc 	bhi	38c <_ZN12RaspberryLib4WaitEj+0x14>
     398:	e12fff1e 	bx	lr
     39c:	20003000 	andcs	r3, r0, r0

000003a0 <_ZN12RaspberryLib5BlinkEjj>:
     3a0:	e92d40f8 	push	{r3, r4, r5, r6, r7, lr}
     3a4:	e2505000 	subs	r5, r0, #0
     3a8:	0a000016 	beq	408 <_ZN12RaspberryLib5BlinkEjj+0x68>
     3ac:	e0810101 	add	r0, r1, r1, lsl #2
     3b0:	e59f4058 	ldr	r4, [pc, #88]	; 410 <_ZN12RaspberryLib5BlinkEjj+0x70>
     3b4:	e0801100 	add	r1, r0, r0, lsl #2
     3b8:	e1a06281 	lsl	r6, r1, #5
     3bc:	e1a07004 	mov	r7, r4
     3c0:	e3a00010 	mov	r0, #16
     3c4:	e3a01001 	mov	r1, #1
     3c8:	ebfffffe 	bl	29c <_ZN12RaspberryLib7SetGPIOEjj>
     3cc:	e5942004 	ldr	r2, [r4, #4]
     3d0:	e0862002 	add	r2, r6, r2
     3d4:	e5943004 	ldr	r3, [r4, #4]
     3d8:	e1520003 	cmp	r2, r3
     3dc:	8afffffc 	bhi	3d4 <_ZN12RaspberryLib5BlinkEjj+0x34>
     3e0:	e3a00010 	mov	r0, #16
     3e4:	e3a01000 	mov	r1, #0
     3e8:	ebfffffe 	bl	29c <_ZN12RaspberryLib7SetGPIOEjj>
     3ec:	e597c004 	ldr	ip, [r7, #4]
     3f0:	e086200c 	add	r2, r6, ip
     3f4:	e594e004 	ldr	lr, [r4, #4]
     3f8:	e152000e 	cmp	r2, lr
     3fc:	8afffffc 	bhi	3f4 <_ZN12RaspberryLib5BlinkEjj+0x54>
     400:	e2555001 	subs	r5, r5, #1
     404:	1affffed 	bne	3c0 <_ZN12RaspberryLib5BlinkEjj+0x20>
     408:	e8bd40f8 	pop	{r3, r4, r5, r6, r7, lr}
     40c:	e12fff1e 	bx	lr
     410:	20003000 	andcs	r3, r0, r0

00000414 <_ZN12RaspberryLib7PiFaultEPKc>:
     414:	e3a00004 	mov	r0, #4
     418:	e3a010c8 	mov	r1, #200	; 0xc8
     41c:	eafffffe 	b	3a0 <_ZN12RaspberryLib5BlinkEjj>

00000420 <_ZN12RaspberryLib12MailboxWriteEcj>:
     420:	e59f303c 	ldr	r3, [pc, #60]	; 464 <_ZN12RaspberryLib12MailboxWriteEcj+0x44>
     424:	e5932898 	ldr	r2, [r3, #2200]	; 0x898
     428:	e3520000 	cmp	r2, #0
     42c:	bafffffc 	blt	424 <_ZN12RaspberryLib12MailboxWriteEcj+0x4>
     430:	ee07cf15 	mcr	15, 0, ip, cr7, cr5, {0}
     434:	ee07cfd5 	mcr	15, 0, ip, cr7, cr5, {6}
     438:	ee07cf9a 	mcr	15, 0, ip, cr7, cr10, {4}
     43c:	ee07cf95 	mcr	15, 0, ip, cr7, cr5, {4}
     440:	e59f301c 	ldr	r3, [pc, #28]	; 464 <_ZN12RaspberryLib12MailboxWriteEcj+0x44>
     444:	e3c1100f 	bic	r1, r1, #15
     448:	e1810000 	orr	r0, r1, r0
     44c:	e58308a0 	str	r0, [r3, #2208]	; 0x8a0
     450:	ee07cf15 	mcr	15, 0, ip, cr7, cr5, {0}
     454:	ee07cfd5 	mcr	15, 0, ip, cr7, cr5, {6}
     458:	ee07cf9a 	mcr	15, 0, ip, cr7, cr10, {4}
     45c:	ee07cf95 	mcr	15, 0, ip, cr7, cr5, {4}
     460:	e12fff1e 	bx	lr
     464:	2000b000 	andcs	fp, r0, r0

00000468 <_ZN12RaspberryLib12MailboxCheckEc>:
     468:	e92d4010 	push	{r4, lr}
     46c:	e59f2068 	ldr	r2, [pc, #104]	; 4dc <_ZN12RaspberryLib12MailboxCheckEc+0x74>
     470:	e59f4068 	ldr	r4, [pc, #104]	; 4e0 <_ZN12RaspberryLib12MailboxCheckEc+0x78>
     474:	e3a01000 	mov	r1, #0
     478:	e5923898 	ldr	r3, [r2, #2200]	; 0x898
     47c:	e3130101 	tst	r3, #1073741824	; 0x40000000
     480:	1a00000e 	bne	4c0 <_ZN12RaspberryLib12MailboxCheckEc+0x58>
     484:	ee07cf15 	mcr	15, 0, ip, cr7, cr5, {0}
     488:	ee07cfd5 	mcr	15, 0, ip, cr7, cr5, {6}
     48c:	ee07cf9a 	mcr	15, 0, ip, cr7, cr10, {4}
     490:	ee07cf95 	mcr	15, 0, ip, cr7, cr5, {4}
     494:	e5923880 	ldr	r3, [r2, #2176]	; 0x880
     498:	ee07cf15 	mcr	15, 0, ip, cr7, cr5, {0}
     49c:	ee07cfd5 	mcr	15, 0, ip, cr7, cr5, {6}
     4a0:	ee07cf9a 	mcr	15, 0, ip, cr7, cr10, {4}
     4a4:	ee07cf95 	mcr	15, 0, ip, cr7, cr5, {4}
     4a8:	e203c00f 	and	ip, r3, #15
     4ac:	e15c0000 	cmp	ip, r0
     4b0:	1afffff0 	bne	478 <_ZN12RaspberryLib12MailboxCheckEc+0x10>
     4b4:	e3c3000f 	bic	r0, r3, #15
     4b8:	e8bd4010 	pop	{r4, lr}
     4bc:	e12fff1e 	bx	lr
     4c0:	e1510004 	cmp	r1, r4
     4c4:	92811001 	addls	r1, r1, #1
     4c8:	9affffea 	bls	478 <_ZN12RaspberryLib12MailboxCheckEc+0x10>
     4cc:	e59f0010 	ldr	r0, [pc, #16]	; 4e4 <_ZN12RaspberryLib12MailboxCheckEc+0x7c>
     4d0:	ebfffffe 	bl	414 <_ZN12RaspberryLib7PiFaultEPKc>
     4d4:	e3e00000 	mvn	r0, #0
     4d8:	eafffff6 	b	4b8 <_ZN12RaspberryLib12MailboxCheckEc+0x50>
     4dc:	2000b000 	andcs	fp, r0, r0
     4e0:	000fffff 	strdeq	pc, [pc], -pc	; <UNPREDICTABLE>
     4e4:	00000000 	andeq	r0, r0, r0

000004e8 <_ZN12RaspberryLib18AcquireFrameBufferEjj>:
     4e8:	e3a03a02 	mov	r3, #8192	; 0x2000
     4ec:	e1a0c001 	mov	ip, r1
     4f0:	e92d4010 	push	{r4, lr}
     4f4:	e3a02000 	mov	r2, #0
     4f8:	e1a0e000 	mov	lr, r0
     4fc:	e583c004 	str	ip, [r3, #4]
     500:	e583c00c 	str	ip, [r3, #12]
     504:	e3a0c018 	mov	ip, #24
     508:	e3a00001 	mov	r0, #1
     50c:	e59f10e4 	ldr	r1, [pc, #228]	; 5f8 <_ZN12RaspberryLib18AcquireFrameBufferEjj+0x110>
     510:	e583e000 	str	lr, [r3]
     514:	e583e008 	str	lr, [r3, #8]
     518:	e5832010 	str	r2, [r3, #16]
     51c:	e583c014 	str	ip, [r3, #20]
     520:	e5832018 	str	r2, [r3, #24]
     524:	e583201c 	str	r2, [r3, #28]
     528:	e5832020 	str	r2, [r3, #32]
     52c:	e5832024 	str	r2, [r3, #36]	; 0x24
     530:	e5c32028 	strb	r2, [r3, #40]	; 0x28
     534:	ebfffffe 	bl	420 <_ZN12RaspberryLib12MailboxWriteEcj>
     538:	e3a00001 	mov	r0, #1
     53c:	ebfffffe 	bl	468 <_ZN12RaspberryLib12MailboxCheckEc>
     540:	e3500000 	cmp	r0, #0
     544:	1a00000d 	bne	580 <_ZN12RaspberryLib18AcquireFrameBufferEjj+0x98>
     548:	e3a02a02 	mov	r2, #8192	; 0x2000
     54c:	e5923020 	ldr	r3, [r2, #32]
     550:	e3530000 	cmp	r3, #0
     554:	0a000024 	beq	5ec <_ZN12RaspberryLib18AcquireFrameBufferEjj+0x104>
     558:	e5921010 	ldr	r1, [r2, #16]
     55c:	e3510000 	cmp	r1, #0
     560:	0a00001e 	beq	5e0 <_ZN12RaspberryLib18AcquireFrameBufferEjj+0xf8>
     564:	e3530101 	cmp	r3, #1073741824	; 0x40000000
     568:	e3a0c001 	mov	ip, #1
     56c:	82833103 	addhi	r3, r3, #-1073741824	; 0xc0000000
     570:	e3a00a02 	mov	r0, #8192	; 0x2000
     574:	e5c2c028 	strb	ip, [r2, #40]	; 0x28
     578:	e5803020 	str	r3, [r0, #32]
     57c:	ea000014 	b	5d4 <_ZN12RaspberryLib18AcquireFrameBufferEjj+0xec>
     580:	e3a00001 	mov	r0, #1
     584:	ebfffffe 	bl	468 <_ZN12RaspberryLib12MailboxCheckEc>
     588:	e3500000 	cmp	r0, #0
     58c:	e59f4068 	ldr	r4, [pc, #104]	; 5fc <_ZN12RaspberryLib18AcquireFrameBufferEjj+0x114>
     590:	e3a00001 	mov	r0, #1
     594:	0a00000a 	beq	5c4 <_ZN12RaspberryLib18AcquireFrameBufferEjj+0xdc>
     598:	ebfffffe 	bl	468 <_ZN12RaspberryLib12MailboxCheckEc>
     59c:	e3500000 	cmp	r0, #0
     5a0:	e2444001 	sub	r4, r4, #1
     5a4:	0a000006 	beq	5c4 <_ZN12RaspberryLib18AcquireFrameBufferEjj+0xdc>
     5a8:	e2544001 	subs	r4, r4, #1
     5ac:	3affffe5 	bcc	548 <_ZN12RaspberryLib18AcquireFrameBufferEjj+0x60>
     5b0:	e3a00001 	mov	r0, #1
     5b4:	ebfffffe 	bl	468 <_ZN12RaspberryLib12MailboxCheckEc>
     5b8:	e3500000 	cmp	r0, #0
     5bc:	e3a00001 	mov	r0, #1
     5c0:	1afffff4 	bne	598 <_ZN12RaspberryLib18AcquireFrameBufferEjj+0xb0>
     5c4:	e3540000 	cmp	r4, #0
     5c8:	1affffde 	bne	548 <_ZN12RaspberryLib18AcquireFrameBufferEjj+0x60>
     5cc:	e59f002c 	ldr	r0, [pc, #44]	; 600 <_ZN12RaspberryLib18AcquireFrameBufferEjj+0x118>
     5d0:	ebfffffe 	bl	414 <_ZN12RaspberryLib7PiFaultEPKc>
     5d4:	e3a00a02 	mov	r0, #8192	; 0x2000
     5d8:	e8bd4010 	pop	{r4, lr}
     5dc:	e12fff1e 	bx	lr
     5e0:	e59f001c 	ldr	r0, [pc, #28]	; 604 <_ZN12RaspberryLib18AcquireFrameBufferEjj+0x11c>
     5e4:	ebfffffe 	bl	414 <_ZN12RaspberryLib7PiFaultEPKc>
     5e8:	eafffff9 	b	5d4 <_ZN12RaspberryLib18AcquireFrameBufferEjj+0xec>
     5ec:	e59f0014 	ldr	r0, [pc, #20]	; 608 <_ZN12RaspberryLib18AcquireFrameBufferEjj+0x120>
     5f0:	ebfffffe 	bl	414 <_ZN12RaspberryLib7PiFaultEPKc>
     5f4:	eafffff6 	b	5d4 <_ZN12RaspberryLib18AcquireFrameBufferEjj+0xec>
     5f8:	40002000 	andmi	r2, r0, r0
     5fc:	0000270f 	andeq	r2, r0, pc, lsl #14
     600:	0000002c 	andeq	r0, r0, ip, lsr #32
     604:	000000c4 	andeq	r0, r0, r4, asr #1
     608:	00000074 	andeq	r0, r0, r4, ror r0

0000060c <_ZN11gpu2dCanvas15initFrameBufferEv>:
     60c:	e5901004 	ldr	r1, [r0, #4]
     610:	e92d4010 	push	{r4, lr}
     614:	e2811101 	add	r1, r1, #1073741824	; 0x40000000
     618:	e1a04000 	mov	r4, r0
     61c:	e3a00001 	mov	r0, #1
     620:	ebfffffe 	bl	420 <_ZN12RaspberryLib12MailboxWriteEcj>
     624:	e3a00001 	mov	r0, #1
     628:	ebfffffe 	bl	468 <_ZN12RaspberryLib12MailboxCheckEc>
     62c:	e3500000 	cmp	r0, #0
     630:	1afffffb 	bne	624 <_ZN11gpu2dCanvas15initFrameBufferEv+0x18>
     634:	e5943004 	ldr	r3, [r4, #4]
     638:	e5930020 	ldr	r0, [r3, #32]
     63c:	e3500000 	cmp	r0, #0
     640:	0a000009 	beq	66c <_ZN11gpu2dCanvas15initFrameBufferEv+0x60>
     644:	e5932010 	ldr	r2, [r3, #16]
     648:	e3520000 	cmp	r2, #0
     64c:	01a00002 	moveq	r0, r2
     650:	0a000005 	beq	66c <_ZN11gpu2dCanvas15initFrameBufferEv+0x60>
     654:	e3500101 	cmp	r0, #1073741824	; 0x40000000
     658:	82800103 	addhi	r0, r0, #-1073741824	; 0xc0000000
     65c:	e3a0c001 	mov	ip, #1
     660:	e5830020 	str	r0, [r3, #32]
     664:	e5c4c000 	strb	ip, [r4]
     668:	e1a0000c 	mov	r0, ip
     66c:	e8bd4010 	pop	{r4, lr}
     670:	e12fff1e 	bx	lr

00000674 <_ZN11gpu2dCanvasC1Eb>:
     674:	e92d4038 	push	{r3, r4, r5, lr}
     678:	e1a04000 	mov	r4, r0
     67c:	e5c41002 	strb	r1, [r4, #2]
     680:	e3a05a02 	mov	r5, #8192	; 0x2000
     684:	e3a0cb01 	mov	ip, #1024	; 0x400
     688:	e3510000 	cmp	r1, #0
     68c:	e3a01000 	mov	r1, #0
     690:	e5845004 	str	r5, [r4, #4]
     694:	e5c41000 	strb	r1, [r4]
     698:	e3a00c03 	mov	r0, #768	; 0x300
     69c:	e585c000 	str	ip, [r5]
     6a0:	e585c008 	str	ip, [r5, #8]
     6a4:	13a0cc06 	movne	ip, #1536	; 0x600
     6a8:	e3a03a02 	mov	r3, #8192	; 0x2000
     6ac:	0585000c 	streq	r0, [r5, #12]
     6b0:	1585c00c 	strne	ip, [r5, #12]
     6b4:	e5850004 	str	r0, [r5, #4]
     6b8:	e3a02018 	mov	r2, #24
     6bc:	e3a05000 	mov	r5, #0
     6c0:	e1a00004 	mov	r0, r4
     6c4:	e5832014 	str	r2, [r3, #20]
     6c8:	e5835018 	str	r5, [r3, #24]
     6cc:	e583501c 	str	r5, [r3, #28]
     6d0:	e5835010 	str	r5, [r3, #16]
     6d4:	e5835020 	str	r5, [r3, #32]
     6d8:	e5835024 	str	r5, [r3, #36]	; 0x24
     6dc:	ebfffffe 	bl	60c <_ZN11gpu2dCanvas15initFrameBufferEv>
     6e0:	e1500005 	cmp	r0, r5
     6e4:	15c45001 	strbne	r5, [r4, #1]
     6e8:	e1a00004 	mov	r0, r4
     6ec:	e8bd4038 	pop	{r3, r4, r5, lr}
     6f0:	e12fff1e 	bx	lr

000006f4 <_ZN11gpu2dCanvasC1Ev>:
     6f4:	e92d4010 	push	{r4, lr}
     6f8:	e24dd008 	sub	sp, sp, #8
     6fc:	e1a04000 	mov	r4, r0
     700:	e3a01001 	mov	r1, #1
     704:	e1a0000d 	mov	r0, sp
     708:	ebfffffe 	bl	674 <_ZN11gpu2dCanvasC1Eb>
     70c:	e1a00004 	mov	r0, r4
     710:	e28dd008 	add	sp, sp, #8
     714:	e8bd4010 	pop	{r4, lr}
     718:	e12fff1e 	bx	lr

0000071c <_ZN11gpu2dCanvas4DrawEv>:
     71c:	e5d03000 	ldrb	r3, [r0]
     720:	e3530000 	cmp	r3, #0
     724:	e92d4010 	push	{r4, lr}
     728:	e1a04000 	mov	r4, r0
     72c:	0a00000d 	beq	768 <_ZN11gpu2dCanvas4DrawEv+0x4c>
     730:	e5d00002 	ldrb	r0, [r0, #2]
     734:	e3500000 	cmp	r0, #0
     738:	0a00000a 	beq	768 <_ZN11gpu2dCanvas4DrawEv+0x4c>
     73c:	e5d4e001 	ldrb	lr, [r4, #1]
     740:	e594c004 	ldr	ip, [r4, #4]
     744:	e35e0000 	cmp	lr, #0
     748:	059c2004 	ldreq	r2, [ip, #4]
     74c:	13a02000 	movne	r2, #0
     750:	e58c201c 	str	r2, [ip, #28]
     754:	e1a00004 	mov	r0, r4
     758:	ebfffffe 	bl	60c <_ZN11gpu2dCanvas15initFrameBufferEv>
     75c:	e5d42001 	ldrb	r2, [r4, #1]
     760:	e2221001 	eor	r1, r2, #1
     764:	e5c41001 	strb	r1, [r4, #1]
     768:	e8bd4010 	pop	{r4, lr}
     76c:	e12fff1e 	bx	lr

00000770 <_ZN11gpu2dCanvas5ClearEj>:
     770:	e5d03000 	ldrb	r3, [r0]
     774:	e3530000 	cmp	r3, #0
     778:	e92d05f0 	push	{r4, r5, r6, r7, r8, sl}
     77c:	0a000029 	beq	828 <_ZN11gpu2dCanvas5ClearEj+0xb8>
     780:	e5d05001 	ldrb	r5, [r0, #1]
     784:	e3550000 	cmp	r5, #0
     788:	0a000028 	beq	830 <_ZN11gpu2dCanvas5ClearEj+0xc0>
     78c:	e5903004 	ldr	r3, [r0, #4]
     790:	e5932004 	ldr	r2, [r3, #4]
     794:	e3a0a000 	mov	sl, #0
     798:	e20178ff 	and	r7, r1, #16711680	; 0xff0000
     79c:	e2016cff 	and	r6, r1, #65280	; 0xff00
     7a0:	e3520000 	cmp	r2, #0
     7a4:	e1a05827 	lsr	r5, r7, #16
     7a8:	e1a06426 	lsr	r6, r6, #8
     7ac:	e20170ff 	and	r7, r1, #255	; 0xff
     7b0:	13a08000 	movne	r8, #0
     7b4:	0a00001b 	beq	828 <_ZN11gpu2dCanvas5ClearEj+0xb8>
     7b8:	e5932000 	ldr	r2, [r3]
     7bc:	e3520000 	cmp	r2, #0
     7c0:	13a01000 	movne	r1, #0
     7c4:	1088400a 	addne	r4, r8, sl
     7c8:	11a0c001 	movne	ip, r1
     7cc:	0a000011 	beq	818 <_ZN11gpu2dCanvas5ClearEj+0xa8>
     7d0:	e5932010 	ldr	r2, [r3, #16]
     7d4:	e0221294 	mla	r2, r4, r2, r1
     7d8:	e5933020 	ldr	r3, [r3, #32]
     7dc:	e7c25003 	strb	r5, [r2, r3]
     7e0:	e5903004 	ldr	r3, [r0, #4]
     7e4:	e5933020 	ldr	r3, [r3, #32]
     7e8:	e0823003 	add	r3, r2, r3
     7ec:	e5c36001 	strb	r6, [r3, #1]
     7f0:	e5903004 	ldr	r3, [r0, #4]
     7f4:	e5933020 	ldr	r3, [r3, #32]
     7f8:	e0823003 	add	r3, r2, r3
     7fc:	e5c37002 	strb	r7, [r3, #2]
     800:	e5903004 	ldr	r3, [r0, #4]
     804:	e5932000 	ldr	r2, [r3]
     808:	e28cc001 	add	ip, ip, #1
     80c:	e152000c 	cmp	r2, ip
     810:	e2811003 	add	r1, r1, #3
     814:	8affffed 	bhi	7d0 <_ZN11gpu2dCanvas5ClearEj+0x60>
     818:	e5932004 	ldr	r2, [r3, #4]
     81c:	e2888001 	add	r8, r8, #1
     820:	e1520008 	cmp	r2, r8
     824:	8affffe3 	bhi	7b8 <_ZN11gpu2dCanvas5ClearEj+0x48>
     828:	e8bd05f0 	pop	{r4, r5, r6, r7, r8, sl}
     82c:	e12fff1e 	bx	lr
     830:	e5d0a002 	ldrb	sl, [r0, #2]
     834:	e5903004 	ldr	r3, [r0, #4]
     838:	e35a0000 	cmp	sl, #0
     83c:	1593a004 	ldrne	sl, [r3, #4]
     840:	05932004 	ldreq	r2, [r3, #4]
     844:	11a0200a 	movne	r2, sl
     848:	eaffffd2 	b	798 <_ZN11gpu2dCanvas5ClearEj+0x28>

0000084c <_ZN11gpu2dCanvas4syncEv>:
     84c:	e5d03002 	ldrb	r3, [r0, #2]
     850:	e3530000 	cmp	r3, #0
     854:	e92d00f0 	push	{r4, r5, r6, r7}
     858:	0a000021 	beq	8e4 <_ZN11gpu2dCanvas4syncEv+0x98>
     85c:	e5903004 	ldr	r3, [r0, #4]
     860:	e5935004 	ldr	r5, [r3, #4]
     864:	e3550000 	cmp	r5, #0
     868:	e5d06001 	ldrb	r6, [r0, #1]
     86c:	13a04000 	movne	r4, #0
     870:	0a00001b 	beq	8e4 <_ZN11gpu2dCanvas4syncEv+0x98>
     874:	e5932000 	ldr	r2, [r3]
     878:	e3520000 	cmp	r2, #0
     87c:	13a02000 	movne	r2, #0
     880:	11a01002 	movne	r1, r2
     884:	1a000001 	bne	890 <_ZN11gpu2dCanvas4syncEv+0x44>
     888:	ea000012 	b	8d8 <_ZN11gpu2dCanvas4syncEv+0x8c>
     88c:	e5935004 	ldr	r5, [r3, #4]
     890:	e593c020 	ldr	ip, [r3, #32]
     894:	e5933010 	ldr	r3, [r3, #16]
     898:	e0855004 	add	r5, r5, r4
     89c:	e082700c 	add	r7, r2, ip
     8a0:	e02cc493 	mla	ip, r3, r4, ip
     8a4:	e0030395 	mul	r3, r5, r3
     8a8:	e3560000 	cmp	r6, #0
     8ac:	17d2c00c 	ldrbne	ip, [r2, ip]
     8b0:	07d73003 	ldrbeq	r3, [r7, r3]
     8b4:	17c7c003 	strbne	ip, [r7, r3]
     8b8:	07c2300c 	strbeq	r3, [r2, ip]
     8bc:	e5903004 	ldr	r3, [r0, #4]
     8c0:	e593c000 	ldr	ip, [r3]
     8c4:	e2811001 	add	r1, r1, #1
     8c8:	e15c0001 	cmp	ip, r1
     8cc:	e2822003 	add	r2, r2, #3
     8d0:	8affffed 	bhi	88c <_ZN11gpu2dCanvas4syncEv+0x40>
     8d4:	e5935004 	ldr	r5, [r3, #4]
     8d8:	e2844001 	add	r4, r4, #1
     8dc:	e1540005 	cmp	r4, r5
     8e0:	3affffe3 	bcc	874 <_ZN11gpu2dCanvas4syncEv+0x28>
     8e4:	e8bd00f0 	pop	{r4, r5, r6, r7}
     8e8:	e12fff1e 	bx	lr

000008ec <_ZN11gpu2dCanvas8setPixelEjjj>:
     8ec:	e5d0c001 	ldrb	ip, [r0, #1]
     8f0:	e35c0000 	cmp	ip, #0
     8f4:	e92d0030 	push	{r4, r5}
     8f8:	1a000015 	bne	954 <_ZN11gpu2dCanvas8setPixelEjjj+0x68>
     8fc:	e5d05002 	ldrb	r5, [r0, #2]
     900:	e590c004 	ldr	ip, [r0, #4]
     904:	e3550000 	cmp	r5, #0
     908:	159c5004 	ldrne	r5, [ip, #4]
     90c:	e59c4010 	ldr	r4, [ip, #16]
     910:	e0852002 	add	r2, r5, r2
     914:	e0811081 	add	r1, r1, r1, lsl #1
     918:	e0211294 	mla	r1, r4, r2, r1
     91c:	e59c2020 	ldr	r2, [ip, #32]
     920:	e1a0c823 	lsr	ip, r3, #16
     924:	e7c1c002 	strb	ip, [r1, r2]
     928:	e590c004 	ldr	ip, [r0, #4]
     92c:	e59c2020 	ldr	r2, [ip, #32]
     930:	e1a0c423 	lsr	ip, r3, #8
     934:	e0812002 	add	r2, r1, r2
     938:	e5c2c001 	strb	ip, [r2, #1]
     93c:	e5900004 	ldr	r0, [r0, #4]
     940:	e5902020 	ldr	r2, [r0, #32]
     944:	e0811002 	add	r1, r1, r2
     948:	e5c13002 	strb	r3, [r1, #2]
     94c:	e8bd0030 	pop	{r4, r5}
     950:	e12fff1e 	bx	lr
     954:	e590c004 	ldr	ip, [r0, #4]
     958:	e3a05000 	mov	r5, #0
     95c:	eaffffea 	b	90c <_ZN11gpu2dCanvas8setPixelEjjj+0x20>

00000960 <_ZN11gpu2dCanvas8DrawLineEiiiij>:
     960:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
     964:	e1530001 	cmp	r3, r1
     968:	e24dd00c 	sub	sp, sp, #12
     96c:	e1a05001 	mov	r5, r1
     970:	e1a0a003 	mov	sl, r3
     974:	e1a07000 	mov	r7, r0
     978:	e1a04002 	mov	r4, r2
     97c:	e59d8034 	ldr	r8, [sp, #52]	; 0x34
     980:	da000039 	ble	a6c <_ZN11gpu2dCanvas8DrawLineEiiiij+0x10c>
     984:	e59d6030 	ldr	r6, [sp, #48]	; 0x30
     988:	e062c006 	rsb	ip, r2, r6
     98c:	e0613003 	rsb	r3, r1, r3
     990:	e1a0b08c 	lsl	fp, ip, #1
     994:	e1e0e001 	mvn	lr, r1
     998:	e063900c 	rsb	r9, r3, ip
     99c:	e063600b 	rsb	r6, r3, fp
     9a0:	e08e300a 	add	r3, lr, sl
     9a4:	e203c001 	and	ip, r3, #1
     9a8:	e3560000 	cmp	r6, #0
     9ac:	e1a09089 	lsl	r9, r9, #1
     9b0:	e58dc004 	str	ip, [sp, #4]
     9b4:	da00003d 	ble	ab0 <_ZN11gpu2dCanvas8DrawLineEiiiij+0x150>
     9b8:	e2824001 	add	r4, r2, #1
     9bc:	e1a02004 	mov	r2, r4
     9c0:	e1a03008 	mov	r3, r8
     9c4:	ebfffffe 	bl	8ec <_ZN11gpu2dCanvas8setPixelEjjj>
     9c8:	e0866009 	add	r6, r6, r9
     9cc:	e2855001 	add	r5, r5, #1
     9d0:	e15a0005 	cmp	sl, r5
     9d4:	da000024 	ble	a6c <_ZN11gpu2dCanvas8DrawLineEiiiij+0x10c>
     9d8:	e59d0004 	ldr	r0, [sp, #4]
     9dc:	e3500000 	cmp	r0, #0
     9e0:	0a00000b 	beq	a14 <_ZN11gpu2dCanvas8DrawLineEiiiij+0xb4>
     9e4:	e3560000 	cmp	r6, #0
     9e8:	da000022 	ble	a78 <_ZN11gpu2dCanvas8DrawLineEiiiij+0x118>
     9ec:	e2844001 	add	r4, r4, #1
     9f0:	e1a00007 	mov	r0, r7
     9f4:	e1a01005 	mov	r1, r5
     9f8:	e1a02004 	mov	r2, r4
     9fc:	e1a03008 	mov	r3, r8
     a00:	ebfffffe 	bl	8ec <_ZN11gpu2dCanvas8setPixelEjjj>
     a04:	e0866009 	add	r6, r6, r9
     a08:	e2855001 	add	r5, r5, #1
     a0c:	e15a0005 	cmp	sl, r5
     a10:	da000015 	ble	a6c <_ZN11gpu2dCanvas8DrawLineEiiiij+0x10c>
     a14:	e3560000 	cmp	r6, #0
     a18:	da00001d 	ble	a94 <_ZN11gpu2dCanvas8DrawLineEiiiij+0x134>
     a1c:	e2844001 	add	r4, r4, #1
     a20:	e1a00007 	mov	r0, r7
     a24:	e1a01005 	mov	r1, r5
     a28:	e1a02004 	mov	r2, r4
     a2c:	e1a03008 	mov	r3, r8
     a30:	ebfffffe 	bl	8ec <_ZN11gpu2dCanvas8setPixelEjjj>
     a34:	e0866009 	add	r6, r6, r9
     a38:	e2855001 	add	r5, r5, #1
     a3c:	e3560000 	cmp	r6, #0
     a40:	e1a00007 	mov	r0, r7
     a44:	e1a03008 	mov	r3, r8
     a48:	e1a01005 	mov	r1, r5
     a4c:	da000009 	ble	a78 <_ZN11gpu2dCanvas8DrawLineEiiiij+0x118>
     a50:	e2844001 	add	r4, r4, #1
     a54:	e1a02004 	mov	r2, r4
     a58:	e2855001 	add	r5, r5, #1
     a5c:	ebfffffe 	bl	8ec <_ZN11gpu2dCanvas8setPixelEjjj>
     a60:	e15a0005 	cmp	sl, r5
     a64:	e0866009 	add	r6, r6, r9
     a68:	caffffe9 	bgt	a14 <_ZN11gpu2dCanvas8DrawLineEiiiij+0xb4>
     a6c:	e28dd00c 	add	sp, sp, #12
     a70:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
     a74:	e12fff1e 	bx	lr
     a78:	e1a00007 	mov	r0, r7
     a7c:	e1a01005 	mov	r1, r5
     a80:	e1a02004 	mov	r2, r4
     a84:	e1a03008 	mov	r3, r8
     a88:	ebfffffe 	bl	8ec <_ZN11gpu2dCanvas8setPixelEjjj>
     a8c:	e086600b 	add	r6, r6, fp
     a90:	eaffffdc 	b	a08 <_ZN11gpu2dCanvas8DrawLineEiiiij+0xa8>
     a94:	e1a01005 	mov	r1, r5
     a98:	e1a02004 	mov	r2, r4
     a9c:	e1a00007 	mov	r0, r7
     aa0:	e1a03008 	mov	r3, r8
     aa4:	ebfffffe 	bl	8ec <_ZN11gpu2dCanvas8setPixelEjjj>
     aa8:	e086600b 	add	r6, r6, fp
     aac:	eaffffe1 	b	a38 <_ZN11gpu2dCanvas8DrawLineEiiiij+0xd8>
     ab0:	e1a03008 	mov	r3, r8
     ab4:	ebfffffe 	bl	8ec <_ZN11gpu2dCanvas8setPixelEjjj>
     ab8:	e086600b 	add	r6, r6, fp
     abc:	eaffffc2 	b	9cc <_ZN11gpu2dCanvas8DrawLineEiiiij+0x6c>

00000ac0 <_ZN11gpu2dCanvas13DrawCharacterEiicj>:
     ac0:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
     ac4:	e1a04203 	lsl	r4, r3, #4
     ac8:	e24dd054 	sub	sp, sp, #84	; 0x54
     acc:	e284b007 	add	fp, r4, #7
     ad0:	e58db03c 	str	fp, [sp, #60]	; 0x3c
     ad4:	e284b008 	add	fp, r4, #8
     ad8:	e58db004 	str	fp, [sp, #4]
     adc:	e284b009 	add	fp, r4, #9
     ae0:	e58db008 	str	fp, [sp, #8]
     ae4:	e284b00a 	add	fp, r4, #10
     ae8:	e58db00c 	str	fp, [sp, #12]
     aec:	e284b00b 	add	fp, r4, #11
     af0:	e58db010 	str	fp, [sp, #16]
     af4:	e284b00c 	add	fp, r4, #12
     af8:	e58db014 	str	fp, [sp, #20]
     afc:	e284b00d 	add	fp, r4, #13
     b00:	e58db018 	str	fp, [sp, #24]
     b04:	e2847001 	add	r7, r4, #1
     b08:	e2846002 	add	r6, r4, #2
     b0c:	e2845003 	add	r5, r4, #3
     b10:	e2848004 	add	r8, r4, #4
     b14:	e284a005 	add	sl, r4, #5
     b18:	e2849006 	add	r9, r4, #6
     b1c:	e284b00e 	add	fp, r4, #14
     b20:	e284400f 	add	r4, r4, #15
     b24:	e58db01c 	str	fp, [sp, #28]
     b28:	e58d4000 	str	r4, [sp]
     b2c:	e59fc248 	ldr	ip, [pc, #584]	; d7c <_ZN11gpu2dCanvas13DrawCharacterEiicj+0x2bc>
     b30:	e7dc3203 	ldrb	r3, [ip, r3, lsl #4]
     b34:	e58d3020 	str	r3, [sp, #32]
     b38:	e7dcb007 	ldrb	fp, [ip, r7]
     b3c:	e58db024 	str	fp, [sp, #36]	; 0x24
     b40:	e7dc4006 	ldrb	r4, [ip, r6]
     b44:	e58d4028 	str	r4, [sp, #40]	; 0x28
     b48:	e7dc3005 	ldrb	r3, [ip, r5]
     b4c:	e58d302c 	str	r3, [sp, #44]	; 0x2c
     b50:	e7dc6008 	ldrb	r6, [ip, r8]
     b54:	e58d6030 	str	r6, [sp, #48]	; 0x30
     b58:	e7dc700a 	ldrb	r7, [ip, sl]
     b5c:	e58d7034 	str	r7, [sp, #52]	; 0x34
     b60:	e7dca009 	ldrb	sl, [ip, r9]
     b64:	e59d803c 	ldr	r8, [sp, #60]	; 0x3c
     b68:	e58da038 	str	sl, [sp, #56]	; 0x38
     b6c:	e7dcb008 	ldrb	fp, [ip, r8]
     b70:	e59d5004 	ldr	r5, [sp, #4]
     b74:	e58db03c 	str	fp, [sp, #60]	; 0x3c
     b78:	e59d4008 	ldr	r4, [sp, #8]
     b7c:	e28d300c 	add	r3, sp, #12
     b80:	e89302c8 	ldm	r3, {r3, r6, r7, r9}
     b84:	e59da01c 	ldr	sl, [sp, #28]
     b88:	e7dcb005 	ldrb	fp, [ip, r5]
     b8c:	e59d8000 	ldr	r8, [sp]
     b90:	e7dc5004 	ldrb	r5, [ip, r4]
     b94:	e7dc4003 	ldrb	r4, [ip, r3]
     b98:	e7dc3006 	ldrb	r3, [ip, r6]
     b9c:	e7dc6007 	ldrb	r6, [ip, r7]
     ba0:	e7dc7009 	ldrb	r7, [ip, r9]
     ba4:	e7dc900a 	ldrb	r9, [ip, sl]
     ba8:	e1a0a001 	mov	sl, r1
     bac:	e59d1020 	ldr	r1, [sp, #32]
     bb0:	e7dcc008 	ldrb	ip, [ip, r8]
     bb4:	e59d8078 	ldr	r8, [sp, #120]	; 0x78
     bb8:	e5cd1040 	strb	r1, [sp, #64]	; 0x40
     bbc:	e59d1024 	ldr	r1, [sp, #36]	; 0x24
     bc0:	e5cd1041 	strb	r1, [sp, #65]	; 0x41
     bc4:	e59d1028 	ldr	r1, [sp, #40]	; 0x28
     bc8:	e5cd1042 	strb	r1, [sp, #66]	; 0x42
     bcc:	e59d102c 	ldr	r1, [sp, #44]	; 0x2c
     bd0:	e5cd1043 	strb	r1, [sp, #67]	; 0x43
     bd4:	e59d1030 	ldr	r1, [sp, #48]	; 0x30
     bd8:	e5cd1044 	strb	r1, [sp, #68]	; 0x44
     bdc:	e59d1034 	ldr	r1, [sp, #52]	; 0x34
     be0:	e5cd1045 	strb	r1, [sp, #69]	; 0x45
     be4:	e59d1038 	ldr	r1, [sp, #56]	; 0x38
     be8:	e5cd1046 	strb	r1, [sp, #70]	; 0x46
     bec:	e59d103c 	ldr	r1, [sp, #60]	; 0x3c
     bf0:	e5cd304b 	strb	r3, [sp, #75]	; 0x4b
     bf4:	e5cd1047 	strb	r1, [sp, #71]	; 0x47
     bf8:	e5cd704d 	strb	r7, [sp, #77]	; 0x4d
     bfc:	e28a1002 	add	r1, sl, #2
     c00:	e1a07000 	mov	r7, r0
     c04:	e28a3003 	add	r3, sl, #3
     c08:	e28d0040 	add	r0, sp, #64	; 0x40
     c0c:	e5cdb048 	strb	fp, [sp, #72]	; 0x48
     c10:	e5cd5049 	strb	r5, [sp, #73]	; 0x49
     c14:	e5cd604c 	strb	r6, [sp, #76]	; 0x4c
     c18:	e5cd904e 	strb	r9, [sp, #78]	; 0x4e
     c1c:	e5cd404a 	strb	r4, [sp, #74]	; 0x4a
     c20:	e5cdc04f 	strb	ip, [sp, #79]	; 0x4f
     c24:	e2406001 	sub	r6, r0, #1
     c28:	e1a05002 	mov	r5, r2
     c2c:	e280900f 	add	r9, r0, #15
     c30:	e28ab001 	add	fp, sl, #1
     c34:	e88d000a 	stm	sp, {r1, r3}
     c38:	ea000010 	b	c80 <_ZN11gpu2dCanvas13DrawCharacterEiicj+0x1c0>
     c3c:	e3140002 	tst	r4, #2
     c40:	1a000018 	bne	ca8 <_ZN11gpu2dCanvas13DrawCharacterEiicj+0x1e8>
     c44:	e3140004 	tst	r4, #4
     c48:	1a00001d 	bne	cc4 <_ZN11gpu2dCanvas13DrawCharacterEiicj+0x204>
     c4c:	e3140008 	tst	r4, #8
     c50:	1a000022 	bne	ce0 <_ZN11gpu2dCanvas13DrawCharacterEiicj+0x220>
     c54:	e3140010 	tst	r4, #16
     c58:	1a000027 	bne	cfc <_ZN11gpu2dCanvas13DrawCharacterEiicj+0x23c>
     c5c:	e3140020 	tst	r4, #32
     c60:	1a00002c 	bne	d18 <_ZN11gpu2dCanvas13DrawCharacterEiicj+0x258>
     c64:	e3140040 	tst	r4, #64	; 0x40
     c68:	1a000031 	bne	d34 <_ZN11gpu2dCanvas13DrawCharacterEiicj+0x274>
     c6c:	e1b043a4 	lsrs	r4, r4, #7
     c70:	1a000036 	bne	d50 <_ZN11gpu2dCanvas13DrawCharacterEiicj+0x290>
     c74:	e1560009 	cmp	r6, r9
     c78:	e2855001 	add	r5, r5, #1
     c7c:	0a00003b 	beq	d70 <_ZN11gpu2dCanvas13DrawCharacterEiicj+0x2b0>
     c80:	e5f64001 	ldrb	r4, [r6, #1]!
     c84:	e3140001 	tst	r4, #1
     c88:	0affffeb 	beq	c3c <_ZN11gpu2dCanvas13DrawCharacterEiicj+0x17c>
     c8c:	e1a00007 	mov	r0, r7
     c90:	e1a0100a 	mov	r1, sl
     c94:	e1a02005 	mov	r2, r5
     c98:	e1a03008 	mov	r3, r8
     c9c:	ebfffffe 	bl	8ec <_ZN11gpu2dCanvas8setPixelEjjj>
     ca0:	e3140002 	tst	r4, #2
     ca4:	0affffe6 	beq	c44 <_ZN11gpu2dCanvas13DrawCharacterEiicj+0x184>
     ca8:	e1a00007 	mov	r0, r7
     cac:	e1a0100b 	mov	r1, fp
     cb0:	e1a02005 	mov	r2, r5
     cb4:	e1a03008 	mov	r3, r8
     cb8:	ebfffffe 	bl	8ec <_ZN11gpu2dCanvas8setPixelEjjj>
     cbc:	e3140004 	tst	r4, #4
     cc0:	0affffe1 	beq	c4c <_ZN11gpu2dCanvas13DrawCharacterEiicj+0x18c>
     cc4:	e1a00007 	mov	r0, r7
     cc8:	e59d1000 	ldr	r1, [sp]
     ccc:	e1a02005 	mov	r2, r5
     cd0:	e1a03008 	mov	r3, r8
     cd4:	ebfffffe 	bl	8ec <_ZN11gpu2dCanvas8setPixelEjjj>
     cd8:	e3140008 	tst	r4, #8
     cdc:	0affffdc 	beq	c54 <_ZN11gpu2dCanvas13DrawCharacterEiicj+0x194>
     ce0:	e1a00007 	mov	r0, r7
     ce4:	e59d1004 	ldr	r1, [sp, #4]
     ce8:	e1a02005 	mov	r2, r5
     cec:	e1a03008 	mov	r3, r8
     cf0:	ebfffffe 	bl	8ec <_ZN11gpu2dCanvas8setPixelEjjj>
     cf4:	e3140010 	tst	r4, #16
     cf8:	0affffd7 	beq	c5c <_ZN11gpu2dCanvas13DrawCharacterEiicj+0x19c>
     cfc:	e1a00007 	mov	r0, r7
     d00:	e28a1004 	add	r1, sl, #4
     d04:	e1a02005 	mov	r2, r5
     d08:	e1a03008 	mov	r3, r8
     d0c:	ebfffffe 	bl	8ec <_ZN11gpu2dCanvas8setPixelEjjj>
     d10:	e3140020 	tst	r4, #32
     d14:	0affffd2 	beq	c64 <_ZN11gpu2dCanvas13DrawCharacterEiicj+0x1a4>
     d18:	e1a00007 	mov	r0, r7
     d1c:	e28a1005 	add	r1, sl, #5
     d20:	e1a02005 	mov	r2, r5
     d24:	e1a03008 	mov	r3, r8
     d28:	ebfffffe 	bl	8ec <_ZN11gpu2dCanvas8setPixelEjjj>
     d2c:	e3140040 	tst	r4, #64	; 0x40
     d30:	0affffcd 	beq	c6c <_ZN11gpu2dCanvas13DrawCharacterEiicj+0x1ac>
     d34:	e1a00007 	mov	r0, r7
     d38:	e28a1006 	add	r1, sl, #6
     d3c:	e1a02005 	mov	r2, r5
     d40:	e1a03008 	mov	r3, r8
     d44:	ebfffffe 	bl	8ec <_ZN11gpu2dCanvas8setPixelEjjj>
     d48:	e1b043a4 	lsrs	r4, r4, #7
     d4c:	0affffc8 	beq	c74 <_ZN11gpu2dCanvas13DrawCharacterEiicj+0x1b4>
     d50:	e1a02005 	mov	r2, r5
     d54:	e1a00007 	mov	r0, r7
     d58:	e28a1007 	add	r1, sl, #7
     d5c:	e1a03008 	mov	r3, r8
     d60:	ebfffffe 	bl	8ec <_ZN11gpu2dCanvas8setPixelEjjj>
     d64:	e1560009 	cmp	r6, r9
     d68:	e2855001 	add	r5, r5, #1
     d6c:	1affffc3 	bne	c80 <_ZN11gpu2dCanvas13DrawCharacterEiicj+0x1c0>
     d70:	e28dd054 	add	sp, sp, #84	; 0x54
     d74:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
     d78:	e12fff1e 	bx	lr
     d7c:	00000000 	andeq	r0, r0, r0

00000d80 <_ZN11gpu2dCanvas14ClearCharacterEii>:
     d80:	e92d4ff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
     d84:	e3a08000 	mov	r8, #0
     d88:	e1a06000 	mov	r6, r0
     d8c:	e1a09001 	mov	r9, r1
     d90:	e1a0b002 	mov	fp, r2
     d94:	e1a07008 	mov	r7, r8
     d98:	e1a04807 	lsl	r4, r7, #16
     d9c:	e1a04844 	asr	r4, r4, #16
     da0:	e3540007 	cmp	r4, #7
     da4:	ca000027 	bgt	e48 <_ZN11gpu2dCanvas14ClearCharacterEii+0xc8>
     da8:	e0844009 	add	r4, r4, r9
     dac:	e088500b 	add	r5, r8, fp
     db0:	e1a01004 	mov	r1, r4
     db4:	e1a02005 	mov	r2, r5
     db8:	e1a00006 	mov	r0, r6
     dbc:	e3a03000 	mov	r3, #0
     dc0:	ebfffffe 	bl	8ec <_ZN11gpu2dCanvas8setPixelEjjj>
     dc4:	e2872001 	add	r2, r7, #1
     dc8:	e1a01802 	lsl	r1, r2, #16
     dcc:	e267a007 	rsb	sl, r7, #7
     dd0:	e3510807 	cmp	r1, #458752	; 0x70000
     dd4:	e20aa001 	and	sl, sl, #1
     dd8:	e2844001 	add	r4, r4, #1
     ddc:	e1a07821 	lsr	r7, r1, #16
     de0:	ca000017 	bgt	e44 <_ZN11gpu2dCanvas14ClearCharacterEii+0xc4>
     de4:	e35a0000 	cmp	sl, #0
     de8:	11a01004 	movne	r1, r4
     dec:	11a00006 	movne	r0, r6
     df0:	1a00000a 	bne	e20 <_ZN11gpu2dCanvas14ClearCharacterEii+0xa0>
     df4:	e1a01004 	mov	r1, r4
     df8:	e1a00006 	mov	r0, r6
     dfc:	e1a02005 	mov	r2, r5
     e00:	e3a03000 	mov	r3, #0
     e04:	ebfffffe 	bl	8ec <_ZN11gpu2dCanvas8setPixelEjjj>
     e08:	e2870001 	add	r0, r7, #1
     e0c:	e1a07800 	lsl	r7, r0, #16
     e10:	e2844001 	add	r4, r4, #1
     e14:	e1a07827 	lsr	r7, r7, #16
     e18:	e1a00006 	mov	r0, r6
     e1c:	e1a01004 	mov	r1, r4
     e20:	e3a03000 	mov	r3, #0
     e24:	e1a02005 	mov	r2, r5
     e28:	ebfffffe 	bl	8ec <_ZN11gpu2dCanvas8setPixelEjjj>
     e2c:	e287c001 	add	ip, r7, #1
     e30:	e1a0380c 	lsl	r3, ip, #16
     e34:	e3530807 	cmp	r3, #458752	; 0x70000
     e38:	e2844001 	add	r4, r4, #1
     e3c:	e1a07823 	lsr	r7, r3, #16
     e40:	daffffeb 	ble	df4 <_ZN11gpu2dCanvas14ClearCharacterEii+0x74>
     e44:	e3a07008 	mov	r7, #8
     e48:	e2888001 	add	r8, r8, #1
     e4c:	e3580010 	cmp	r8, #16
     e50:	1affffd0 	bne	d98 <_ZN11gpu2dCanvas14ClearCharacterEii+0x18>
     e54:	e8bd4ff8 	pop	{r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
     e58:	e12fff1e 	bx	lr

00000e5c <_ZN7Console5clearEv>:
     e5c:	e92d4010 	push	{r4, lr}
     e60:	e3a01000 	mov	r1, #0
     e64:	e1a04000 	mov	r4, r0
     e68:	e3a03001 	mov	r3, #1
     e6c:	e590000c 	ldr	r0, [r0, #12]
     e70:	e884000a 	stm	r4, {r1, r3}
     e74:	ebfffffe 	bl	770 <_ZN11gpu2dCanvas5ClearEj>
     e78:	e594000c 	ldr	r0, [r4, #12]
     e7c:	e8bd4010 	pop	{r4, lr}
     e80:	eafffffe 	b	71c <_ZN11gpu2dCanvas4DrawEv>

00000e84 <_ZN7Console7newLineEv>:
     e84:	e590c004 	ldr	ip, [r0, #4]
     e88:	e28c1001 	add	r1, ip, #1
     e8c:	e3a02000 	mov	r2, #0
     e90:	e351002d 	cmp	r1, #45	; 0x2d
     e94:	e5801004 	str	r1, [r0, #4]
     e98:	e5802000 	str	r2, [r0]
     e9c:	912fff1e 	bxls	lr
     ea0:	eafffffe 	b	e5c <_ZN7Console5clearEv>

00000ea4 <_ZN7Console9printCharEcj>:
     ea4:	e92d4070 	push	{r4, r5, r6, lr}
     ea8:	e3510009 	cmp	r1, #9
     eac:	e24dd008 	sub	sp, sp, #8
     eb0:	e1a06001 	mov	r6, r1
     eb4:	e1a04000 	mov	r4, r0
     eb8:	e1a05002 	mov	r5, r2
     ebc:	0a00002a 	beq	f6c <_ZN7Console9printCharEcj+0xc8>
     ec0:	e351000a 	cmp	r1, #10
     ec4:	0a000025 	beq	f60 <_ZN7Console9printCharEcj+0xbc>
     ec8:	e3510008 	cmp	r1, #8
     ecc:	0a000015 	beq	f28 <_ZN7Console9printCharEcj+0x84>
     ed0:	e590c000 	ldr	ip, [r0]
     ed4:	e35c0078 	cmp	ip, #120	; 0x78
     ed8:	8a00002c 	bhi	f90 <_ZN7Console9printCharEcj+0xec>
     edc:	e5943004 	ldr	r3, [r4, #4]
     ee0:	e353002d 	cmp	r3, #45	; 0x2d
     ee4:	8a000025 	bhi	f80 <_ZN7Console9printCharEcj+0xdc>
     ee8:	e594e008 	ldr	lr, [r4, #8]
     eec:	e5941000 	ldr	r1, [r4]
     ef0:	e08e2203 	add	r2, lr, r3, lsl #4
     ef4:	e594000c 	ldr	r0, [r4, #12]
     ef8:	e1a03006 	mov	r3, r6
     efc:	e08e1181 	add	r1, lr, r1, lsl #3
     f00:	e58d5000 	str	r5, [sp]
     f04:	ebfffffe 	bl	ac0 <_ZN11gpu2dCanvas13DrawCharacterEiicj>
     f08:	e594000c 	ldr	r0, [r4, #12]
     f0c:	ebfffffe 	bl	71c <_ZN11gpu2dCanvas4DrawEv>
     f10:	e5942000 	ldr	r2, [r4]
     f14:	e2823001 	add	r3, r2, #1
     f18:	e5843000 	str	r3, [r4]
     f1c:	e28dd008 	add	sp, sp, #8
     f20:	e8bd4070 	pop	{r4, r5, r6, lr}
     f24:	e12fff1e 	bx	lr
     f28:	e5901000 	ldr	r1, [r0]
     f2c:	e3510000 	cmp	r1, #0
     f30:	0afffff9 	beq	f1c <_ZN7Console9printCharEcj+0x78>
     f34:	e990000c 	ldmib	r0, {r2, r3}
     f38:	e2411001 	sub	r1, r1, #1
     f3c:	e5841000 	str	r1, [r4]
     f40:	e590000c 	ldr	r0, [r0, #12]
     f44:	e0831181 	add	r1, r3, r1, lsl #3
     f48:	e0832202 	add	r2, r3, r2, lsl #4
     f4c:	ebfffffe 	bl	d80 <_ZN11gpu2dCanvas14ClearCharacterEii>
     f50:	e594000c 	ldr	r0, [r4, #12]
     f54:	e28dd008 	add	sp, sp, #8
     f58:	e8bd4070 	pop	{r4, r5, r6, lr}
     f5c:	eafffffe 	b	71c <_ZN11gpu2dCanvas4DrawEv>
     f60:	e28dd008 	add	sp, sp, #8
     f64:	e8bd4070 	pop	{r4, r5, r6, lr}
     f68:	eafffffe 	b	e84 <_ZN7Console7newLineEv>
     f6c:	e5900000 	ldr	r0, [r0]
     f70:	e2803004 	add	r3, r0, #4
     f74:	e3530077 	cmp	r3, #119	; 0x77
     f78:	95843000 	strls	r3, [r4]
     f7c:	eaffffe6 	b	f1c <_ZN7Console9printCharEcj+0x78>
     f80:	e1a00004 	mov	r0, r4
     f84:	e28dd008 	add	sp, sp, #8
     f88:	e8bd4070 	pop	{r4, r5, r6, lr}
     f8c:	eafffffe 	b	e5c <_ZN7Console5clearEv>
     f90:	ebfffffe 	bl	e84 <_ZN7Console7newLineEv>
     f94:	eaffffd0 	b	edc <_ZN7Console9printCharEcj+0x38>

00000f98 <_ZN7Console6kprintEPc>:
     f98:	e92d4038 	push	{r3, r4, r5, lr}
     f9c:	e1a04001 	mov	r4, r1
     fa0:	e5d11000 	ldrb	r1, [r1]
     fa4:	e3510000 	cmp	r1, #0
     fa8:	e1a05000 	mov	r5, r0
     fac:	0a000005 	beq	fc8 <_ZN7Console6kprintEPc+0x30>
     fb0:	e1a00005 	mov	r0, r5
     fb4:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
     fb8:	ebfffffe 	bl	ea4 <_ZN7Console9printCharEcj>
     fbc:	e5f41001 	ldrb	r1, [r4, #1]!
     fc0:	e3510000 	cmp	r1, #0
     fc4:	1afffff9 	bne	fb0 <_ZN7Console6kprintEPc+0x18>
     fc8:	e8bd4038 	pop	{r3, r4, r5, lr}
     fcc:	e12fff1e 	bx	lr

00000fd0 <_ZN7Console6kprintEPKc>:
     fd0:	eafffffe 	b	f98 <_ZN7Console6kprintEPc>

00000fd4 <_ZN7Console4koutEPKc>:
     fd4:	e92d4070 	push	{r4, r5, r6, lr}
     fd8:	e59f4040 	ldr	r4, [pc, #64]	; 1020 <_ZN7Console4koutEPKc+0x4c>
     fdc:	e1a06001 	mov	r6, r1
     fe0:	e1a05000 	mov	r5, r0
     fe4:	e3a0105b 	mov	r1, #91	; 0x5b
     fe8:	e1a00005 	mov	r0, r5
     fec:	e3a028ff 	mov	r2, #16711680	; 0xff0000
     ff0:	ebfffffe 	bl	ea4 <_ZN7Console9printCharEcj>
     ff4:	e5f41001 	ldrb	r1, [r4, #1]!
     ff8:	e3510000 	cmp	r1, #0
     ffc:	1afffff9 	bne	fe8 <_ZN7Console4koutEPKc+0x14>
    1000:	e1a01006 	mov	r1, r6
    1004:	e1a00005 	mov	r0, r5
    1008:	ebfffffe 	bl	f98 <_ZN7Console6kprintEPc>
    100c:	e1a00005 	mov	r0, r5
    1010:	e3a0100a 	mov	r1, #10
    1014:	e3a028ff 	mov	r2, #16711680	; 0xff0000
    1018:	e8bd4070 	pop	{r4, r5, r6, lr}
    101c:	eafffffe 	b	ea4 <_ZN7Console9printCharEcj>
    1020:	0000010c 	andeq	r0, r0, ip, lsl #2

00001024 <irq_handler>:
    1024:	e92d4008 	push	{r3, lr}
    1028:	e59f303c 	ldr	r3, [pc, #60]	; 106c <irq_handler+0x48>
    102c:	e5d32004 	ldrb	r2, [r3, #4]
    1030:	e3520000 	cmp	r2, #0
    1034:	1a000008 	bne	105c <irq_handler+0x38>
    1038:	e59f2030 	ldr	r2, [pc, #48]	; 1070 <irq_handler+0x4c>
    103c:	e5920004 	ldr	r0, [r2, #4]
    1040:	e2801b4e 	add	r1, r0, #79872	; 0x13800
    1044:	e2811080 	add	r1, r1, #128	; 0x80
    1048:	e5923004 	ldr	r3, [r2, #4]
    104c:	e1510003 	cmp	r1, r3
    1050:	8afffffc 	bhi	1048 <irq_handler+0x24>
    1054:	e8bd4008 	pop	{r3, lr}
    1058:	e12fff1e 	bx	lr
    105c:	e5930008 	ldr	r0, [r3, #8]
    1060:	e59f100c 	ldr	r1, [pc, #12]	; 1074 <irq_handler+0x50>
    1064:	ebfffffe 	bl	fd4 <_ZN7Console4koutEPKc>
    1068:	eafffff2 	b	1038 <irq_handler+0x14>
    106c:	00000000 	andeq	r0, r0, r0
    1070:	20003000 	andcs	r3, r0, r0
    1074:	00000114 	andeq	r0, r0, r4, lsl r1

00001078 <_ZN7ConsoleC1EP11gpu2dCanvas>:
    1078:	e3a02000 	mov	r2, #0
    107c:	e3a0300a 	mov	r3, #10
    1080:	e92d4010 	push	{r4, lr}
    1084:	e1a04000 	mov	r4, r0
    1088:	e5802000 	str	r2, [r0]
    108c:	e980000c 	stmib	r0, {r2, r3}
    1090:	e580100c 	str	r1, [r0, #12]
    1094:	ebfffffe 	bl	e5c <_ZN7Console5clearEv>
    1098:	e1a00004 	mov	r0, r4
    109c:	e8bd4010 	pop	{r4, lr}
    10a0:	e12fff1e 	bx	lr

000010a4 <_Z12print_headerP7Console>:
    10a4:	e92d4010 	push	{r4, lr}
    10a8:	e59f102c 	ldr	r1, [pc, #44]	; 10dc <_Z12print_headerP7Console+0x38>
    10ac:	e1a04000 	mov	r4, r0
    10b0:	ebfffffe 	bl	f98 <_ZN7Console6kprintEPc>
    10b4:	e1a00004 	mov	r0, r4
    10b8:	e59f1020 	ldr	r1, [pc, #32]	; 10e0 <_Z12print_headerP7Console+0x3c>
    10bc:	ebfffffe 	bl	f98 <_ZN7Console6kprintEPc>
    10c0:	e1a00004 	mov	r0, r4
    10c4:	e59f1018 	ldr	r1, [pc, #24]	; 10e4 <_Z12print_headerP7Console+0x40>
    10c8:	ebfffffe 	bl	f98 <_ZN7Console6kprintEPc>
    10cc:	e59f1014 	ldr	r1, [pc, #20]	; 10e8 <_Z12print_headerP7Console+0x44>
    10d0:	e1a00004 	mov	r0, r4
    10d4:	e8bd4010 	pop	{r4, lr}
    10d8:	eafffffe 	b	f98 <_ZN7Console6kprintEPc>
    10dc:	00000120 	andeq	r0, r0, r0, lsr #2
    10e0:	00000164 	andeq	r0, r0, r4, ror #2
    10e4:	0000016c 	andeq	r0, r0, ip, ror #2
    10e8:	00000174 	andeq	r0, r0, r4, ror r1

000010ec <kmain>:
    10ec:	e92d40f0 	push	{r4, r5, r6, r7, lr}
    10f0:	e24dd01c 	sub	sp, sp, #28
    10f4:	e28d4010 	add	r4, sp, #16
    10f8:	e3a01000 	mov	r1, #0
    10fc:	e1a00004 	mov	r0, r4
    1100:	ebfffffe 	bl	674 <_ZN11gpu2dCanvasC1Eb>
    1104:	e59f715c 	ldr	r7, [pc, #348]	; 1268 <kmain+0x17c>
    1108:	e3a0200a 	mov	r2, #10
    110c:	e3a05000 	mov	r5, #0
    1110:	e1a0000d 	mov	r0, sp
    1114:	e58d2008 	str	r2, [sp, #8]
    1118:	e58d400c 	str	r4, [sp, #12]
    111c:	e58d5000 	str	r5, [sp]
    1120:	e58d5004 	str	r5, [sp, #4]
    1124:	ebfffffe 	bl	e5c <_ZN7Console5clearEv>
    1128:	e28d1000 	add	r1, sp, #0
    112c:	e3a03001 	mov	r3, #1
    1130:	e1a0000d 	mov	r0, sp
    1134:	e5871008 	str	r1, [r7, #8]
    1138:	e5c73004 	strb	r3, [r7, #4]
    113c:	ebfffffe 	bl	10a4 <_Z12print_headerP7Console>
    1140:	e1a0000d 	mov	r0, sp
    1144:	e59f1120 	ldr	r1, [pc, #288]	; 126c <kmain+0x180>
    1148:	ebfffffe 	bl	f98 <_ZN7Console6kprintEPc>
    114c:	e59f411c 	ldr	r4, [pc, #284]	; 1270 <kmain+0x184>
    1150:	e3a06012 	mov	r6, #18
    1154:	e1a0000d 	mov	r0, sp
    1158:	e59f1114 	ldr	r1, [pc, #276]	; 1274 <kmain+0x188>
    115c:	ebfffffe 	bl	f98 <_ZN7Console6kprintEPc>
    1160:	e594c004 	ldr	ip, [r4, #4]
    1164:	e28c0bea 	add	r0, ip, #239616	; 0x3a800
    1168:	e2802d06 	add	r2, r0, #384	; 0x180
    116c:	e594e004 	ldr	lr, [r4, #4]
    1170:	e152000e 	cmp	r2, lr
    1174:	e59f50f4 	ldr	r5, [pc, #244]	; 1270 <kmain+0x184>
    1178:	8afffffb 	bhi	116c <kmain+0x80>
    117c:	e2566001 	subs	r6, r6, #1
    1180:	1afffff3 	bne	1154 <kmain+0x68>
    1184:	e1a0000d 	mov	r0, sp
    1188:	e59f10e8 	ldr	r1, [pc, #232]	; 1278 <kmain+0x18c>
    118c:	ebfffffe 	bl	f98 <_ZN7Console6kprintEPc>
    1190:	e3a0380f 	mov	r3, #983040	; 0xf0000
    1194:	e3a0caff 	mov	ip, #1044480	; 0xff000
    1198:	e5873000 	str	r3, [r7]
    119c:	e1a0000d 	mov	r0, sp
    11a0:	e59f10d4 	ldr	r1, [pc, #212]	; 127c <kmain+0x190>
    11a4:	e5c36004 	strb	r6, [r3, #4]
    11a8:	e583c008 	str	ip, [r3, #8]
    11ac:	ebfffffe 	bl	fd4 <_ZN7Console4koutEPKc>
    11b0:	e59f00c8 	ldr	r0, [pc, #200]	; 1280 <kmain+0x194>
    11b4:	e3e02000 	mvn	r2, #0
    11b8:	e3a040ff 	mov	r4, #255	; 0xff
    11bc:	e5802840 	str	r2, [r0, #2112]	; 0x840
    11c0:	e5802850 	str	r2, [r0, #2128]	; 0x850
    11c4:	e5804860 	str	r4, [r0, #2144]	; 0x860
    11c8:	e5951004 	ldr	r1, [r5, #4]
    11cc:	e2813a61 	add	r3, r1, #397312	; 0x61000
    11d0:	e2832d2a 	add	r2, r3, #2688	; 0xa80
    11d4:	e595e004 	ldr	lr, [r5, #4]
    11d8:	e152000e 	cmp	r2, lr
    11dc:	e59f408c 	ldr	r4, [pc, #140]	; 1270 <kmain+0x184>
    11e0:	8afffffb 	bhi	11d4 <kmain+0xe8>
    11e4:	e59f1098 	ldr	r1, [pc, #152]	; 1284 <kmain+0x198>
    11e8:	e1a0000d 	mov	r0, sp
    11ec:	ebfffffe 	bl	fd4 <_ZN7Console4koutEPKc>
    11f0:	e1a0000d 	mov	r0, sp
    11f4:	e59f108c 	ldr	r1, [pc, #140]	; 1288 <kmain+0x19c>
    11f8:	ebfffffe 	bl	f98 <_ZN7Console6kprintEPc>
    11fc:	e5940004 	ldr	r0, [r4, #4]
    1200:	e280183d 	add	r1, r0, #3997696	; 0x3d0000
    1204:	e2812c09 	add	r2, r1, #2304	; 0x900
    1208:	e594c004 	ldr	ip, [r4, #4]
    120c:	e152000c 	cmp	r2, ip
    1210:	e59f3058 	ldr	r3, [pc, #88]	; 1270 <kmain+0x184>
    1214:	8afffffb 	bhi	1208 <kmain+0x11c>
    1218:	ef0000ff 	svc	0x000000ff
    121c:	e593e004 	ldr	lr, [r3, #4]
    1220:	e28e2a61 	add	r2, lr, #397312	; 0x61000
    1224:	e2821d2a 	add	r1, r2, #2688	; 0xa80
    1228:	e1a02003 	mov	r2, r3
    122c:	e5923004 	ldr	r3, [r2, #4]
    1230:	e1510003 	cmp	r1, r3
    1234:	8afffffc 	bhi	122c <kmain+0x140>
    1238:	e1a0000d 	mov	r0, sp
    123c:	e59f1048 	ldr	r1, [pc, #72]	; 128c <kmain+0x1a0>
    1240:	ebfffffe 	bl	fd4 <_ZN7Console4koutEPKc>
    1244:	e3a01001 	mov	r1, #1
    1248:	e3a00010 	mov	r0, #16
    124c:	ebfffffe 	bl	29c <_ZN12RaspberryLib7SetGPIOEjj>
    1250:	e1a0000d 	mov	r0, sp
    1254:	e59f1034 	ldr	r1, [pc, #52]	; 1290 <kmain+0x1a4>
    1258:	ebfffffe 	bl	f98 <_ZN7Console6kprintEPc>
    125c:	e28dd01c 	add	sp, sp, #28
    1260:	e8bd40f0 	pop	{r4, r5, r6, r7, lr}
    1264:	e12fff1e 	bx	lr
    1268:	00000000 	andeq	r0, r0, r0
    126c:	00000178 	andeq	r0, r0, r8, ror r1
    1270:	20003000 	andcs	r3, r0, r0
    1274:	00000184 	andeq	r0, r0, r4, lsl #3
    1278:	00000188 	andeq	r0, r0, r8, lsl #3
    127c:	00000198 	muleq	r0, r8, r1
    1280:	2000b000 	andcs	fp, r0, r0
    1284:	000001b0 			; <UNDEFINED> instruction: 0x000001b0
    1288:	000001cc 	andeq	r0, r0, ip, asr #3
    128c:	000001f0 	strdeq	r0, [r0], -r0	; <UNPREDICTABLE>
    1290:	00000208 	andeq	r0, r0, r8, lsl #4

00001294 <_ZN7Console5kbaseElll>:
    1294:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
    1298:	e2524000 	subs	r4, r2, #0
    129c:	e24dd02c 	sub	sp, sp, #44	; 0x2c
    12a0:	e1a0a000 	mov	sl, r0
    12a4:	e1a07001 	mov	r7, r1
    12a8:	e1a06003 	mov	r6, r3
    12ac:	da000053 	ble	1400 <_ZN7Console5kbaseElll+0x16c>
    12b0:	e59f51b4 	ldr	r5, [pc, #436]	; 146c <_ZN7Console5kbaseElll+0x1d8>
    12b4:	e3510401 	cmp	r1, #16777216	; 0x1000000
    12b8:	21a0b801 	lslcs	fp, r1, #16
    12bc:	21a09821 	lsrcs	r9, r1, #16
    12c0:	31a09001 	movcc	r9, r1
    12c4:	e8b5000f 	ldm	r5!, {r0, r1, r2, r3}
    12c8:	e28dc004 	add	ip, sp, #4
    12cc:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
    12d0:	e8950007 	ldm	r5, {r0, r1, r2}
    12d4:	e1a0300c 	mov	r3, ip
    12d8:	e8a30003 	stmia	r3!, {r0, r1}
    12dc:	23a08001 	movcs	r8, #1
    12e0:	33a08000 	movcc	r8, #0
    12e4:	21a0b82b 	lsrcs	fp, fp, #16
    12e8:	e3580000 	cmp	r8, #0
    12ec:	e1c320b0 	strh	r2, [r3]
    12f0:	1a00004c 	bne	1428 <_ZN7Console5kbaseElll+0x194>
    12f4:	e3560000 	cmp	r6, #0
    12f8:	0a000045 	beq	1414 <_ZN7Console5kbaseElll+0x180>
    12fc:	e3560000 	cmp	r6, #0
    1300:	ba000040 	blt	1408 <_ZN7Console5kbaseElll+0x174>
    1304:	e2466001 	sub	r6, r6, #1
    1308:	e3a09000 	mov	r9, #0
    130c:	e3560000 	cmp	r6, #0
    1310:	d1a05004 	movle	r5, r4
    1314:	da000010 	ble	135c <_ZN7Console5kbaseElll+0xc8>
    1318:	e3a03001 	mov	r3, #1
    131c:	e2462001 	sub	r2, r6, #1
    1320:	e1530006 	cmp	r3, r6
    1324:	e0022003 	and	r2, r2, r3
    1328:	e0050494 	mul	r5, r4, r4
    132c:	aa00000a 	bge	135c <_ZN7Console5kbaseElll+0xc8>
    1330:	e3520000 	cmp	r2, #0
    1334:	0a000003 	beq	1348 <_ZN7Console5kbaseElll+0xb4>
    1338:	e3a03002 	mov	r3, #2
    133c:	e1530006 	cmp	r3, r6
    1340:	e0050594 	mul	r5, r4, r5
    1344:	aa000004 	bge	135c <_ZN7Console5kbaseElll+0xc8>
    1348:	e0050594 	mul	r5, r4, r5
    134c:	e2833002 	add	r3, r3, #2
    1350:	e1530006 	cmp	r3, r6
    1354:	e0050594 	mul	r5, r4, r5
    1358:	bafffffa 	blt	1348 <_ZN7Console5kbaseElll+0xb4>
    135c:	e1540007 	cmp	r4, r7
    1360:	a0000794 	mulge	r0, r4, r7
    1364:	b1a00007 	movlt	r0, r7
    1368:	e1a01005 	mov	r1, r5
    136c:	e28d2024 	add	r2, sp, #36	; 0x24
    1370:	e28d3020 	add	r3, sp, #32
    1374:	e58d9024 	str	r9, [sp, #36]	; 0x24
    1378:	e58d9020 	str	r9, [sp, #32]
    137c:	ebfffffe 	bl	0 <_Z3absi>
    1380:	e59dc020 	ldr	ip, [sp, #32]
    1384:	e08c810c 	add	r8, ip, ip, lsl #2
    1388:	e1a01005 	mov	r1, r5
    138c:	e28d2024 	add	r2, sp, #36	; 0x24
    1390:	e28d3020 	add	r3, sp, #32
    1394:	e1a00088 	lsl	r0, r8, #1
    1398:	e59d8024 	ldr	r8, [sp, #36]	; 0x24
    139c:	ebfffffe 	bl	0 <_Z3absi>
    13a0:	e59d1020 	ldr	r1, [sp, #32]
    13a4:	e0810101 	add	r0, r1, r1, lsl #2
    13a8:	e28d2024 	add	r2, sp, #36	; 0x24
    13ac:	e28d3020 	add	r3, sp, #32
    13b0:	e1a01005 	mov	r1, r5
    13b4:	e1a00080 	lsl	r0, r0, #1
    13b8:	ebfffffe 	bl	0 <_Z3absi>
    13bc:	e1540008 	cmp	r4, r8
    13c0:	a20830ff 	andge	r3, r8, #255	; 0xff
    13c4:	a28d2028 	addge	r2, sp, #40	; 0x28
    13c8:	a0823003 	addge	r3, r2, r3
    13cc:	b1a0000a 	movlt	r0, sl
    13d0:	b3a01065 	movlt	r1, #101	; 0x65
    13d4:	b3a02cff 	movlt	r2, #65280	; 0xff00
    13d8:	a1a0000a 	movge	r0, sl
    13dc:	a5531024 	ldrbge	r1, [r3, #-36]	; 0xffffffdc
    13e0:	a3a028ff 	movge	r2, #16711680	; 0xff0000
    13e4:	ebfffffe 	bl	ea4 <_ZN7Console9printCharEcj>
    13e8:	e3560000 	cmp	r6, #0
    13ec:	ba000005 	blt	1408 <_ZN7Console5kbaseElll+0x174>
    13f0:	e0050598 	mul	r5, r8, r5
    13f4:	e2466001 	sub	r6, r6, #1
    13f8:	e0657007 	rsb	r7, r5, r7
    13fc:	eaffffc2 	b	130c <_ZN7Console5kbaseElll+0x78>
    1400:	e59f1068 	ldr	r1, [pc, #104]	; 1470 <_ZN7Console5kbaseElll+0x1dc>
    1404:	ebfffffe 	bl	f98 <_ZN7Console6kprintEPc>
    1408:	e28dd02c 	add	sp, sp, #44	; 0x2c
    140c:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
    1410:	e12fff1e 	bx	lr
    1414:	e1a00007 	mov	r0, r7
    1418:	e1a01004 	mov	r1, r4
    141c:	ebfffffe 	bl	0 <_Z3absi>
    1420:	e2406001 	sub	r6, r0, #1
    1424:	eaffffb4 	b	12fc <_ZN7Console5kbaseElll+0x68>
    1428:	e1a01004 	mov	r1, r4
    142c:	e1a00009 	mov	r0, r9
    1430:	ebfffffe 	bl	0 <_Z3absi>
    1434:	e1a02004 	mov	r2, r4
    1438:	e2403001 	sub	r3, r0, #1
    143c:	e1a01009 	mov	r1, r9
    1440:	e1a0000a 	mov	r0, sl
    1444:	ebfffffe 	bl	1294 <_ZN7Console5kbaseElll>
    1448:	e1a01004 	mov	r1, r4
    144c:	e1a0000b 	mov	r0, fp
    1450:	ebfffffe 	bl	0 <_Z3absi>
    1454:	e1a0100b 	mov	r1, fp
    1458:	e2403001 	sub	r3, r0, #1
    145c:	e1a02004 	mov	r2, r4
    1460:	e1a0000a 	mov	r0, sl
    1464:	ebfffffe 	bl	1294 <_ZN7Console5kbaseElll>
    1468:	eaffffe6 	b	1408 <_ZN7Console5kbaseElll+0x174>
    146c:	00000000 	andeq	r0, r0, r0
    1470:	00000224 	andeq	r0, r0, r4, lsr #4

00001474 <_ZN7Console5kbaseEll>:
    1474:	e3a03000 	mov	r3, #0
    1478:	eafffffe 	b	1294 <_ZN7Console5kbaseElll>

Disassembly of section .data:

00000000 <_ZL19kernel_default_font>:
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
 4d4:	aaaaaac6 	bge	feaaaff4 <_ZN7Console5kbaseEll+0xfeaa9b80>
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
 574:	5a5a8181 	bpl	16a0b80 <_ZN7Console5kbaseEll+0x169f70c>
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
 6b4:	0a122202 	beq	488ec4 <_ZN7Console5kbaseEll+0x487a50>
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
 774:	5a818100 	bpl	fe060b7c <_ZN7Console5kbaseEll+0xfe05f708>
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
 800:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 804:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff

Disassembly of section .bss:

00000000 <rootPageTable>:
   0:	00000000 	andeq	r0, r0, r0

00000004 <use_irq_console>:
   4:	00000000 	andeq	r0, r0, r0

00000008 <irq_console>:
   8:	00000000 	andeq	r0, r0, r0

Disassembly of section .text._ZN4Math6divideIlEET_S1_S1_PS1_S2_:

00000000 <_ZN4Math6divideIlEET_S1_S1_PS1_S2_>:
   0:	e1b0cfa0 	lsrs	ip, r0, #31
   4:	e92d01f0 	push	{r4, r5, r6, r7, r8}
   8:	e1a08fa1 	lsr	r8, r1, #31
   c:	12600000 	rsbne	r0, r0, #0
  10:	e3580000 	cmp	r8, #0
  14:	12611000 	rsbne	r1, r1, #0
  18:	e3510000 	cmp	r1, #0
  1c:	0a00001e 	beq	9c <_ZN4Math6divideIlEET_S1_S1_PS1_S2_+0x9c>
  20:	e1500001 	cmp	r0, r1
  24:	ba000017 	blt	88 <_ZN4Math6divideIlEET_S1_S1_PS1_S2_+0x88>
  28:	e3a04000 	mov	r4, #0
  2c:	e5824000 	str	r4, [r2]
  30:	e5834000 	str	r4, [r3]
  34:	e5925000 	ldr	r5, [r2]
  38:	e2617000 	rsb	r7, r1, #0
  3c:	e0614000 	rsb	r4, r1, r0
  40:	e0844007 	add	r4, r4, r7
  44:	e0846001 	add	r6, r4, r1
  48:	e1510006 	cmp	r1, r6
  4c:	e2855001 	add	r5, r5, #1
  50:	dafffffa 	ble	40 <_ZN4Math6divideIlEET_S1_S1_PS1_S2_+0x40>
  54:	e0010195 	mul	r1, r5, r1
  58:	e0610000 	rsb	r0, r1, r0
  5c:	e5825000 	str	r5, [r2]
  60:	e5830000 	str	r0, [r3]
  64:	e5920000 	ldr	r0, [r2]
  68:	e35c0000 	cmp	ip, #0
  6c:	12600000 	rsbne	r0, r0, #0
  70:	15820000 	strne	r0, [r2]
  74:	e3580000 	cmp	r8, #0
  78:	12600000 	rsbne	r0, r0, #0
  7c:	15820000 	strne	r0, [r2]
  80:	e8bd01f0 	pop	{r4, r5, r6, r7, r8}
  84:	e12fff1e 	bx	lr
  88:	e3a0c000 	mov	ip, #0
  8c:	e582c000 	str	ip, [r2]
  90:	e5830000 	str	r0, [r3]
  94:	e5920000 	ldr	r0, [r2]
  98:	eafffff8 	b	80 <_ZN4Math6divideIlEET_S1_S1_PS1_S2_+0x80>
  9c:	e3e01000 	mvn	r1, #0
  a0:	e5821000 	str	r1, [r2]
  a4:	e5831000 	str	r1, [r3]
  a8:	e5920000 	ldr	r0, [r2]
  ac:	eafffff3 	b	80 <_ZN4Math6divideIlEET_S1_S1_PS1_S2_+0x80>

Disassembly of section .text._ZN4Math13getDigitCountIlEET_S1_S1_:

00000000 <_ZN4Math13getDigitCountIlEET_S1_S1_>:
   0:	e92d4030 	push	{r4, r5, lr}
   4:	e3500000 	cmp	r0, #0
   8:	e24dd00c 	sub	sp, sp, #12
   c:	e3a04000 	mov	r4, #0
  10:	e1a05001 	mov	r5, r1
  14:	e58d4004 	str	r4, [sp, #4]
  18:	e58d4000 	str	r4, [sp]
  1c:	da000007 	ble	40 <_ZN4Math13getDigitCountIlEET_S1_S1_+0x40>
  20:	e1a01005 	mov	r1, r5
  24:	e28d2004 	add	r2, sp, #4
  28:	e1a0300d 	mov	r3, sp
  2c:	ebfffffe 	bl	0 <_ZN4Math13getDigitCountIlEET_S1_S1_>
  30:	e59d0004 	ldr	r0, [sp, #4]
  34:	e3500000 	cmp	r0, #0
  38:	e2844001 	add	r4, r4, #1
  3c:	cafffff7 	bgt	20 <_ZN4Math13getDigitCountIlEET_S1_S1_+0x20>
  40:	e1a00004 	mov	r0, r4
  44:	e28dd00c 	add	sp, sp, #12
  48:	e8bd4030 	pop	{r4, r5, lr}
  4c:	e12fff1e 	bx	lr

Disassembly of section .rodata:

00000000 <_ZZN7Console5kbaseElllE3C.0>:
   0:	33323130 	teqcc	r2, #48, 2
   4:	37363534 			; <UNDEFINED> instruction: 0x37363534
   8:	42413938 	submi	r3, r1, #56, 18	; 0xe0000
   c:	46454443 	strbmi	r4, [r5], -r3, asr #8
  10:	4a494847 	bmi	1252134 <_ZN7Console5kbaseEll+0x1250cc0>
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
 10c:	4e4f445b 	mcrmi	4, 2, r4, cr15, cr11, {2}
 110:	00095d45 	andeq	r5, r9, r5, asr #26
 114:	45544e49 	ldrbmi	r4, [r4, #-3657]	; 0xfffff1b7
 118:	50555252 	subspl	r5, r5, r2, asr r2
 11c:	00000054 	andeq	r0, r0, r4, asr r0
 120:	636c6557 	cmnvs	ip, #364904448	; 0x15c00000
 124:	20656d6f 	rsbcs	r6, r5, pc, ror #26
 128:	4d206f74 	stcmi	15, cr6, [r0, #-464]!	; 0xfffffe30
 12c:	66646e69 	strbtvs	r6, [r4], -r9, ror #28
 130:	6579616c 	ldrbvs	r6, [r9, #-364]!	; 0xfffffe94
 134:	61202c72 	teqvs	r0, r2, ror ip
 138:	73756320 	cmnvc	r5, #32, 6	; 0x80000000
 13c:	206d6f74 	rsbcs	r6, sp, r4, ror pc
 140:	70736172 	rsbsvc	r6, r3, r2, ror r1
 144:	72726562 	rsbsvc	r6, r2, #411041792	; 0x18800000
 148:	69702079 	ldmdbvs	r0!, {r0, r3, r4, r5, r6, sp}^
 14c:	72656b20 	rsbvc	r6, r5, #32, 22	; 0x8000
 150:	206c656e 	rsbcs	r6, ip, lr, ror #10
 154:	74697277 	strbtvc	r7, [r9], #-631	; 0xfffffd89
 158:	206e6574 	rsbcs	r6, lr, r4, ror r5
 15c:	43206e69 	teqmi	r0, #1680	; 0x690
 160:	000a2b2b 	andeq	r2, sl, fp, lsr #22
 164:	6c697542 	cfstr64vs	mvdx7, [r9], #-264	; 0xfffffef8
 168:	00203a64 	eoreq	r3, r0, r4, ror #20
 16c:	2e302e30 	mrccs	14, 1, r2, cr0, cr0, {1}
 170:	00323236 	eorseq	r3, r2, r6, lsr r2
 174:	000a0a0a 	andeq	r0, sl, sl, lsl #20
 178:	74696157 	strbtvc	r6, [r9], #-343	; 0xfffffea9
 17c:	3a676e69 	bcc	19dbb28 <_ZN7Console5kbaseEll+0x19da6b4>
 180:	00000020 	andeq	r0, r0, r0, lsr #32
 184:	0000002e 	andeq	r0, r0, lr, lsr #32
 188:	54535b0a 	ldrbpl	r5, [r3], #-2826	; 0xfffff4f6
 18c:	49545241 	ldmdbmi	r4, {r0, r6, r9, ip, lr}^
 190:	0a5d474e 	beq	1751ed0 <_ZN7Console5kbaseEll+0x1750a5c>
 194:	0000000a 	andeq	r0, r0, sl
 198:	74696e49 	strbtvc	r6, [r9], #-3657	; 0xfffff1b7
 19c:	696c6169 	stmdbvs	ip!, {r0, r3, r5, r6, r8, sp, lr}^
 1a0:	2064657a 	rsbcs	r6, r4, sl, ror r5
 1a4:	65676170 	strbvs	r6, [r7, #-368]!	; 0xfffffe90
 1a8:	62617420 	rsbvs	r7, r1, #32, 8	; 0x20000000
 1ac:	0000656c 	andeq	r6, r0, ip, ror #10
 1b0:	65746e49 	ldrbvs	r6, [r4, #-3657]!	; 0xfffff1b7
 1b4:	70757272 	rsbsvc	r7, r5, r2, ror r2
 1b8:	65762074 	ldrbvs	r2, [r6, #-116]!	; 0xffffff8c
 1bc:	726f7463 	rsbvc	r7, pc, #1660944384	; 0x63000000
 1c0:	4e452073 	mcrmi	0, 2, r2, cr5, cr3, {3}
 1c4:	454c4241 	strbmi	r4, [ip, #-577]	; 0xfffffdbf
 1c8:	00000044 	andeq	r0, r0, r4, asr #32
 1cc:	756f6241 	strbvc	r6, [pc, #-577]!	; ffffff93 <_ZN7Console5kbaseEll+0xffffeb1f>
 1d0:	6f742074 	svcvs	0x00742074
 1d4:	72687420 	rsbvc	r7, r8, #32, 8	; 0x20000000
 1d8:	6120776f 	teqvs	r0, pc, ror #14
 1dc:	5753206e 	ldrbpl	r2, [r3, -lr, rrx]
 1e0:	78652049 	stmdavc	r5!, {r0, r3, r6, sp}^
 1e4:	74706563 	ldrbtvc	r6, [r0], #-1379	; 0xfffffa9d
 1e8:	2e6e6f69 	cdpcs	15, 6, cr6, cr14, cr9, {3}
 1ec:	000a2e2e 	andeq	r2, sl, lr, lsr #28
 1f0:	20495753 	subcs	r5, r9, r3, asr r7
 1f4:	65637845 	strbvs	r7, [r3, #-2117]!	; 0xfffff7bb
 1f8:	6f697470 	svcvs	0x00697470
 1fc:	6854206e 	ldmdavs	r4, {r1, r2, r3, r5, r6, sp}^
 200:	6e776f72 	mrcvs	15, 3, r6, cr7, cr2, {3}
 204:	00000000 	andeq	r0, r0, r0
 208:	654b0a0a 	strbvs	r0, [fp, #-2570]	; 0xfffff5f6
 20c:	6c656e72 	stclvs	14, cr6, [r5], #-456	; 0xfffffe38
 210:	75687320 	strbvc	r7, [r8, #-800]!	; 0xfffffce0
 214:	6e697474 	mcrvs	4, 3, r7, cr9, cr4, {3}
 218:	6f642067 	svcvs	0x00642067
 21c:	2e2e6e77 	mcrcs	14, 1, r6, cr14, cr7, {3}
 220:	0000002e 	andeq	r0, r0, lr, lsr #32
 224:	6f727265 	svcvs	0x00727265
 228:	55203a72 	strpl	r3, [r0, #-2674]!	; 0xfffff58e
 22c:	7075736e 	rsbsvc	r7, r5, lr, ror #6
 230:	74726f70 	ldrbtvc	r6, [r2], #-3952	; 0xfffff090
 234:	62206465 	eorvs	r6, r0, #1694498816	; 0x65000000
 238:	20657361 	rsbcs	r7, r5, r1, ror #6
 23c:	6d206e69 	stcvs	14, cr6, [r0, #-420]!	; 0xfffffe5c
 240:	65687461 	strbvs	r7, [r8, #-1121]!	; 0xfffffb9f
 244:	6974616d 	ldmdbvs	r4!, {r0, r2, r3, r5, r6, r8, sp, lr}^
 248:	206c6163 	rsbcs	r6, ip, r3, ror #2
 24c:	7265706f 	rsbvc	r7, r5, #111	; 0x6f
 250:	6f697461 	svcvs	0x00697461
 254:	000a2e6e 	andeq	r2, sl, lr, ror #28

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
