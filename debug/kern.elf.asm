
kernel.elf:     file format elf32-littlearm


Disassembly of section .text:

00008000 <init_entry_point>:
    8000:	e59ff018 	ldr	pc, [pc, #24]	; 8020 <reset_handler>
    8004:	e59ff018 	ldr	pc, [pc, #24]	; 8024 <basic_handler>
    8008:	e59ff014 	ldr	pc, [pc, #20]	; 8024 <basic_handler>
    800c:	e59ff010 	ldr	pc, [pc, #16]	; 8024 <basic_handler>
    8010:	e59ff00c 	ldr	pc, [pc, #12]	; 8024 <basic_handler>
    8014:	e59ff008 	ldr	pc, [pc, #8]	; 8024 <basic_handler>
    8018:	e59ff004 	ldr	pc, [pc, #4]	; 8024 <basic_handler>
    801c:	e51ff000 	ldr	pc, [pc, #-0]	; 8024 <basic_handler>

00008020 <reset_handler>:
    8020:	00008028 	andeq	r8, r0, r8, lsr #32

00008024 <basic_handler>:
    8024:	0000804c 	andeq	r8, r0, ip, asr #32

00008028 <reset>:
    8028:	e3a00902 	mov	r0, #32768	; 0x8000
    802c:	e3a01000 	mov	r1, #0
    8030:	e8b003fc 	ldm	r0!, {r2, r3, r4, r5, r6, r7, r8, r9}
    8034:	e8a103fc 	stmia	r1!, {r2, r3, r4, r5, r6, r7, r8, r9}
    8038:	e8b003fc 	ldm	r0!, {r2, r3, r4, r5, r6, r7, r8, r9}
    803c:	e8a103fc 	stmia	r1!, {r2, r3, r4, r5, r6, r7, r8, r9}
    8040:	ea00000c 	b	8078 <init>
    8044:	e12fff1e 	bx	lr

00008048 <hang>:
    8048:	eafffffe 	b	8048 <hang>

0000804c <arm_interrupt_handler>:
    804c:	e24ee004 	sub	lr, lr, #4
    8050:	e92d401f 	push	{r0, r1, r2, r3, r4, lr}
    8054:	eb00041a 	bl	90c4 <irq_handler>
    8058:	e8fd801f 	ldm	sp!, {r0, r1, r2, r3, r4, pc}^
    805c:	e12fff1e 	bx	lr
    8060:	00001741 	andeq	r1, r0, r1, asr #14
    8064:	61656100 	cmnvs	r5, r0, lsl #2
    8068:	01006962 	tsteq	r0, r2, ror #18
    806c:	0000000d 	andeq	r0, r0, sp
    8070:	01080206 	tsteq	r8, r6, lsl #4
    8074:	012c0109 	teqeq	ip, r9, lsl #2

00008078 <init>:
    8078:	e3a0d702 	mov	sp, #524288	; 0x80000
    807c:	eb000442 	bl	918c <kmain>
    8080:	eaffffff 	b	8084 <hang$>

00008084 <hang$>:
    8084:	eafffffe 	b	8084 <hang$>
    8088:	00001541 	andeq	r1, r0, r1, asr #10
    808c:	61656100 	cmnvs	r5, r0, lsl #2
    8090:	01006962 	tsteq	r0, r2, ror #18
    8094:	0000000b 	andeq	r0, r0, fp
    8098:	01080106 	tsteq	r8, r6, lsl #2
    809c:	0000012c 	andeq	r0, r0, ip, lsr #2

000080a0 <_Z3absi>:
    80a0:	e3500000 	cmp	r0, #0
    80a4:	b2600000 	rsblt	r0, r0, #0
    80a8:	e12fff1e 	bx	lr

000080ac <_Z15getNumberLengthiiPi>:
    80ac:	e1a03000 	mov	r3, r0
    80b0:	e3a00000 	mov	r0, #0
    80b4:	e5820000 	str	r0, [r2]
    80b8:	e3a00001 	mov	r0, #1
    80bc:	ea000000 	b	80c4 <_Z15getNumberLengthiiPi+0x18>
    80c0:	e1a00002 	mov	r0, r2
    80c4:	e0020091 	mul	r2, r1, r0
    80c8:	e1520003 	cmp	r2, r3
    80cc:	bafffffb 	blt	80c0 <_Z15getNumberLengthiiPi+0x14>
    80d0:	e12fff1e 	bx	lr

000080d4 <_Z15getNumberLengthii>:
    80d4:	e1a03000 	mov	r3, r0
    80d8:	e3a00001 	mov	r0, #1
    80dc:	ea000000 	b	80e4 <_Z15getNumberLengthii+0x10>
    80e0:	e1a00002 	mov	r0, r2
    80e4:	e0020091 	mul	r2, r1, r0
    80e8:	e1530002 	cmp	r3, r2
    80ec:	cafffffb 	bgt	80e0 <_Z15getNumberLengthii+0xc>
    80f0:	e12fff1e 	bx	lr

000080f4 <_Z15getNumberLengthi>:
    80f4:	e3a03001 	mov	r3, #1
    80f8:	ea000000 	b	8100 <_Z15getNumberLengthi+0xc>
    80fc:	e1a03002 	mov	r3, r2
    8100:	e0832103 	add	r2, r3, r3, lsl #2
    8104:	e1a02082 	lsl	r2, r2, #1
    8108:	e1500002 	cmp	r0, r2
    810c:	cafffffa 	bgt	80fc <_Z15getNumberLengthi+0x8>
    8110:	e1a00003 	mov	r0, r3
    8114:	e12fff1e 	bx	lr

00008118 <_Z6divideiiPiS_>:
    8118:	e3510000 	cmp	r1, #0
    811c:	e92d00f0 	push	{r4, r5, r6, r7}
    8120:	0a00001d 	beq	819c <_Z6divideiiPiS_+0x84>
    8124:	e3510001 	cmp	r1, #1
    8128:	05820000 	streq	r0, [r2]
    812c:	03a02000 	moveq	r2, #0
    8130:	05832000 	streq	r2, [r3]
    8134:	0a000018 	beq	819c <_Z6divideiiPiS_+0x84>
    8138:	e3a04000 	mov	r4, #0
    813c:	e3500000 	cmp	r0, #0
    8140:	b2600000 	rsblt	r0, r0, #0
    8144:	e1500004 	cmp	r0, r4
    8148:	e5824000 	str	r4, [r2]
    814c:	e5834000 	str	r4, [r3]
    8150:	0a000011 	beq	819c <_Z6divideiiPiS_+0x84>
    8154:	e3510000 	cmp	r1, #0
    8158:	b2611000 	rsblt	r1, r1, #0
    815c:	e050c001 	subs	ip, r0, r1
    8160:	4a000010 	bmi	81a8 <_Z6divideiiPiS_+0x90>
    8164:	e061c00c 	rsb	ip, r1, ip
    8168:	e5925000 	ldr	r5, [r2]
    816c:	e2617000 	rsb	r7, r1, #0
    8170:	e08c6001 	add	r6, ip, r1
    8174:	ea000001 	b	8180 <_Z6divideiiPiS_+0x68>
    8178:	e09c6001 	adds	r6, ip, r1
    817c:	4a000008 	bmi	81a4 <_Z6divideiiPiS_+0x8c>
    8180:	e2844001 	add	r4, r4, #1
    8184:	e1540006 	cmp	r4, r6
    8188:	e1a00006 	mov	r0, r6
    818c:	e08cc007 	add	ip, ip, r7
    8190:	e2855001 	add	r5, r5, #1
    8194:	bafffff7 	blt	8178 <_Z6divideiiPiS_+0x60>
    8198:	e5825000 	str	r5, [r2]
    819c:	e8bd00f0 	pop	{r4, r5, r6, r7}
    81a0:	e12fff1e 	bx	lr
    81a4:	e5825000 	str	r5, [r2]
    81a8:	e5830000 	str	r0, [r3]
    81ac:	eafffffa 	b	819c <_Z6divideiiPiS_+0x84>

000081b0 <_Z6divideii>:
    81b0:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    81b4:	e24dd00c 	sub	sp, sp, #12
    81b8:	e3a0c000 	mov	ip, #0
    81bc:	e28d2004 	add	r2, sp, #4
    81c0:	e1a0300d 	mov	r3, sp
    81c4:	e58dc004 	str	ip, [sp, #4]
    81c8:	e58dc000 	str	ip, [sp]
    81cc:	ebffffd1 	bl	8118 <_Z6divideiiPiS_>
    81d0:	e59d0004 	ldr	r0, [sp, #4]
    81d4:	e28dd00c 	add	sp, sp, #12
    81d8:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
    81dc:	e12fff1e 	bx	lr

000081e0 <_Z6moduloii>:
    81e0:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    81e4:	e24dd00c 	sub	sp, sp, #12
    81e8:	e3a0c000 	mov	ip, #0
    81ec:	e28d2004 	add	r2, sp, #4
    81f0:	e1a0300d 	mov	r3, sp
    81f4:	e58dc004 	str	ip, [sp, #4]
    81f8:	e58dc000 	str	ip, [sp]
    81fc:	ebffffc5 	bl	8118 <_Z6divideiiPiS_>
    8200:	e59d0000 	ldr	r0, [sp]
    8204:	e28dd00c 	add	sp, sp, #12
    8208:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
    820c:	e12fff1e 	bx	lr

00008210 <_Z5allocj>:
    8210:	e59f30b0 	ldr	r3, [pc, #176]	; 82c8 <_Z5allocj+0xb8>
    8214:	e5933000 	ldr	r3, [r3]
    8218:	e5d32004 	ldrb	r2, [r3, #4]
    821c:	e3520000 	cmp	r2, #0
    8220:	e92d0070 	push	{r4, r5, r6}
    8224:	e1a05000 	mov	r5, r0
    8228:	0a000003 	beq	823c <_Z5allocj+0x2c>
    822c:	e5933000 	ldr	r3, [r3]
    8230:	e5d30004 	ldrb	r0, [r3, #4]
    8234:	e3500000 	cmp	r0, #0
    8238:	1afffffb 	bne	822c <_Z5allocj+0x1c>
    823c:	e5936008 	ldr	r6, [r3, #8]
    8240:	e593100c 	ldr	r1, [r3, #12]
    8244:	e3a04000 	mov	r4, #0
    8248:	e0860101 	add	r0, r6, r1, lsl #2
    824c:	e1550004 	cmp	r5, r4
    8250:	e2836b01 	add	r6, r3, #1024	; 0x400
    8254:	e5c34404 	strb	r4, [r3, #1028]	; 0x404
    8258:	e5830408 	str	r0, [r3, #1032]	; 0x408
    825c:	e583540c 	str	r5, [r3, #1036]	; 0x40c
    8260:	0a000013 	beq	82b4 <_Z5allocj+0xa4>
    8264:	e245c001 	sub	ip, r5, #1
    8268:	e1a02000 	mov	r2, r0
    826c:	e3550001 	cmp	r5, #1
    8270:	e20c1001 	and	r1, ip, #1
    8274:	e4824004 	str	r4, [r2], #4
    8278:	e3a0c001 	mov	ip, #1
    827c:	9a00000c 	bls	82b4 <_Z5allocj+0xa4>
    8280:	e3510000 	cmp	r1, #0
    8284:	0a000003 	beq	8298 <_Z5allocj+0x88>
    8288:	e3a0c002 	mov	ip, #2
    828c:	e155000c 	cmp	r5, ip
    8290:	e4824004 	str	r4, [r2], #4
    8294:	9a000006 	bls	82b4 <_Z5allocj+0xa4>
    8298:	e1a01002 	mov	r1, r2
    829c:	e4814004 	str	r4, [r1], #4
    82a0:	e28cc002 	add	ip, ip, #2
    82a4:	e155000c 	cmp	r5, ip
    82a8:	e5824004 	str	r4, [r2, #4]
    82ac:	e2812004 	add	r2, r1, #4
    82b0:	8afffff8 	bhi	8298 <_Z5allocj+0x88>
    82b4:	e3a02001 	mov	r2, #1
    82b8:	e5836000 	str	r6, [r3]
    82bc:	e5c32004 	strb	r2, [r3, #4]
    82c0:	e8bd0070 	pop	{r4, r5, r6}
    82c4:	e12fff1e 	bx	lr
    82c8:	00009d24 	andeq	r9, r0, r4, lsr #26

000082cc <_Z15init_page_tablev>:
    82cc:	e59f1018 	ldr	r1, [pc, #24]	; 82ec <_Z15init_page_tablev+0x20>
    82d0:	e3a0380f 	mov	r3, #983040	; 0xf0000
    82d4:	e3a00000 	mov	r0, #0
    82d8:	e3a02aff 	mov	r2, #1044480	; 0xff000
    82dc:	e5813000 	str	r3, [r1]
    82e0:	e5c30004 	strb	r0, [r3, #4]
    82e4:	e5832008 	str	r2, [r3, #8]
    82e8:	e12fff1e 	bx	lr
    82ec:	00009d24 	andeq	r9, r0, r4, lsr #26

000082f0 <_Z10irq_enablev>:
    82f0:	e59f3018 	ldr	r3, [pc, #24]	; 8310 <_Z10irq_enablev+0x20>
    82f4:	e3e01000 	mvn	r1, #0
    82f8:	e3a020ff 	mov	r2, #255	; 0xff
    82fc:	e5831840 	str	r1, [r3, #2112]	; 0x840
    8300:	e3a00001 	mov	r0, #1
    8304:	e5831850 	str	r1, [r3, #2128]	; 0x850
    8308:	e5832860 	str	r2, [r3, #2144]	; 0x860
    830c:	e12fff1e 	bx	lr
    8310:	2000b000 	andcs	fp, r0, r0

00008314 <_Z8irq_testv>:
    8314:	ef0000ff 	svc	0x000000ff
    8318:	e12fff1e 	bx	lr

0000831c <_ZN12RaspberryLib5GET32Ej>:
    831c:	e5900000 	ldr	r0, [r0]
    8320:	e12fff1e 	bx	lr

00008324 <_ZN12RaspberryLib5PUT32Ejj>:
    8324:	e5801000 	str	r1, [r0]
    8328:	e12fff1e 	bx	lr

0000832c <_ZN12RaspberryLib4GET4Ej>:
    832c:	e5d00000 	ldrb	r0, [r0]
    8330:	e12fff1e 	bx	lr

00008334 <_ZN12RaspberryLib4PUT4Ejc>:
    8334:	e5c01000 	strb	r1, [r0]
    8338:	e12fff1e 	bx	lr

0000833c <_ZN12RaspberryLib7SetGPIOEjj>:
    833c:	e59f2094 	ldr	r2, [pc, #148]	; 83d8 <_ZN12RaspberryLib7SetGPIOEjj+0x9c>
    8340:	e3510001 	cmp	r1, #1
    8344:	e59f3090 	ldr	r3, [pc, #144]	; 83dc <_ZN12RaspberryLib7SetGPIOEjj+0xa0>
    8348:	11a03002 	movne	r3, r2
    834c:	e350000a 	cmp	r0, #10
    8350:	959f1088 	ldrls	r1, [pc, #136]	; 83e0 <_ZN12RaspberryLib7SetGPIOEjj+0xa4>
    8354:	93a0c001 	movls	ip, #1
    8358:	9a000018 	bls	83c0 <_ZN12RaspberryLib7SetGPIOEjj+0x84>
    835c:	e59f2080 	ldr	r2, [pc, #128]	; 83e4 <_ZN12RaspberryLib7SetGPIOEjj+0xa8>
    8360:	e240100b 	sub	r1, r0, #11
    8364:	e082c291 	umull	ip, r2, r1, r2
    8368:	e240000a 	sub	r0, r0, #10
    836c:	e1a011a2 	lsr	r1, r2, #3
    8370:	e350000a 	cmp	r0, #10
    8374:	e2012001 	and	r2, r1, #1
    8378:	e3a0c001 	mov	ip, #1
    837c:	9a000009 	bls	83a8 <_ZN12RaspberryLib7SetGPIOEjj+0x6c>
    8380:	e3520000 	cmp	r2, #0
    8384:	0a000003 	beq	8398 <_ZN12RaspberryLib7SetGPIOEjj+0x5c>
    8388:	e240000a 	sub	r0, r0, #10
    838c:	e350000a 	cmp	r0, #10
    8390:	e3a0c002 	mov	ip, #2
    8394:	9a000003 	bls	83a8 <_ZN12RaspberryLib7SetGPIOEjj+0x6c>
    8398:	e2400014 	sub	r0, r0, #20
    839c:	e350000a 	cmp	r0, #10
    83a0:	e28cc002 	add	ip, ip, #2
    83a4:	8afffffb 	bhi	8398 <_ZN12RaspberryLib7SetGPIOEjj+0x5c>
    83a8:	e1a0110c 	lsl	r1, ip, #2
    83ac:	e3a02001 	mov	r2, #1
    83b0:	e1a0c20c 	lsl	ip, ip, #4
    83b4:	e1a0cc12 	lsl	ip, r2, ip
    83b8:	e2811202 	add	r1, r1, #536870912	; 0x20000000
    83bc:	e2811602 	add	r1, r1, #2097152	; 0x200000
    83c0:	e0800080 	add	r0, r0, r0, lsl #1
    83c4:	e3a02001 	mov	r2, #1
    83c8:	e1a00012 	lsl	r0, r2, r0
    83cc:	e5810000 	str	r0, [r1]
    83d0:	e583c000 	str	ip, [r3]
    83d4:	e12fff1e 	bx	lr
    83d8:	2020001c 	eorcs	r0, r0, ip, lsl r0
    83dc:	20200028 	eorcs	r0, r0, r8, lsr #32
    83e0:	20200000 	eorcs	r0, r0, r0
    83e4:	cccccccd 	stclgt	12, cr12, [ip], {205}	; 0xcd

000083e8 <_ZN12RaspberryLib12CheckCounterEv>:
    83e8:	e59f3004 	ldr	r3, [pc, #4]	; 83f4 <_ZN12RaspberryLib12CheckCounterEv+0xc>
    83ec:	e5930004 	ldr	r0, [r3, #4]
    83f0:	e12fff1e 	bx	lr
    83f4:	20003000 	andcs	r3, r0, r0

000083f8 <_ZN12RaspberryLib9WaitQuickEj>:
    83f8:	e59f3014 	ldr	r3, [pc, #20]	; 8414 <_ZN12RaspberryLib9WaitQuickEj+0x1c>
    83fc:	e5932004 	ldr	r2, [r3, #4]
    8400:	e0802002 	add	r2, r0, r2
    8404:	e5931004 	ldr	r1, [r3, #4]
    8408:	e1520001 	cmp	r2, r1
    840c:	8afffffc 	bhi	8404 <_ZN12RaspberryLib9WaitQuickEj+0xc>
    8410:	e12fff1e 	bx	lr
    8414:	20003000 	andcs	r3, r0, r0

00008418 <_ZN12RaspberryLib4WaitEj>:
    8418:	e59f301c 	ldr	r3, [pc, #28]	; 843c <_ZN12RaspberryLib4WaitEj+0x24>
    841c:	e0801100 	add	r1, r0, r0, lsl #2
    8420:	e5932004 	ldr	r2, [r3, #4]
    8424:	e0810101 	add	r0, r1, r1, lsl #2
    8428:	e0821280 	add	r1, r2, r0, lsl #5
    842c:	e593c004 	ldr	ip, [r3, #4]
    8430:	e151000c 	cmp	r1, ip
    8434:	8afffffc 	bhi	842c <_ZN12RaspberryLib4WaitEj+0x14>
    8438:	e12fff1e 	bx	lr
    843c:	20003000 	andcs	r3, r0, r0

00008440 <_ZN12RaspberryLib5BlinkEjj>:
    8440:	e92d40f8 	push	{r3, r4, r5, r6, r7, lr}
    8444:	e2505000 	subs	r5, r0, #0
    8448:	0a000016 	beq	84a8 <_ZN12RaspberryLib5BlinkEjj+0x68>
    844c:	e0810101 	add	r0, r1, r1, lsl #2
    8450:	e59f4058 	ldr	r4, [pc, #88]	; 84b0 <_ZN12RaspberryLib5BlinkEjj+0x70>
    8454:	e0801100 	add	r1, r0, r0, lsl #2
    8458:	e1a06281 	lsl	r6, r1, #5
    845c:	e1a07004 	mov	r7, r4
    8460:	e3a00010 	mov	r0, #16
    8464:	e3a01001 	mov	r1, #1
    8468:	ebffffb3 	bl	833c <_ZN12RaspberryLib7SetGPIOEjj>
    846c:	e5942004 	ldr	r2, [r4, #4]
    8470:	e0862002 	add	r2, r6, r2
    8474:	e5943004 	ldr	r3, [r4, #4]
    8478:	e1520003 	cmp	r2, r3
    847c:	8afffffc 	bhi	8474 <_ZN12RaspberryLib5BlinkEjj+0x34>
    8480:	e3a00010 	mov	r0, #16
    8484:	e3a01000 	mov	r1, #0
    8488:	ebffffab 	bl	833c <_ZN12RaspberryLib7SetGPIOEjj>
    848c:	e597c004 	ldr	ip, [r7, #4]
    8490:	e086200c 	add	r2, r6, ip
    8494:	e594e004 	ldr	lr, [r4, #4]
    8498:	e152000e 	cmp	r2, lr
    849c:	8afffffc 	bhi	8494 <_ZN12RaspberryLib5BlinkEjj+0x54>
    84a0:	e2555001 	subs	r5, r5, #1
    84a4:	1affffed 	bne	8460 <_ZN12RaspberryLib5BlinkEjj+0x20>
    84a8:	e8bd40f8 	pop	{r3, r4, r5, r6, r7, lr}
    84ac:	e12fff1e 	bx	lr
    84b0:	20003000 	andcs	r3, r0, r0

000084b4 <_ZN12RaspberryLib7PiFaultEPKc>:
    84b4:	e3a00004 	mov	r0, #4
    84b8:	e3a010c8 	mov	r1, #200	; 0xc8
    84bc:	eaffffdf 	b	8440 <_ZN12RaspberryLib5BlinkEjj>

000084c0 <_ZN12RaspberryLib12MailboxWriteEcj>:
    84c0:	e59f303c 	ldr	r3, [pc, #60]	; 8504 <_ZN12RaspberryLib12MailboxWriteEcj+0x44>
    84c4:	e5932898 	ldr	r2, [r3, #2200]	; 0x898
    84c8:	e3520000 	cmp	r2, #0
    84cc:	bafffffc 	blt	84c4 <_ZN12RaspberryLib12MailboxWriteEcj+0x4>
    84d0:	ee07cf15 	mcr	15, 0, ip, cr7, cr5, {0}
    84d4:	ee07cfd5 	mcr	15, 0, ip, cr7, cr5, {6}
    84d8:	ee07cf9a 	mcr	15, 0, ip, cr7, cr10, {4}
    84dc:	ee07cf95 	mcr	15, 0, ip, cr7, cr5, {4}
    84e0:	e59f301c 	ldr	r3, [pc, #28]	; 8504 <_ZN12RaspberryLib12MailboxWriteEcj+0x44>
    84e4:	e3c1100f 	bic	r1, r1, #15
    84e8:	e1810000 	orr	r0, r1, r0
    84ec:	e58308a0 	str	r0, [r3, #2208]	; 0x8a0
    84f0:	ee07cf15 	mcr	15, 0, ip, cr7, cr5, {0}
    84f4:	ee07cfd5 	mcr	15, 0, ip, cr7, cr5, {6}
    84f8:	ee07cf9a 	mcr	15, 0, ip, cr7, cr10, {4}
    84fc:	ee07cf95 	mcr	15, 0, ip, cr7, cr5, {4}
    8500:	e12fff1e 	bx	lr
    8504:	2000b000 	andcs	fp, r0, r0

00008508 <_ZN12RaspberryLib12MailboxCheckEc>:
    8508:	e92d4010 	push	{r4, lr}
    850c:	e59f2068 	ldr	r2, [pc, #104]	; 857c <_ZN12RaspberryLib12MailboxCheckEc+0x74>
    8510:	e59f4068 	ldr	r4, [pc, #104]	; 8580 <_ZN12RaspberryLib12MailboxCheckEc+0x78>
    8514:	e3a01000 	mov	r1, #0
    8518:	e5923898 	ldr	r3, [r2, #2200]	; 0x898
    851c:	e3130101 	tst	r3, #1073741824	; 0x40000000
    8520:	1a00000e 	bne	8560 <_ZN12RaspberryLib12MailboxCheckEc+0x58>
    8524:	ee07cf15 	mcr	15, 0, ip, cr7, cr5, {0}
    8528:	ee07cfd5 	mcr	15, 0, ip, cr7, cr5, {6}
    852c:	ee07cf9a 	mcr	15, 0, ip, cr7, cr10, {4}
    8530:	ee07cf95 	mcr	15, 0, ip, cr7, cr5, {4}
    8534:	e5923880 	ldr	r3, [r2, #2176]	; 0x880
    8538:	ee07cf15 	mcr	15, 0, ip, cr7, cr5, {0}
    853c:	ee07cfd5 	mcr	15, 0, ip, cr7, cr5, {6}
    8540:	ee07cf9a 	mcr	15, 0, ip, cr7, cr10, {4}
    8544:	ee07cf95 	mcr	15, 0, ip, cr7, cr5, {4}
    8548:	e203c00f 	and	ip, r3, #15
    854c:	e15c0000 	cmp	ip, r0
    8550:	1afffff0 	bne	8518 <_ZN12RaspberryLib12MailboxCheckEc+0x10>
    8554:	e3c3000f 	bic	r0, r3, #15
    8558:	e8bd4010 	pop	{r4, lr}
    855c:	e12fff1e 	bx	lr
    8560:	e1510004 	cmp	r1, r4
    8564:	92811001 	addls	r1, r1, #1
    8568:	9affffea 	bls	8518 <_ZN12RaspberryLib12MailboxCheckEc+0x10>
    856c:	e59f0010 	ldr	r0, [pc, #16]	; 8584 <_ZN12RaspberryLib12MailboxCheckEc+0x7c>
    8570:	ebffffcf 	bl	84b4 <_ZN12RaspberryLib7PiFaultEPKc>
    8574:	e3e00000 	mvn	r0, #0
    8578:	eafffff6 	b	8558 <_ZN12RaspberryLib12MailboxCheckEc+0x50>
    857c:	2000b000 	andcs	fp, r0, r0
    8580:	000fffff 	strdeq	pc, [pc], -pc	; <UNPREDICTABLE>
    8584:	00009e4c 	andeq	r9, r0, ip, asr #28

00008588 <_ZN12RaspberryLib18AcquireFrameBufferEjj>:
    8588:	e3a03a02 	mov	r3, #8192	; 0x2000
    858c:	e1a0c001 	mov	ip, r1
    8590:	e92d4010 	push	{r4, lr}
    8594:	e3a02000 	mov	r2, #0
    8598:	e1a0e000 	mov	lr, r0
    859c:	e583c004 	str	ip, [r3, #4]
    85a0:	e583c00c 	str	ip, [r3, #12]
    85a4:	e3a0c018 	mov	ip, #24
    85a8:	e3a00001 	mov	r0, #1
    85ac:	e59f10e4 	ldr	r1, [pc, #228]	; 8698 <_ZN12RaspberryLib18AcquireFrameBufferEjj+0x110>
    85b0:	e583e000 	str	lr, [r3]
    85b4:	e583e008 	str	lr, [r3, #8]
    85b8:	e5832010 	str	r2, [r3, #16]
    85bc:	e583c014 	str	ip, [r3, #20]
    85c0:	e5832018 	str	r2, [r3, #24]
    85c4:	e583201c 	str	r2, [r3, #28]
    85c8:	e5832020 	str	r2, [r3, #32]
    85cc:	e5832024 	str	r2, [r3, #36]	; 0x24
    85d0:	e5c32028 	strb	r2, [r3, #40]	; 0x28
    85d4:	ebffffb9 	bl	84c0 <_ZN12RaspberryLib12MailboxWriteEcj>
    85d8:	e3a00001 	mov	r0, #1
    85dc:	ebffffc9 	bl	8508 <_ZN12RaspberryLib12MailboxCheckEc>
    85e0:	e3500000 	cmp	r0, #0
    85e4:	1a00000d 	bne	8620 <_ZN12RaspberryLib18AcquireFrameBufferEjj+0x98>
    85e8:	e3a02a02 	mov	r2, #8192	; 0x2000
    85ec:	e5923020 	ldr	r3, [r2, #32]
    85f0:	e3530000 	cmp	r3, #0
    85f4:	0a000024 	beq	868c <_ZN12RaspberryLib18AcquireFrameBufferEjj+0x104>
    85f8:	e5921010 	ldr	r1, [r2, #16]
    85fc:	e3510000 	cmp	r1, #0
    8600:	0a00001e 	beq	8680 <_ZN12RaspberryLib18AcquireFrameBufferEjj+0xf8>
    8604:	e3530101 	cmp	r3, #1073741824	; 0x40000000
    8608:	e3a0c001 	mov	ip, #1
    860c:	82833103 	addhi	r3, r3, #-1073741824	; 0xc0000000
    8610:	e3a00a02 	mov	r0, #8192	; 0x2000
    8614:	e5c2c028 	strb	ip, [r2, #40]	; 0x28
    8618:	e5803020 	str	r3, [r0, #32]
    861c:	ea000014 	b	8674 <_ZN12RaspberryLib18AcquireFrameBufferEjj+0xec>
    8620:	e3a00001 	mov	r0, #1
    8624:	ebffffb7 	bl	8508 <_ZN12RaspberryLib12MailboxCheckEc>
    8628:	e3500000 	cmp	r0, #0
    862c:	e59f4068 	ldr	r4, [pc, #104]	; 869c <_ZN12RaspberryLib18AcquireFrameBufferEjj+0x114>
    8630:	e3a00001 	mov	r0, #1
    8634:	0a00000a 	beq	8664 <_ZN12RaspberryLib18AcquireFrameBufferEjj+0xdc>
    8638:	ebffffb2 	bl	8508 <_ZN12RaspberryLib12MailboxCheckEc>
    863c:	e3500000 	cmp	r0, #0
    8640:	e2444001 	sub	r4, r4, #1
    8644:	0a000006 	beq	8664 <_ZN12RaspberryLib18AcquireFrameBufferEjj+0xdc>
    8648:	e2544001 	subs	r4, r4, #1
    864c:	3affffe5 	bcc	85e8 <_ZN12RaspberryLib18AcquireFrameBufferEjj+0x60>
    8650:	e3a00001 	mov	r0, #1
    8654:	ebffffab 	bl	8508 <_ZN12RaspberryLib12MailboxCheckEc>
    8658:	e3500000 	cmp	r0, #0
    865c:	e3a00001 	mov	r0, #1
    8660:	1afffff4 	bne	8638 <_ZN12RaspberryLib18AcquireFrameBufferEjj+0xb0>
    8664:	e3540000 	cmp	r4, #0
    8668:	1affffde 	bne	85e8 <_ZN12RaspberryLib18AcquireFrameBufferEjj+0x60>
    866c:	e59f002c 	ldr	r0, [pc, #44]	; 86a0 <_ZN12RaspberryLib18AcquireFrameBufferEjj+0x118>
    8670:	ebffff8f 	bl	84b4 <_ZN12RaspberryLib7PiFaultEPKc>
    8674:	e3a00a02 	mov	r0, #8192	; 0x2000
    8678:	e8bd4010 	pop	{r4, lr}
    867c:	e12fff1e 	bx	lr
    8680:	e59f001c 	ldr	r0, [pc, #28]	; 86a4 <_ZN12RaspberryLib18AcquireFrameBufferEjj+0x11c>
    8684:	ebffff8a 	bl	84b4 <_ZN12RaspberryLib7PiFaultEPKc>
    8688:	eafffff9 	b	8674 <_ZN12RaspberryLib18AcquireFrameBufferEjj+0xec>
    868c:	e59f0014 	ldr	r0, [pc, #20]	; 86a8 <_ZN12RaspberryLib18AcquireFrameBufferEjj+0x120>
    8690:	ebffff87 	bl	84b4 <_ZN12RaspberryLib7PiFaultEPKc>
    8694:	eafffff6 	b	8674 <_ZN12RaspberryLib18AcquireFrameBufferEjj+0xec>
    8698:	40002000 	andmi	r2, r0, r0
    869c:	0000270f 	andeq	r2, r0, pc, lsl #14
    86a0:	00009e78 	andeq	r9, r0, r8, ror lr
    86a4:	00009f10 	andeq	r9, r0, r0, lsl pc
    86a8:	00009ec0 	andeq	r9, r0, r0, asr #29

000086ac <_ZN11gpu2dCanvas15initFrameBufferEv>:
    86ac:	e5901004 	ldr	r1, [r0, #4]
    86b0:	e92d4010 	push	{r4, lr}
    86b4:	e2811101 	add	r1, r1, #1073741824	; 0x40000000
    86b8:	e1a04000 	mov	r4, r0
    86bc:	e3a00001 	mov	r0, #1
    86c0:	ebffff7e 	bl	84c0 <_ZN12RaspberryLib12MailboxWriteEcj>
    86c4:	e3a00001 	mov	r0, #1
    86c8:	ebffff8e 	bl	8508 <_ZN12RaspberryLib12MailboxCheckEc>
    86cc:	e3500000 	cmp	r0, #0
    86d0:	1afffffb 	bne	86c4 <_ZN11gpu2dCanvas15initFrameBufferEv+0x18>
    86d4:	e5943004 	ldr	r3, [r4, #4]
    86d8:	e5930020 	ldr	r0, [r3, #32]
    86dc:	e3500000 	cmp	r0, #0
    86e0:	0a000009 	beq	870c <_ZN11gpu2dCanvas15initFrameBufferEv+0x60>
    86e4:	e5932010 	ldr	r2, [r3, #16]
    86e8:	e3520000 	cmp	r2, #0
    86ec:	01a00002 	moveq	r0, r2
    86f0:	0a000005 	beq	870c <_ZN11gpu2dCanvas15initFrameBufferEv+0x60>
    86f4:	e3500101 	cmp	r0, #1073741824	; 0x40000000
    86f8:	82800103 	addhi	r0, r0, #-1073741824	; 0xc0000000
    86fc:	e3a0c001 	mov	ip, #1
    8700:	e5830020 	str	r0, [r3, #32]
    8704:	e5c4c000 	strb	ip, [r4]
    8708:	e1a0000c 	mov	r0, ip
    870c:	e8bd4010 	pop	{r4, lr}
    8710:	e12fff1e 	bx	lr

00008714 <_ZN11gpu2dCanvasC1Eb>:
    8714:	e92d4038 	push	{r3, r4, r5, lr}
    8718:	e1a04000 	mov	r4, r0
    871c:	e5c41002 	strb	r1, [r4, #2]
    8720:	e3a05a02 	mov	r5, #8192	; 0x2000
    8724:	e3a0cb01 	mov	ip, #1024	; 0x400
    8728:	e3510000 	cmp	r1, #0
    872c:	e3a01000 	mov	r1, #0
    8730:	e5845004 	str	r5, [r4, #4]
    8734:	e5c41000 	strb	r1, [r4]
    8738:	e3a00c03 	mov	r0, #768	; 0x300
    873c:	e585c000 	str	ip, [r5]
    8740:	e585c008 	str	ip, [r5, #8]
    8744:	13a0cc06 	movne	ip, #1536	; 0x600
    8748:	e3a03a02 	mov	r3, #8192	; 0x2000
    874c:	0585000c 	streq	r0, [r5, #12]
    8750:	1585c00c 	strne	ip, [r5, #12]
    8754:	e5850004 	str	r0, [r5, #4]
    8758:	e3a02018 	mov	r2, #24
    875c:	e3a05000 	mov	r5, #0
    8760:	e1a00004 	mov	r0, r4
    8764:	e5832014 	str	r2, [r3, #20]
    8768:	e5835018 	str	r5, [r3, #24]
    876c:	e583501c 	str	r5, [r3, #28]
    8770:	e5835010 	str	r5, [r3, #16]
    8774:	e5835020 	str	r5, [r3, #32]
    8778:	e5835024 	str	r5, [r3, #36]	; 0x24
    877c:	ebffffca 	bl	86ac <_ZN11gpu2dCanvas15initFrameBufferEv>
    8780:	e1500005 	cmp	r0, r5
    8784:	15c45001 	strbne	r5, [r4, #1]
    8788:	e1a00004 	mov	r0, r4
    878c:	e8bd4038 	pop	{r3, r4, r5, lr}
    8790:	e12fff1e 	bx	lr

00008794 <_ZN11gpu2dCanvasC1Ev>:
    8794:	e92d4010 	push	{r4, lr}
    8798:	e24dd008 	sub	sp, sp, #8
    879c:	e1a04000 	mov	r4, r0
    87a0:	e3a01001 	mov	r1, #1
    87a4:	e1a0000d 	mov	r0, sp
    87a8:	ebffffd9 	bl	8714 <_ZN11gpu2dCanvasC1Eb>
    87ac:	e1a00004 	mov	r0, r4
    87b0:	e28dd008 	add	sp, sp, #8
    87b4:	e8bd4010 	pop	{r4, lr}
    87b8:	e12fff1e 	bx	lr

000087bc <_ZN11gpu2dCanvas4DrawEv>:
    87bc:	e5d03000 	ldrb	r3, [r0]
    87c0:	e3530000 	cmp	r3, #0
    87c4:	e92d4010 	push	{r4, lr}
    87c8:	e1a04000 	mov	r4, r0
    87cc:	0a00000d 	beq	8808 <_ZN11gpu2dCanvas4DrawEv+0x4c>
    87d0:	e5d00002 	ldrb	r0, [r0, #2]
    87d4:	e3500000 	cmp	r0, #0
    87d8:	0a00000a 	beq	8808 <_ZN11gpu2dCanvas4DrawEv+0x4c>
    87dc:	e5d4e001 	ldrb	lr, [r4, #1]
    87e0:	e594c004 	ldr	ip, [r4, #4]
    87e4:	e35e0000 	cmp	lr, #0
    87e8:	059c2004 	ldreq	r2, [ip, #4]
    87ec:	13a02000 	movne	r2, #0
    87f0:	e58c201c 	str	r2, [ip, #28]
    87f4:	e1a00004 	mov	r0, r4
    87f8:	ebffffab 	bl	86ac <_ZN11gpu2dCanvas15initFrameBufferEv>
    87fc:	e5d42001 	ldrb	r2, [r4, #1]
    8800:	e2221001 	eor	r1, r2, #1
    8804:	e5c41001 	strb	r1, [r4, #1]
    8808:	e8bd4010 	pop	{r4, lr}
    880c:	e12fff1e 	bx	lr

00008810 <_ZN11gpu2dCanvas5ClearEj>:
    8810:	e5d03000 	ldrb	r3, [r0]
    8814:	e3530000 	cmp	r3, #0
    8818:	e92d05f0 	push	{r4, r5, r6, r7, r8, sl}
    881c:	0a000029 	beq	88c8 <_ZN11gpu2dCanvas5ClearEj+0xb8>
    8820:	e5d05001 	ldrb	r5, [r0, #1]
    8824:	e3550000 	cmp	r5, #0
    8828:	0a000028 	beq	88d0 <_ZN11gpu2dCanvas5ClearEj+0xc0>
    882c:	e5903004 	ldr	r3, [r0, #4]
    8830:	e5932004 	ldr	r2, [r3, #4]
    8834:	e3a0a000 	mov	sl, #0
    8838:	e20178ff 	and	r7, r1, #16711680	; 0xff0000
    883c:	e2016cff 	and	r6, r1, #65280	; 0xff00
    8840:	e3520000 	cmp	r2, #0
    8844:	e1a05827 	lsr	r5, r7, #16
    8848:	e1a06426 	lsr	r6, r6, #8
    884c:	e20170ff 	and	r7, r1, #255	; 0xff
    8850:	13a08000 	movne	r8, #0
    8854:	0a00001b 	beq	88c8 <_ZN11gpu2dCanvas5ClearEj+0xb8>
    8858:	e5932000 	ldr	r2, [r3]
    885c:	e3520000 	cmp	r2, #0
    8860:	13a01000 	movne	r1, #0
    8864:	1088400a 	addne	r4, r8, sl
    8868:	11a0c001 	movne	ip, r1
    886c:	0a000011 	beq	88b8 <_ZN11gpu2dCanvas5ClearEj+0xa8>
    8870:	e5932010 	ldr	r2, [r3, #16]
    8874:	e0221294 	mla	r2, r4, r2, r1
    8878:	e5933020 	ldr	r3, [r3, #32]
    887c:	e7c25003 	strb	r5, [r2, r3]
    8880:	e5903004 	ldr	r3, [r0, #4]
    8884:	e5933020 	ldr	r3, [r3, #32]
    8888:	e0823003 	add	r3, r2, r3
    888c:	e5c36001 	strb	r6, [r3, #1]
    8890:	e5903004 	ldr	r3, [r0, #4]
    8894:	e5933020 	ldr	r3, [r3, #32]
    8898:	e0823003 	add	r3, r2, r3
    889c:	e5c37002 	strb	r7, [r3, #2]
    88a0:	e5903004 	ldr	r3, [r0, #4]
    88a4:	e5932000 	ldr	r2, [r3]
    88a8:	e28cc001 	add	ip, ip, #1
    88ac:	e152000c 	cmp	r2, ip
    88b0:	e2811003 	add	r1, r1, #3
    88b4:	8affffed 	bhi	8870 <_ZN11gpu2dCanvas5ClearEj+0x60>
    88b8:	e5932004 	ldr	r2, [r3, #4]
    88bc:	e2888001 	add	r8, r8, #1
    88c0:	e1520008 	cmp	r2, r8
    88c4:	8affffe3 	bhi	8858 <_ZN11gpu2dCanvas5ClearEj+0x48>
    88c8:	e8bd05f0 	pop	{r4, r5, r6, r7, r8, sl}
    88cc:	e12fff1e 	bx	lr
    88d0:	e5d0a002 	ldrb	sl, [r0, #2]
    88d4:	e5903004 	ldr	r3, [r0, #4]
    88d8:	e35a0000 	cmp	sl, #0
    88dc:	1593a004 	ldrne	sl, [r3, #4]
    88e0:	05932004 	ldreq	r2, [r3, #4]
    88e4:	11a0200a 	movne	r2, sl
    88e8:	eaffffd2 	b	8838 <_ZN11gpu2dCanvas5ClearEj+0x28>

000088ec <_ZN11gpu2dCanvas4syncEv>:
    88ec:	e5d03002 	ldrb	r3, [r0, #2]
    88f0:	e3530000 	cmp	r3, #0
    88f4:	e92d00f0 	push	{r4, r5, r6, r7}
    88f8:	0a000021 	beq	8984 <_ZN11gpu2dCanvas4syncEv+0x98>
    88fc:	e5903004 	ldr	r3, [r0, #4]
    8900:	e5935004 	ldr	r5, [r3, #4]
    8904:	e3550000 	cmp	r5, #0
    8908:	e5d06001 	ldrb	r6, [r0, #1]
    890c:	13a04000 	movne	r4, #0
    8910:	0a00001b 	beq	8984 <_ZN11gpu2dCanvas4syncEv+0x98>
    8914:	e5932000 	ldr	r2, [r3]
    8918:	e3520000 	cmp	r2, #0
    891c:	13a02000 	movne	r2, #0
    8920:	11a01002 	movne	r1, r2
    8924:	1a000001 	bne	8930 <_ZN11gpu2dCanvas4syncEv+0x44>
    8928:	ea000012 	b	8978 <_ZN11gpu2dCanvas4syncEv+0x8c>
    892c:	e5935004 	ldr	r5, [r3, #4]
    8930:	e593c020 	ldr	ip, [r3, #32]
    8934:	e5933010 	ldr	r3, [r3, #16]
    8938:	e0855004 	add	r5, r5, r4
    893c:	e082700c 	add	r7, r2, ip
    8940:	e02cc493 	mla	ip, r3, r4, ip
    8944:	e0030395 	mul	r3, r5, r3
    8948:	e3560000 	cmp	r6, #0
    894c:	17d2c00c 	ldrbne	ip, [r2, ip]
    8950:	07d73003 	ldrbeq	r3, [r7, r3]
    8954:	17c7c003 	strbne	ip, [r7, r3]
    8958:	07c2300c 	strbeq	r3, [r2, ip]
    895c:	e5903004 	ldr	r3, [r0, #4]
    8960:	e593c000 	ldr	ip, [r3]
    8964:	e2811001 	add	r1, r1, #1
    8968:	e15c0001 	cmp	ip, r1
    896c:	e2822003 	add	r2, r2, #3
    8970:	8affffed 	bhi	892c <_ZN11gpu2dCanvas4syncEv+0x40>
    8974:	e5935004 	ldr	r5, [r3, #4]
    8978:	e2844001 	add	r4, r4, #1
    897c:	e1540005 	cmp	r4, r5
    8980:	3affffe3 	bcc	8914 <_ZN11gpu2dCanvas4syncEv+0x28>
    8984:	e8bd00f0 	pop	{r4, r5, r6, r7}
    8988:	e12fff1e 	bx	lr

0000898c <_ZN11gpu2dCanvas8setPixelEjjj>:
    898c:	e5d0c001 	ldrb	ip, [r0, #1]
    8990:	e35c0000 	cmp	ip, #0
    8994:	e92d0030 	push	{r4, r5}
    8998:	1a000015 	bne	89f4 <_ZN11gpu2dCanvas8setPixelEjjj+0x68>
    899c:	e5d05002 	ldrb	r5, [r0, #2]
    89a0:	e590c004 	ldr	ip, [r0, #4]
    89a4:	e3550000 	cmp	r5, #0
    89a8:	159c5004 	ldrne	r5, [ip, #4]
    89ac:	e59c4010 	ldr	r4, [ip, #16]
    89b0:	e0852002 	add	r2, r5, r2
    89b4:	e0811081 	add	r1, r1, r1, lsl #1
    89b8:	e0211294 	mla	r1, r4, r2, r1
    89bc:	e59c2020 	ldr	r2, [ip, #32]
    89c0:	e1a0c823 	lsr	ip, r3, #16
    89c4:	e7c1c002 	strb	ip, [r1, r2]
    89c8:	e590c004 	ldr	ip, [r0, #4]
    89cc:	e59c2020 	ldr	r2, [ip, #32]
    89d0:	e1a0c423 	lsr	ip, r3, #8
    89d4:	e0812002 	add	r2, r1, r2
    89d8:	e5c2c001 	strb	ip, [r2, #1]
    89dc:	e5900004 	ldr	r0, [r0, #4]
    89e0:	e5902020 	ldr	r2, [r0, #32]
    89e4:	e0811002 	add	r1, r1, r2
    89e8:	e5c13002 	strb	r3, [r1, #2]
    89ec:	e8bd0030 	pop	{r4, r5}
    89f0:	e12fff1e 	bx	lr
    89f4:	e590c004 	ldr	ip, [r0, #4]
    89f8:	e3a05000 	mov	r5, #0
    89fc:	eaffffea 	b	89ac <_ZN11gpu2dCanvas8setPixelEjjj+0x20>

00008a00 <_ZN11gpu2dCanvas8DrawLineEiiiij>:
    8a00:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
    8a04:	e1530001 	cmp	r3, r1
    8a08:	e24dd00c 	sub	sp, sp, #12
    8a0c:	e1a05001 	mov	r5, r1
    8a10:	e1a0a003 	mov	sl, r3
    8a14:	e1a07000 	mov	r7, r0
    8a18:	e1a04002 	mov	r4, r2
    8a1c:	e59d8034 	ldr	r8, [sp, #52]	; 0x34
    8a20:	da000039 	ble	8b0c <_ZN11gpu2dCanvas8DrawLineEiiiij+0x10c>
    8a24:	e59d6030 	ldr	r6, [sp, #48]	; 0x30
    8a28:	e062c006 	rsb	ip, r2, r6
    8a2c:	e0613003 	rsb	r3, r1, r3
    8a30:	e1a0b08c 	lsl	fp, ip, #1
    8a34:	e1e0e001 	mvn	lr, r1
    8a38:	e063900c 	rsb	r9, r3, ip
    8a3c:	e063600b 	rsb	r6, r3, fp
    8a40:	e08e300a 	add	r3, lr, sl
    8a44:	e203c001 	and	ip, r3, #1
    8a48:	e3560000 	cmp	r6, #0
    8a4c:	e1a09089 	lsl	r9, r9, #1
    8a50:	e58dc004 	str	ip, [sp, #4]
    8a54:	da00003d 	ble	8b50 <_ZN11gpu2dCanvas8DrawLineEiiiij+0x150>
    8a58:	e2824001 	add	r4, r2, #1
    8a5c:	e1a02004 	mov	r2, r4
    8a60:	e1a03008 	mov	r3, r8
    8a64:	ebffffc8 	bl	898c <_ZN11gpu2dCanvas8setPixelEjjj>
    8a68:	e0866009 	add	r6, r6, r9
    8a6c:	e2855001 	add	r5, r5, #1
    8a70:	e15a0005 	cmp	sl, r5
    8a74:	da000024 	ble	8b0c <_ZN11gpu2dCanvas8DrawLineEiiiij+0x10c>
    8a78:	e59d0004 	ldr	r0, [sp, #4]
    8a7c:	e3500000 	cmp	r0, #0
    8a80:	0a00000b 	beq	8ab4 <_ZN11gpu2dCanvas8DrawLineEiiiij+0xb4>
    8a84:	e3560000 	cmp	r6, #0
    8a88:	da000022 	ble	8b18 <_ZN11gpu2dCanvas8DrawLineEiiiij+0x118>
    8a8c:	e2844001 	add	r4, r4, #1
    8a90:	e1a00007 	mov	r0, r7
    8a94:	e1a01005 	mov	r1, r5
    8a98:	e1a02004 	mov	r2, r4
    8a9c:	e1a03008 	mov	r3, r8
    8aa0:	ebffffb9 	bl	898c <_ZN11gpu2dCanvas8setPixelEjjj>
    8aa4:	e0866009 	add	r6, r6, r9
    8aa8:	e2855001 	add	r5, r5, #1
    8aac:	e15a0005 	cmp	sl, r5
    8ab0:	da000015 	ble	8b0c <_ZN11gpu2dCanvas8DrawLineEiiiij+0x10c>
    8ab4:	e3560000 	cmp	r6, #0
    8ab8:	da00001d 	ble	8b34 <_ZN11gpu2dCanvas8DrawLineEiiiij+0x134>
    8abc:	e2844001 	add	r4, r4, #1
    8ac0:	e1a00007 	mov	r0, r7
    8ac4:	e1a01005 	mov	r1, r5
    8ac8:	e1a02004 	mov	r2, r4
    8acc:	e1a03008 	mov	r3, r8
    8ad0:	ebffffad 	bl	898c <_ZN11gpu2dCanvas8setPixelEjjj>
    8ad4:	e0866009 	add	r6, r6, r9
    8ad8:	e2855001 	add	r5, r5, #1
    8adc:	e3560000 	cmp	r6, #0
    8ae0:	e1a00007 	mov	r0, r7
    8ae4:	e1a03008 	mov	r3, r8
    8ae8:	e1a01005 	mov	r1, r5
    8aec:	da000009 	ble	8b18 <_ZN11gpu2dCanvas8DrawLineEiiiij+0x118>
    8af0:	e2844001 	add	r4, r4, #1
    8af4:	e1a02004 	mov	r2, r4
    8af8:	e2855001 	add	r5, r5, #1
    8afc:	ebffffa2 	bl	898c <_ZN11gpu2dCanvas8setPixelEjjj>
    8b00:	e15a0005 	cmp	sl, r5
    8b04:	e0866009 	add	r6, r6, r9
    8b08:	caffffe9 	bgt	8ab4 <_ZN11gpu2dCanvas8DrawLineEiiiij+0xb4>
    8b0c:	e28dd00c 	add	sp, sp, #12
    8b10:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
    8b14:	e12fff1e 	bx	lr
    8b18:	e1a00007 	mov	r0, r7
    8b1c:	e1a01005 	mov	r1, r5
    8b20:	e1a02004 	mov	r2, r4
    8b24:	e1a03008 	mov	r3, r8
    8b28:	ebffff97 	bl	898c <_ZN11gpu2dCanvas8setPixelEjjj>
    8b2c:	e086600b 	add	r6, r6, fp
    8b30:	eaffffdc 	b	8aa8 <_ZN11gpu2dCanvas8DrawLineEiiiij+0xa8>
    8b34:	e1a01005 	mov	r1, r5
    8b38:	e1a02004 	mov	r2, r4
    8b3c:	e1a00007 	mov	r0, r7
    8b40:	e1a03008 	mov	r3, r8
    8b44:	ebffff90 	bl	898c <_ZN11gpu2dCanvas8setPixelEjjj>
    8b48:	e086600b 	add	r6, r6, fp
    8b4c:	eaffffe1 	b	8ad8 <_ZN11gpu2dCanvas8DrawLineEiiiij+0xd8>
    8b50:	e1a03008 	mov	r3, r8
    8b54:	ebffff8c 	bl	898c <_ZN11gpu2dCanvas8setPixelEjjj>
    8b58:	e086600b 	add	r6, r6, fp
    8b5c:	eaffffc2 	b	8a6c <_ZN11gpu2dCanvas8DrawLineEiiiij+0x6c>

00008b60 <_ZN11gpu2dCanvas13DrawCharacterEiicj>:
    8b60:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
    8b64:	e1a04203 	lsl	r4, r3, #4
    8b68:	e24dd054 	sub	sp, sp, #84	; 0x54
    8b6c:	e284b007 	add	fp, r4, #7
    8b70:	e58db03c 	str	fp, [sp, #60]	; 0x3c
    8b74:	e284b008 	add	fp, r4, #8
    8b78:	e58db004 	str	fp, [sp, #4]
    8b7c:	e284b009 	add	fp, r4, #9
    8b80:	e58db008 	str	fp, [sp, #8]
    8b84:	e284b00a 	add	fp, r4, #10
    8b88:	e58db00c 	str	fp, [sp, #12]
    8b8c:	e284b00b 	add	fp, r4, #11
    8b90:	e58db010 	str	fp, [sp, #16]
    8b94:	e284b00c 	add	fp, r4, #12
    8b98:	e58db014 	str	fp, [sp, #20]
    8b9c:	e284b00d 	add	fp, r4, #13
    8ba0:	e58db018 	str	fp, [sp, #24]
    8ba4:	e2847001 	add	r7, r4, #1
    8ba8:	e2846002 	add	r6, r4, #2
    8bac:	e2845003 	add	r5, r4, #3
    8bb0:	e2848004 	add	r8, r4, #4
    8bb4:	e284a005 	add	sl, r4, #5
    8bb8:	e2849006 	add	r9, r4, #6
    8bbc:	e284b00e 	add	fp, r4, #14
    8bc0:	e284400f 	add	r4, r4, #15
    8bc4:	e58db01c 	str	fp, [sp, #28]
    8bc8:	e58d4000 	str	r4, [sp]
    8bcc:	e59fc248 	ldr	ip, [pc, #584]	; 8e1c <_ZN11gpu2dCanvas13DrawCharacterEiicj+0x2bc>
    8bd0:	e7dc3203 	ldrb	r3, [ip, r3, lsl #4]
    8bd4:	e58d3020 	str	r3, [sp, #32]
    8bd8:	e7dcb007 	ldrb	fp, [ip, r7]
    8bdc:	e58db024 	str	fp, [sp, #36]	; 0x24
    8be0:	e7dc4006 	ldrb	r4, [ip, r6]
    8be4:	e58d4028 	str	r4, [sp, #40]	; 0x28
    8be8:	e7dc3005 	ldrb	r3, [ip, r5]
    8bec:	e58d302c 	str	r3, [sp, #44]	; 0x2c
    8bf0:	e7dc6008 	ldrb	r6, [ip, r8]
    8bf4:	e58d6030 	str	r6, [sp, #48]	; 0x30
    8bf8:	e7dc700a 	ldrb	r7, [ip, sl]
    8bfc:	e58d7034 	str	r7, [sp, #52]	; 0x34
    8c00:	e7dca009 	ldrb	sl, [ip, r9]
    8c04:	e59d803c 	ldr	r8, [sp, #60]	; 0x3c
    8c08:	e58da038 	str	sl, [sp, #56]	; 0x38
    8c0c:	e7dcb008 	ldrb	fp, [ip, r8]
    8c10:	e59d5004 	ldr	r5, [sp, #4]
    8c14:	e58db03c 	str	fp, [sp, #60]	; 0x3c
    8c18:	e59d4008 	ldr	r4, [sp, #8]
    8c1c:	e28d300c 	add	r3, sp, #12
    8c20:	e89302c8 	ldm	r3, {r3, r6, r7, r9}
    8c24:	e59da01c 	ldr	sl, [sp, #28]
    8c28:	e7dcb005 	ldrb	fp, [ip, r5]
    8c2c:	e59d8000 	ldr	r8, [sp]
    8c30:	e7dc5004 	ldrb	r5, [ip, r4]
    8c34:	e7dc4003 	ldrb	r4, [ip, r3]
    8c38:	e7dc3006 	ldrb	r3, [ip, r6]
    8c3c:	e7dc6007 	ldrb	r6, [ip, r7]
    8c40:	e7dc7009 	ldrb	r7, [ip, r9]
    8c44:	e7dc900a 	ldrb	r9, [ip, sl]
    8c48:	e1a0a001 	mov	sl, r1
    8c4c:	e59d1020 	ldr	r1, [sp, #32]
    8c50:	e7dcc008 	ldrb	ip, [ip, r8]
    8c54:	e59d8078 	ldr	r8, [sp, #120]	; 0x78
    8c58:	e5cd1040 	strb	r1, [sp, #64]	; 0x40
    8c5c:	e59d1024 	ldr	r1, [sp, #36]	; 0x24
    8c60:	e5cd1041 	strb	r1, [sp, #65]	; 0x41
    8c64:	e59d1028 	ldr	r1, [sp, #40]	; 0x28
    8c68:	e5cd1042 	strb	r1, [sp, #66]	; 0x42
    8c6c:	e59d102c 	ldr	r1, [sp, #44]	; 0x2c
    8c70:	e5cd1043 	strb	r1, [sp, #67]	; 0x43
    8c74:	e59d1030 	ldr	r1, [sp, #48]	; 0x30
    8c78:	e5cd1044 	strb	r1, [sp, #68]	; 0x44
    8c7c:	e59d1034 	ldr	r1, [sp, #52]	; 0x34
    8c80:	e5cd1045 	strb	r1, [sp, #69]	; 0x45
    8c84:	e59d1038 	ldr	r1, [sp, #56]	; 0x38
    8c88:	e5cd1046 	strb	r1, [sp, #70]	; 0x46
    8c8c:	e59d103c 	ldr	r1, [sp, #60]	; 0x3c
    8c90:	e5cd304b 	strb	r3, [sp, #75]	; 0x4b
    8c94:	e5cd1047 	strb	r1, [sp, #71]	; 0x47
    8c98:	e5cd704d 	strb	r7, [sp, #77]	; 0x4d
    8c9c:	e28a1002 	add	r1, sl, #2
    8ca0:	e1a07000 	mov	r7, r0
    8ca4:	e28a3003 	add	r3, sl, #3
    8ca8:	e28d0040 	add	r0, sp, #64	; 0x40
    8cac:	e5cdb048 	strb	fp, [sp, #72]	; 0x48
    8cb0:	e5cd5049 	strb	r5, [sp, #73]	; 0x49
    8cb4:	e5cd604c 	strb	r6, [sp, #76]	; 0x4c
    8cb8:	e5cd904e 	strb	r9, [sp, #78]	; 0x4e
    8cbc:	e5cd404a 	strb	r4, [sp, #74]	; 0x4a
    8cc0:	e5cdc04f 	strb	ip, [sp, #79]	; 0x4f
    8cc4:	e2406001 	sub	r6, r0, #1
    8cc8:	e1a05002 	mov	r5, r2
    8ccc:	e280900f 	add	r9, r0, #15
    8cd0:	e28ab001 	add	fp, sl, #1
    8cd4:	e88d000a 	stm	sp, {r1, r3}
    8cd8:	ea000010 	b	8d20 <_ZN11gpu2dCanvas13DrawCharacterEiicj+0x1c0>
    8cdc:	e3140002 	tst	r4, #2
    8ce0:	1a000018 	bne	8d48 <_ZN11gpu2dCanvas13DrawCharacterEiicj+0x1e8>
    8ce4:	e3140004 	tst	r4, #4
    8ce8:	1a00001d 	bne	8d64 <_ZN11gpu2dCanvas13DrawCharacterEiicj+0x204>
    8cec:	e3140008 	tst	r4, #8
    8cf0:	1a000022 	bne	8d80 <_ZN11gpu2dCanvas13DrawCharacterEiicj+0x220>
    8cf4:	e3140010 	tst	r4, #16
    8cf8:	1a000027 	bne	8d9c <_ZN11gpu2dCanvas13DrawCharacterEiicj+0x23c>
    8cfc:	e3140020 	tst	r4, #32
    8d00:	1a00002c 	bne	8db8 <_ZN11gpu2dCanvas13DrawCharacterEiicj+0x258>
    8d04:	e3140040 	tst	r4, #64	; 0x40
    8d08:	1a000031 	bne	8dd4 <_ZN11gpu2dCanvas13DrawCharacterEiicj+0x274>
    8d0c:	e1b043a4 	lsrs	r4, r4, #7
    8d10:	1a000036 	bne	8df0 <_ZN11gpu2dCanvas13DrawCharacterEiicj+0x290>
    8d14:	e1560009 	cmp	r6, r9
    8d18:	e2855001 	add	r5, r5, #1
    8d1c:	0a00003b 	beq	8e10 <_ZN11gpu2dCanvas13DrawCharacterEiicj+0x2b0>
    8d20:	e5f64001 	ldrb	r4, [r6, #1]!
    8d24:	e3140001 	tst	r4, #1
    8d28:	0affffeb 	beq	8cdc <_ZN11gpu2dCanvas13DrawCharacterEiicj+0x17c>
    8d2c:	e1a00007 	mov	r0, r7
    8d30:	e1a0100a 	mov	r1, sl
    8d34:	e1a02005 	mov	r2, r5
    8d38:	e1a03008 	mov	r3, r8
    8d3c:	ebffff12 	bl	898c <_ZN11gpu2dCanvas8setPixelEjjj>
    8d40:	e3140002 	tst	r4, #2
    8d44:	0affffe6 	beq	8ce4 <_ZN11gpu2dCanvas13DrawCharacterEiicj+0x184>
    8d48:	e1a00007 	mov	r0, r7
    8d4c:	e1a0100b 	mov	r1, fp
    8d50:	e1a02005 	mov	r2, r5
    8d54:	e1a03008 	mov	r3, r8
    8d58:	ebffff0b 	bl	898c <_ZN11gpu2dCanvas8setPixelEjjj>
    8d5c:	e3140004 	tst	r4, #4
    8d60:	0affffe1 	beq	8cec <_ZN11gpu2dCanvas13DrawCharacterEiicj+0x18c>
    8d64:	e1a00007 	mov	r0, r7
    8d68:	e59d1000 	ldr	r1, [sp]
    8d6c:	e1a02005 	mov	r2, r5
    8d70:	e1a03008 	mov	r3, r8
    8d74:	ebffff04 	bl	898c <_ZN11gpu2dCanvas8setPixelEjjj>
    8d78:	e3140008 	tst	r4, #8
    8d7c:	0affffdc 	beq	8cf4 <_ZN11gpu2dCanvas13DrawCharacterEiicj+0x194>
    8d80:	e1a00007 	mov	r0, r7
    8d84:	e59d1004 	ldr	r1, [sp, #4]
    8d88:	e1a02005 	mov	r2, r5
    8d8c:	e1a03008 	mov	r3, r8
    8d90:	ebfffefd 	bl	898c <_ZN11gpu2dCanvas8setPixelEjjj>
    8d94:	e3140010 	tst	r4, #16
    8d98:	0affffd7 	beq	8cfc <_ZN11gpu2dCanvas13DrawCharacterEiicj+0x19c>
    8d9c:	e1a00007 	mov	r0, r7
    8da0:	e28a1004 	add	r1, sl, #4
    8da4:	e1a02005 	mov	r2, r5
    8da8:	e1a03008 	mov	r3, r8
    8dac:	ebfffef6 	bl	898c <_ZN11gpu2dCanvas8setPixelEjjj>
    8db0:	e3140020 	tst	r4, #32
    8db4:	0affffd2 	beq	8d04 <_ZN11gpu2dCanvas13DrawCharacterEiicj+0x1a4>
    8db8:	e1a00007 	mov	r0, r7
    8dbc:	e28a1005 	add	r1, sl, #5
    8dc0:	e1a02005 	mov	r2, r5
    8dc4:	e1a03008 	mov	r3, r8
    8dc8:	ebfffeef 	bl	898c <_ZN11gpu2dCanvas8setPixelEjjj>
    8dcc:	e3140040 	tst	r4, #64	; 0x40
    8dd0:	0affffcd 	beq	8d0c <_ZN11gpu2dCanvas13DrawCharacterEiicj+0x1ac>
    8dd4:	e1a00007 	mov	r0, r7
    8dd8:	e28a1006 	add	r1, sl, #6
    8ddc:	e1a02005 	mov	r2, r5
    8de0:	e1a03008 	mov	r3, r8
    8de4:	ebfffee8 	bl	898c <_ZN11gpu2dCanvas8setPixelEjjj>
    8de8:	e1b043a4 	lsrs	r4, r4, #7
    8dec:	0affffc8 	beq	8d14 <_ZN11gpu2dCanvas13DrawCharacterEiicj+0x1b4>
    8df0:	e1a02005 	mov	r2, r5
    8df4:	e1a00007 	mov	r0, r7
    8df8:	e28a1007 	add	r1, sl, #7
    8dfc:	e1a03008 	mov	r3, r8
    8e00:	ebfffee1 	bl	898c <_ZN11gpu2dCanvas8setPixelEjjj>
    8e04:	e1560009 	cmp	r6, r9
    8e08:	e2855001 	add	r5, r5, #1
    8e0c:	1affffc3 	bne	8d20 <_ZN11gpu2dCanvas13DrawCharacterEiicj+0x1c0>
    8e10:	e28dd054 	add	sp, sp, #84	; 0x54
    8e14:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
    8e18:	e12fff1e 	bx	lr
    8e1c:	0000951c 	andeq	r9, r0, ip, lsl r5

00008e20 <_ZN11gpu2dCanvas14ClearCharacterEii>:
    8e20:	e92d4ff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
    8e24:	e3a08000 	mov	r8, #0
    8e28:	e1a06000 	mov	r6, r0
    8e2c:	e1a09001 	mov	r9, r1
    8e30:	e1a0b002 	mov	fp, r2
    8e34:	e1a07008 	mov	r7, r8
    8e38:	e1a04807 	lsl	r4, r7, #16
    8e3c:	e1a04844 	asr	r4, r4, #16
    8e40:	e3540007 	cmp	r4, #7
    8e44:	ca000027 	bgt	8ee8 <_ZN11gpu2dCanvas14ClearCharacterEii+0xc8>
    8e48:	e0844009 	add	r4, r4, r9
    8e4c:	e088500b 	add	r5, r8, fp
    8e50:	e1a01004 	mov	r1, r4
    8e54:	e1a02005 	mov	r2, r5
    8e58:	e1a00006 	mov	r0, r6
    8e5c:	e3a03000 	mov	r3, #0
    8e60:	ebfffec9 	bl	898c <_ZN11gpu2dCanvas8setPixelEjjj>
    8e64:	e2872001 	add	r2, r7, #1
    8e68:	e1a01802 	lsl	r1, r2, #16
    8e6c:	e267a007 	rsb	sl, r7, #7
    8e70:	e3510807 	cmp	r1, #458752	; 0x70000
    8e74:	e20aa001 	and	sl, sl, #1
    8e78:	e2844001 	add	r4, r4, #1
    8e7c:	e1a07821 	lsr	r7, r1, #16
    8e80:	ca000017 	bgt	8ee4 <_ZN11gpu2dCanvas14ClearCharacterEii+0xc4>
    8e84:	e35a0000 	cmp	sl, #0
    8e88:	11a01004 	movne	r1, r4
    8e8c:	11a00006 	movne	r0, r6
    8e90:	1a00000a 	bne	8ec0 <_ZN11gpu2dCanvas14ClearCharacterEii+0xa0>
    8e94:	e1a01004 	mov	r1, r4
    8e98:	e1a00006 	mov	r0, r6
    8e9c:	e1a02005 	mov	r2, r5
    8ea0:	e3a03000 	mov	r3, #0
    8ea4:	ebfffeb8 	bl	898c <_ZN11gpu2dCanvas8setPixelEjjj>
    8ea8:	e2870001 	add	r0, r7, #1
    8eac:	e1a07800 	lsl	r7, r0, #16
    8eb0:	e2844001 	add	r4, r4, #1
    8eb4:	e1a07827 	lsr	r7, r7, #16
    8eb8:	e1a00006 	mov	r0, r6
    8ebc:	e1a01004 	mov	r1, r4
    8ec0:	e3a03000 	mov	r3, #0
    8ec4:	e1a02005 	mov	r2, r5
    8ec8:	ebfffeaf 	bl	898c <_ZN11gpu2dCanvas8setPixelEjjj>
    8ecc:	e287c001 	add	ip, r7, #1
    8ed0:	e1a0380c 	lsl	r3, ip, #16
    8ed4:	e3530807 	cmp	r3, #458752	; 0x70000
    8ed8:	e2844001 	add	r4, r4, #1
    8edc:	e1a07823 	lsr	r7, r3, #16
    8ee0:	daffffeb 	ble	8e94 <_ZN11gpu2dCanvas14ClearCharacterEii+0x74>
    8ee4:	e3a07008 	mov	r7, #8
    8ee8:	e2888001 	add	r8, r8, #1
    8eec:	e3580010 	cmp	r8, #16
    8ef0:	1affffd0 	bne	8e38 <_ZN11gpu2dCanvas14ClearCharacterEii+0x18>
    8ef4:	e8bd4ff8 	pop	{r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
    8ef8:	e12fff1e 	bx	lr

00008efc <_ZN7Console5clearEv>:
    8efc:	e92d4010 	push	{r4, lr}
    8f00:	e3a01000 	mov	r1, #0
    8f04:	e1a04000 	mov	r4, r0
    8f08:	e3a03001 	mov	r3, #1
    8f0c:	e590000c 	ldr	r0, [r0, #12]
    8f10:	e884000a 	stm	r4, {r1, r3}
    8f14:	ebfffe3d 	bl	8810 <_ZN11gpu2dCanvas5ClearEj>
    8f18:	e594000c 	ldr	r0, [r4, #12]
    8f1c:	e8bd4010 	pop	{r4, lr}
    8f20:	eafffe25 	b	87bc <_ZN11gpu2dCanvas4DrawEv>

00008f24 <_ZN7Console7newLineEv>:
    8f24:	e590c004 	ldr	ip, [r0, #4]
    8f28:	e28c1001 	add	r1, ip, #1
    8f2c:	e3a02000 	mov	r2, #0
    8f30:	e351002d 	cmp	r1, #45	; 0x2d
    8f34:	e5801004 	str	r1, [r0, #4]
    8f38:	e5802000 	str	r2, [r0]
    8f3c:	912fff1e 	bxls	lr
    8f40:	eaffffed 	b	8efc <_ZN7Console5clearEv>

00008f44 <_ZN7Console9printCharEcj>:
    8f44:	e92d4070 	push	{r4, r5, r6, lr}
    8f48:	e3510009 	cmp	r1, #9
    8f4c:	e24dd008 	sub	sp, sp, #8
    8f50:	e1a06001 	mov	r6, r1
    8f54:	e1a04000 	mov	r4, r0
    8f58:	e1a05002 	mov	r5, r2
    8f5c:	0a00002a 	beq	900c <_ZN7Console9printCharEcj+0xc8>
    8f60:	e351000a 	cmp	r1, #10
    8f64:	0a000025 	beq	9000 <_ZN7Console9printCharEcj+0xbc>
    8f68:	e3510008 	cmp	r1, #8
    8f6c:	0a000015 	beq	8fc8 <_ZN7Console9printCharEcj+0x84>
    8f70:	e590c000 	ldr	ip, [r0]
    8f74:	e35c0078 	cmp	ip, #120	; 0x78
    8f78:	8a00002c 	bhi	9030 <_ZN7Console9printCharEcj+0xec>
    8f7c:	e5943004 	ldr	r3, [r4, #4]
    8f80:	e353002d 	cmp	r3, #45	; 0x2d
    8f84:	8a000025 	bhi	9020 <_ZN7Console9printCharEcj+0xdc>
    8f88:	e594e008 	ldr	lr, [r4, #8]
    8f8c:	e5941000 	ldr	r1, [r4]
    8f90:	e08e2203 	add	r2, lr, r3, lsl #4
    8f94:	e594000c 	ldr	r0, [r4, #12]
    8f98:	e1a03006 	mov	r3, r6
    8f9c:	e08e1181 	add	r1, lr, r1, lsl #3
    8fa0:	e58d5000 	str	r5, [sp]
    8fa4:	ebfffeed 	bl	8b60 <_ZN11gpu2dCanvas13DrawCharacterEiicj>
    8fa8:	e594000c 	ldr	r0, [r4, #12]
    8fac:	ebfffe02 	bl	87bc <_ZN11gpu2dCanvas4DrawEv>
    8fb0:	e5942000 	ldr	r2, [r4]
    8fb4:	e2823001 	add	r3, r2, #1
    8fb8:	e5843000 	str	r3, [r4]
    8fbc:	e28dd008 	add	sp, sp, #8
    8fc0:	e8bd4070 	pop	{r4, r5, r6, lr}
    8fc4:	e12fff1e 	bx	lr
    8fc8:	e5901000 	ldr	r1, [r0]
    8fcc:	e3510000 	cmp	r1, #0
    8fd0:	0afffff9 	beq	8fbc <_ZN7Console9printCharEcj+0x78>
    8fd4:	e990000c 	ldmib	r0, {r2, r3}
    8fd8:	e2411001 	sub	r1, r1, #1
    8fdc:	e5841000 	str	r1, [r4]
    8fe0:	e590000c 	ldr	r0, [r0, #12]
    8fe4:	e0831181 	add	r1, r3, r1, lsl #3
    8fe8:	e0832202 	add	r2, r3, r2, lsl #4
    8fec:	ebffff8b 	bl	8e20 <_ZN11gpu2dCanvas14ClearCharacterEii>
    8ff0:	e594000c 	ldr	r0, [r4, #12]
    8ff4:	e28dd008 	add	sp, sp, #8
    8ff8:	e8bd4070 	pop	{r4, r5, r6, lr}
    8ffc:	eafffdee 	b	87bc <_ZN11gpu2dCanvas4DrawEv>
    9000:	e28dd008 	add	sp, sp, #8
    9004:	e8bd4070 	pop	{r4, r5, r6, lr}
    9008:	eaffffc5 	b	8f24 <_ZN7Console7newLineEv>
    900c:	e5900000 	ldr	r0, [r0]
    9010:	e2803004 	add	r3, r0, #4
    9014:	e3530077 	cmp	r3, #119	; 0x77
    9018:	95843000 	strls	r3, [r4]
    901c:	eaffffe6 	b	8fbc <_ZN7Console9printCharEcj+0x78>
    9020:	e1a00004 	mov	r0, r4
    9024:	e28dd008 	add	sp, sp, #8
    9028:	e8bd4070 	pop	{r4, r5, r6, lr}
    902c:	eaffffb2 	b	8efc <_ZN7Console5clearEv>
    9030:	ebffffbb 	bl	8f24 <_ZN7Console7newLineEv>
    9034:	eaffffd0 	b	8f7c <_ZN7Console9printCharEcj+0x38>

00009038 <_ZN7Console6kprintEPc>:
    9038:	e92d4038 	push	{r3, r4, r5, lr}
    903c:	e1a04001 	mov	r4, r1
    9040:	e5d11000 	ldrb	r1, [r1]
    9044:	e3510000 	cmp	r1, #0
    9048:	e1a05000 	mov	r5, r0
    904c:	0a000005 	beq	9068 <_ZN7Console6kprintEPc+0x30>
    9050:	e1a00005 	mov	r0, r5
    9054:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    9058:	ebffffb9 	bl	8f44 <_ZN7Console9printCharEcj>
    905c:	e5f41001 	ldrb	r1, [r4, #1]!
    9060:	e3510000 	cmp	r1, #0
    9064:	1afffff9 	bne	9050 <_ZN7Console6kprintEPc+0x18>
    9068:	e8bd4038 	pop	{r3, r4, r5, lr}
    906c:	e12fff1e 	bx	lr

00009070 <_ZN7Console6kprintEPKc>:
    9070:	eafffff0 	b	9038 <_ZN7Console6kprintEPc>

00009074 <_ZN7Console4koutEPKc>:
    9074:	e92d4070 	push	{r4, r5, r6, lr}
    9078:	e59f4040 	ldr	r4, [pc, #64]	; 90c0 <_ZN7Console4koutEPKc+0x4c>
    907c:	e1a06001 	mov	r6, r1
    9080:	e1a05000 	mov	r5, r0
    9084:	e3a0105b 	mov	r1, #91	; 0x5b
    9088:	e1a00005 	mov	r0, r5
    908c:	e3a028ff 	mov	r2, #16711680	; 0xff0000
    9090:	ebffffab 	bl	8f44 <_ZN7Console9printCharEcj>
    9094:	e5f41001 	ldrb	r1, [r4, #1]!
    9098:	e3510000 	cmp	r1, #0
    909c:	1afffff9 	bne	9088 <_ZN7Console4koutEPKc+0x14>
    90a0:	e1a01006 	mov	r1, r6
    90a4:	e1a00005 	mov	r0, r5
    90a8:	ebffffe2 	bl	9038 <_ZN7Console6kprintEPc>
    90ac:	e1a00005 	mov	r0, r5
    90b0:	e3a0100a 	mov	r1, #10
    90b4:	e3a028ff 	mov	r2, #16711680	; 0xff0000
    90b8:	e8bd4070 	pop	{r4, r5, r6, lr}
    90bc:	eaffffa0 	b	8f44 <_ZN7Console9printCharEcj>
    90c0:	00009f58 	andeq	r9, r0, r8, asr pc

000090c4 <irq_handler>:
    90c4:	e92d4008 	push	{r3, lr}
    90c8:	e59f303c 	ldr	r3, [pc, #60]	; 910c <irq_handler+0x48>
    90cc:	e5d32004 	ldrb	r2, [r3, #4]
    90d0:	e3520000 	cmp	r2, #0
    90d4:	1a000008 	bne	90fc <irq_handler+0x38>
    90d8:	e59f2030 	ldr	r2, [pc, #48]	; 9110 <irq_handler+0x4c>
    90dc:	e5920004 	ldr	r0, [r2, #4]
    90e0:	e2801b4e 	add	r1, r0, #79872	; 0x13800
    90e4:	e2811080 	add	r1, r1, #128	; 0x80
    90e8:	e5923004 	ldr	r3, [r2, #4]
    90ec:	e1510003 	cmp	r1, r3
    90f0:	8afffffc 	bhi	90e8 <irq_handler+0x24>
    90f4:	e8bd4008 	pop	{r3, lr}
    90f8:	e12fff1e 	bx	lr
    90fc:	e5930008 	ldr	r0, [r3, #8]
    9100:	e59f100c 	ldr	r1, [pc, #12]	; 9114 <irq_handler+0x50>
    9104:	ebffffda 	bl	9074 <_ZN7Console4koutEPKc>
    9108:	eafffff2 	b	90d8 <irq_handler+0x14>
    910c:	00009d24 	andeq	r9, r0, r4, lsr #26
    9110:	20003000 	andcs	r3, r0, r0
    9114:	00009f60 	andeq	r9, r0, r0, ror #30

00009118 <_ZN7ConsoleC1EP11gpu2dCanvas>:
    9118:	e3a02000 	mov	r2, #0
    911c:	e3a0300a 	mov	r3, #10
    9120:	e92d4010 	push	{r4, lr}
    9124:	e1a04000 	mov	r4, r0
    9128:	e5802000 	str	r2, [r0]
    912c:	e980000c 	stmib	r0, {r2, r3}
    9130:	e580100c 	str	r1, [r0, #12]
    9134:	ebffff70 	bl	8efc <_ZN7Console5clearEv>
    9138:	e1a00004 	mov	r0, r4
    913c:	e8bd4010 	pop	{r4, lr}
    9140:	e12fff1e 	bx	lr

00009144 <_Z12print_headerP7Console>:
    9144:	e92d4010 	push	{r4, lr}
    9148:	e59f102c 	ldr	r1, [pc, #44]	; 917c <_Z12print_headerP7Console+0x38>
    914c:	e1a04000 	mov	r4, r0
    9150:	ebffffb8 	bl	9038 <_ZN7Console6kprintEPc>
    9154:	e1a00004 	mov	r0, r4
    9158:	e59f1020 	ldr	r1, [pc, #32]	; 9180 <_Z12print_headerP7Console+0x3c>
    915c:	ebffffb5 	bl	9038 <_ZN7Console6kprintEPc>
    9160:	e1a00004 	mov	r0, r4
    9164:	e59f1018 	ldr	r1, [pc, #24]	; 9184 <_Z12print_headerP7Console+0x40>
    9168:	ebffffb2 	bl	9038 <_ZN7Console6kprintEPc>
    916c:	e59f1014 	ldr	r1, [pc, #20]	; 9188 <_Z12print_headerP7Console+0x44>
    9170:	e1a00004 	mov	r0, r4
    9174:	e8bd4010 	pop	{r4, lr}
    9178:	eaffffae 	b	9038 <_ZN7Console6kprintEPc>
    917c:	00009f6c 	andeq	r9, r0, ip, ror #30
    9180:	00009fb0 			; <UNDEFINED> instruction: 0x00009fb0
    9184:	00009fb8 			; <UNDEFINED> instruction: 0x00009fb8
    9188:	00009fc0 	andeq	r9, r0, r0, asr #31

0000918c <kmain>:
    918c:	e92d40f0 	push	{r4, r5, r6, r7, lr}
    9190:	e24dd01c 	sub	sp, sp, #28
    9194:	e28d4010 	add	r4, sp, #16
    9198:	e3a01000 	mov	r1, #0
    919c:	e1a00004 	mov	r0, r4
    91a0:	ebfffd5b 	bl	8714 <_ZN11gpu2dCanvasC1Eb>
    91a4:	e59f715c 	ldr	r7, [pc, #348]	; 9308 <kmain+0x17c>
    91a8:	e3a0200a 	mov	r2, #10
    91ac:	e3a05000 	mov	r5, #0
    91b0:	e1a0000d 	mov	r0, sp
    91b4:	e58d2008 	str	r2, [sp, #8]
    91b8:	e58d400c 	str	r4, [sp, #12]
    91bc:	e58d5000 	str	r5, [sp]
    91c0:	e58d5004 	str	r5, [sp, #4]
    91c4:	ebffff4c 	bl	8efc <_ZN7Console5clearEv>
    91c8:	e28d1000 	add	r1, sp, #0
    91cc:	e3a03001 	mov	r3, #1
    91d0:	e1a0000d 	mov	r0, sp
    91d4:	e5871008 	str	r1, [r7, #8]
    91d8:	e5c73004 	strb	r3, [r7, #4]
    91dc:	ebffffd8 	bl	9144 <_Z12print_headerP7Console>
    91e0:	e1a0000d 	mov	r0, sp
    91e4:	e59f1120 	ldr	r1, [pc, #288]	; 930c <kmain+0x180>
    91e8:	ebffff92 	bl	9038 <_ZN7Console6kprintEPc>
    91ec:	e59f411c 	ldr	r4, [pc, #284]	; 9310 <kmain+0x184>
    91f0:	e3a06012 	mov	r6, #18
    91f4:	e1a0000d 	mov	r0, sp
    91f8:	e59f1114 	ldr	r1, [pc, #276]	; 9314 <kmain+0x188>
    91fc:	ebffff8d 	bl	9038 <_ZN7Console6kprintEPc>
    9200:	e594c004 	ldr	ip, [r4, #4]
    9204:	e28c0bea 	add	r0, ip, #239616	; 0x3a800
    9208:	e2802d06 	add	r2, r0, #384	; 0x180
    920c:	e594e004 	ldr	lr, [r4, #4]
    9210:	e152000e 	cmp	r2, lr
    9214:	e59f50f4 	ldr	r5, [pc, #244]	; 9310 <kmain+0x184>
    9218:	8afffffb 	bhi	920c <kmain+0x80>
    921c:	e2566001 	subs	r6, r6, #1
    9220:	1afffff3 	bne	91f4 <kmain+0x68>
    9224:	e1a0000d 	mov	r0, sp
    9228:	e59f10e8 	ldr	r1, [pc, #232]	; 9318 <kmain+0x18c>
    922c:	ebffff81 	bl	9038 <_ZN7Console6kprintEPc>
    9230:	e3a0380f 	mov	r3, #983040	; 0xf0000
    9234:	e3a0caff 	mov	ip, #1044480	; 0xff000
    9238:	e5873000 	str	r3, [r7]
    923c:	e1a0000d 	mov	r0, sp
    9240:	e59f10d4 	ldr	r1, [pc, #212]	; 931c <kmain+0x190>
    9244:	e5c36004 	strb	r6, [r3, #4]
    9248:	e583c008 	str	ip, [r3, #8]
    924c:	ebffff88 	bl	9074 <_ZN7Console4koutEPKc>
    9250:	e59f00c8 	ldr	r0, [pc, #200]	; 9320 <kmain+0x194>
    9254:	e3e02000 	mvn	r2, #0
    9258:	e3a040ff 	mov	r4, #255	; 0xff
    925c:	e5802840 	str	r2, [r0, #2112]	; 0x840
    9260:	e5802850 	str	r2, [r0, #2128]	; 0x850
    9264:	e5804860 	str	r4, [r0, #2144]	; 0x860
    9268:	e5951004 	ldr	r1, [r5, #4]
    926c:	e2813a61 	add	r3, r1, #397312	; 0x61000
    9270:	e2832d2a 	add	r2, r3, #2688	; 0xa80
    9274:	e595e004 	ldr	lr, [r5, #4]
    9278:	e152000e 	cmp	r2, lr
    927c:	e59f408c 	ldr	r4, [pc, #140]	; 9310 <kmain+0x184>
    9280:	8afffffb 	bhi	9274 <kmain+0xe8>
    9284:	e59f1098 	ldr	r1, [pc, #152]	; 9324 <kmain+0x198>
    9288:	e1a0000d 	mov	r0, sp
    928c:	ebffff78 	bl	9074 <_ZN7Console4koutEPKc>
    9290:	e1a0000d 	mov	r0, sp
    9294:	e59f108c 	ldr	r1, [pc, #140]	; 9328 <kmain+0x19c>
    9298:	ebffff66 	bl	9038 <_ZN7Console6kprintEPc>
    929c:	e5940004 	ldr	r0, [r4, #4]
    92a0:	e280183d 	add	r1, r0, #3997696	; 0x3d0000
    92a4:	e2812c09 	add	r2, r1, #2304	; 0x900
    92a8:	e594c004 	ldr	ip, [r4, #4]
    92ac:	e152000c 	cmp	r2, ip
    92b0:	e59f3058 	ldr	r3, [pc, #88]	; 9310 <kmain+0x184>
    92b4:	8afffffb 	bhi	92a8 <kmain+0x11c>
    92b8:	ef0000ff 	svc	0x000000ff
    92bc:	e593e004 	ldr	lr, [r3, #4]
    92c0:	e28e2a61 	add	r2, lr, #397312	; 0x61000
    92c4:	e2821d2a 	add	r1, r2, #2688	; 0xa80
    92c8:	e1a02003 	mov	r2, r3
    92cc:	e5923004 	ldr	r3, [r2, #4]
    92d0:	e1510003 	cmp	r1, r3
    92d4:	8afffffc 	bhi	92cc <kmain+0x140>
    92d8:	e1a0000d 	mov	r0, sp
    92dc:	e59f1048 	ldr	r1, [pc, #72]	; 932c <kmain+0x1a0>
    92e0:	ebffff63 	bl	9074 <_ZN7Console4koutEPKc>
    92e4:	e3a01001 	mov	r1, #1
    92e8:	e3a00010 	mov	r0, #16
    92ec:	ebfffc12 	bl	833c <_ZN12RaspberryLib7SetGPIOEjj>
    92f0:	e1a0000d 	mov	r0, sp
    92f4:	e59f1034 	ldr	r1, [pc, #52]	; 9330 <kmain+0x1a4>
    92f8:	ebffff4e 	bl	9038 <_ZN7Console6kprintEPc>
    92fc:	e28dd01c 	add	sp, sp, #28
    9300:	e8bd40f0 	pop	{r4, r5, r6, r7, lr}
    9304:	e12fff1e 	bx	lr
    9308:	00009d24 	andeq	r9, r0, r4, lsr #26
    930c:	00009fc4 	andeq	r9, r0, r4, asr #31
    9310:	20003000 	andcs	r3, r0, r0
    9314:	0000a068 	andeq	sl, r0, r8, rrx
    9318:	00009fd0 	ldrdeq	r9, [r0], -r0
    931c:	00009fe0 	andeq	r9, r0, r0, ror #31
    9320:	2000b000 	andcs	fp, r0, r0
    9324:	00009ff8 	strdeq	r9, [r0], -r8
    9328:	0000a014 	andeq	sl, r0, r4, lsl r0
    932c:	0000a038 	andeq	sl, r0, r8, lsr r0
    9330:	0000a050 	andeq	sl, r0, r0, asr r0

00009334 <_ZN7Console5kbaseElll>:
    9334:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
    9338:	e2524000 	subs	r4, r2, #0
    933c:	e24dd02c 	sub	sp, sp, #44	; 0x2c
    9340:	e1a0a000 	mov	sl, r0
    9344:	e1a07001 	mov	r7, r1
    9348:	e1a06003 	mov	r6, r3
    934c:	da000053 	ble	94a0 <_ZN7Console5kbaseElll+0x16c>
    9350:	e59f51b4 	ldr	r5, [pc, #436]	; 950c <_ZN7Console5kbaseElll+0x1d8>
    9354:	e3510401 	cmp	r1, #16777216	; 0x1000000
    9358:	21a0b801 	lslcs	fp, r1, #16
    935c:	21a09821 	lsrcs	r9, r1, #16
    9360:	31a09001 	movcc	r9, r1
    9364:	e8b5000f 	ldm	r5!, {r0, r1, r2, r3}
    9368:	e28dc004 	add	ip, sp, #4
    936c:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
    9370:	e8950007 	ldm	r5, {r0, r1, r2}
    9374:	e1a0300c 	mov	r3, ip
    9378:	e8a30003 	stmia	r3!, {r0, r1}
    937c:	23a08001 	movcs	r8, #1
    9380:	33a08000 	movcc	r8, #0
    9384:	21a0b82b 	lsrcs	fp, fp, #16
    9388:	e3580000 	cmp	r8, #0
    938c:	e1c320b0 	strh	r2, [r3]
    9390:	1a00004c 	bne	94c8 <_ZN7Console5kbaseElll+0x194>
    9394:	e3560000 	cmp	r6, #0
    9398:	0a000045 	beq	94b4 <_ZN7Console5kbaseElll+0x180>
    939c:	e3560000 	cmp	r6, #0
    93a0:	ba000040 	blt	94a8 <_ZN7Console5kbaseElll+0x174>
    93a4:	e2466001 	sub	r6, r6, #1
    93a8:	e3a09000 	mov	r9, #0
    93ac:	e3560000 	cmp	r6, #0
    93b0:	d1a05004 	movle	r5, r4
    93b4:	da000010 	ble	93fc <_ZN7Console5kbaseElll+0xc8>
    93b8:	e3a03001 	mov	r3, #1
    93bc:	e2462001 	sub	r2, r6, #1
    93c0:	e1530006 	cmp	r3, r6
    93c4:	e0022003 	and	r2, r2, r3
    93c8:	e0050494 	mul	r5, r4, r4
    93cc:	aa00000a 	bge	93fc <_ZN7Console5kbaseElll+0xc8>
    93d0:	e3520000 	cmp	r2, #0
    93d4:	0a000003 	beq	93e8 <_ZN7Console5kbaseElll+0xb4>
    93d8:	e3a03002 	mov	r3, #2
    93dc:	e1530006 	cmp	r3, r6
    93e0:	e0050594 	mul	r5, r4, r5
    93e4:	aa000004 	bge	93fc <_ZN7Console5kbaseElll+0xc8>
    93e8:	e0050594 	mul	r5, r4, r5
    93ec:	e2833002 	add	r3, r3, #2
    93f0:	e1530006 	cmp	r3, r6
    93f4:	e0050594 	mul	r5, r4, r5
    93f8:	bafffffa 	blt	93e8 <_ZN7Console5kbaseElll+0xb4>
    93fc:	e1540007 	cmp	r4, r7
    9400:	a0000794 	mulge	r0, r4, r7
    9404:	b1a00007 	movlt	r0, r7
    9408:	e1a01005 	mov	r1, r5
    940c:	e28d2024 	add	r2, sp, #36	; 0x24
    9410:	e28d3020 	add	r3, sp, #32
    9414:	e58d9024 	str	r9, [sp, #36]	; 0x24
    9418:	e58d9020 	str	r9, [sp, #32]
    941c:	eb000243 	bl	9d30 <_ZN4Math6divideIlEET_S1_S1_PS1_S2_>
    9420:	e59dc020 	ldr	ip, [sp, #32]
    9424:	e08c810c 	add	r8, ip, ip, lsl #2
    9428:	e1a01005 	mov	r1, r5
    942c:	e28d2024 	add	r2, sp, #36	; 0x24
    9430:	e28d3020 	add	r3, sp, #32
    9434:	e1a00088 	lsl	r0, r8, #1
    9438:	e59d8024 	ldr	r8, [sp, #36]	; 0x24
    943c:	eb00023b 	bl	9d30 <_ZN4Math6divideIlEET_S1_S1_PS1_S2_>
    9440:	e59d1020 	ldr	r1, [sp, #32]
    9444:	e0810101 	add	r0, r1, r1, lsl #2
    9448:	e28d2024 	add	r2, sp, #36	; 0x24
    944c:	e28d3020 	add	r3, sp, #32
    9450:	e1a01005 	mov	r1, r5
    9454:	e1a00080 	lsl	r0, r0, #1
    9458:	eb000234 	bl	9d30 <_ZN4Math6divideIlEET_S1_S1_PS1_S2_>
    945c:	e1540008 	cmp	r4, r8
    9460:	a20830ff 	andge	r3, r8, #255	; 0xff
    9464:	a28d2028 	addge	r2, sp, #40	; 0x28
    9468:	a0823003 	addge	r3, r2, r3
    946c:	b1a0000a 	movlt	r0, sl
    9470:	b3a01065 	movlt	r1, #101	; 0x65
    9474:	b3a02cff 	movlt	r2, #65280	; 0xff00
    9478:	a1a0000a 	movge	r0, sl
    947c:	a5531024 	ldrbge	r1, [r3, #-36]	; 0xffffffdc
    9480:	a3a028ff 	movge	r2, #16711680	; 0xff0000
    9484:	ebfffeae 	bl	8f44 <_ZN7Console9printCharEcj>
    9488:	e3560000 	cmp	r6, #0
    948c:	ba000005 	blt	94a8 <_ZN7Console5kbaseElll+0x174>
    9490:	e0050598 	mul	r5, r8, r5
    9494:	e2466001 	sub	r6, r6, #1
    9498:	e0657007 	rsb	r7, r5, r7
    949c:	eaffffc2 	b	93ac <_ZN7Console5kbaseElll+0x78>
    94a0:	e59f1068 	ldr	r1, [pc, #104]	; 9510 <_ZN7Console5kbaseElll+0x1dc>
    94a4:	ebfffee3 	bl	9038 <_ZN7Console6kprintEPc>
    94a8:	e28dd02c 	add	sp, sp, #44	; 0x2c
    94ac:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
    94b0:	e12fff1e 	bx	lr
    94b4:	e1a00007 	mov	r0, r7
    94b8:	e1a01004 	mov	r1, r4
    94bc:	eb000247 	bl	9de0 <_ZN4Math13getDigitCountIlEET_S1_S1_>
    94c0:	e2406001 	sub	r6, r0, #1
    94c4:	eaffffb4 	b	939c <_ZN7Console5kbaseElll+0x68>
    94c8:	e1a01004 	mov	r1, r4
    94cc:	e1a00009 	mov	r0, r9
    94d0:	eb000242 	bl	9de0 <_ZN4Math13getDigitCountIlEET_S1_S1_>
    94d4:	e1a02004 	mov	r2, r4
    94d8:	e2403001 	sub	r3, r0, #1
    94dc:	e1a01009 	mov	r1, r9
    94e0:	e1a0000a 	mov	r0, sl
    94e4:	ebffff92 	bl	9334 <_ZN7Console5kbaseElll>
    94e8:	e1a01004 	mov	r1, r4
    94ec:	e1a0000b 	mov	r0, fp
    94f0:	eb00023a 	bl	9de0 <_ZN4Math13getDigitCountIlEET_S1_S1_>
    94f4:	e1a0100b 	mov	r1, fp
    94f8:	e2403001 	sub	r3, r0, #1
    94fc:	e1a02004 	mov	r2, r4
    9500:	e1a0000a 	mov	r0, sl
    9504:	ebffff8a 	bl	9334 <_ZN7Console5kbaseElll>
    9508:	eaffffe6 	b	94a8 <_ZN7Console5kbaseElll+0x174>
    950c:	00009e30 	andeq	r9, r0, r0, lsr lr
    9510:	0000a06c 	andeq	sl, r0, ip, rrx

00009514 <_ZN7Console5kbaseEll>:
    9514:	e3a03000 	mov	r3, #0
    9518:	eaffff85 	b	9334 <_ZN7Console5kbaseElll>

0000951c <_ZL19kernel_default_font>:
	...
    972c:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
    9730:	08080808 	stmdaeq	r8, {r3, fp}
    9734:	08080008 	stmdaeq	r8, {r3}
    9738:	00000000 	andeq	r0, r0, r0
    973c:	14000000 	strne	r0, [r0], #-0
    9740:	00141414 	andseq	r1, r4, r4, lsl r4
	...
    974c:	48480000 	stmdami	r8, {}^	; <UNPREDICTABLE>
    9750:	2424fe68 	strtcs	pc, [r4], #-3688	; 0xfffff198
    9754:	1212147f 	andsne	r1, r2, #2130706432	; 0x7f000000
    9758:	00000000 	andeq	r0, r0, r0
    975c:	10000000 	andne	r0, r0, r0
    9760:	1c12927c 	lfmne	f1, 1, [r2], {124}	; 0x7c
    9764:	7c929070 	ldcvc	0, cr9, [r2], {112}	; 0x70
    9768:	00001010 	andeq	r1, r0, r0, lsl r0
    976c:	06000000 	streq	r0, [r0], -r0
    9770:	38460909 	stmdacc	r6, {r0, r3, r8, fp}^
    9774:	60909066 	addsvs	r9, r0, r6, rrx
    9778:	00000000 	andeq	r0, r0, r0
    977c:	38000000 	stmdacc	r0, {}	; <UNPREDICTABLE>
    9780:	920c0404 	andls	r0, ip, #4, 8	; 0x4000000
    9784:	bc46a2b2 	sfmlt	f2, 3, [r6], {178}	; 0xb2
    9788:	00000000 	andeq	r0, r0, r0
    978c:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
    9790:	00080808 	andeq	r0, r8, r8, lsl #16
	...
    979c:	10103000 	andsne	r3, r0, r0
    97a0:	08080808 	stmdaeq	r8, {r3, fp}
    97a4:	10100808 	andsne	r0, r0, r8, lsl #16
    97a8:	00000020 	andeq	r0, r0, r0, lsr #32
    97ac:	08080c00 	stmdaeq	r8, {sl, fp}
    97b0:	10101010 	andsne	r1, r0, r0, lsl r0
    97b4:	08081010 	stmdaeq	r8, {r4, ip}
    97b8:	0000000c 	andeq	r0, r0, ip
    97bc:	10000000 	andne	r0, r0, r0
    97c0:	d6387c92 			; <UNDEFINED> instruction: 0xd6387c92
    97c4:	00000010 	andeq	r0, r0, r0, lsl r0
	...
    97d0:	7f080808 	svcvc	0x00080808
    97d4:	00080808 	andeq	r0, r8, r8, lsl #16
	...
    97e4:	18180000 	ldmdane	r8, {}	; <UNPREDICTABLE>
    97e8:	00000408 	andeq	r0, r0, r8, lsl #8
	...
    97f4:	0000001c 	andeq	r0, r0, ip, lsl r0
	...
    9804:	18180000 	ldmdane	r8, {}	; <UNPREDICTABLE>
    9808:	00000000 	andeq	r0, r0, r0
    980c:	40000000 	andmi	r0, r0, r0
    9810:	10102020 	andsne	r2, r0, r0, lsr #32
    9814:	04080818 	streq	r0, [r8], #-2072	; 0xfffff7e8
    9818:	00000204 	andeq	r0, r0, r4, lsl #4
    981c:	38000000 	stmdacc	r0, {}	; <UNPREDICTABLE>
    9820:	92828244 	addls	r8, r2, #68, 4	; 0x40000004
    9824:	38448282 	stmdacc	r4, {r1, r7, r9, pc}^
    9828:	00000000 	andeq	r0, r0, r0
    982c:	1c000000 	stcne	0, cr0, [r0], {-0}
    9830:	10101010 	andsne	r1, r0, r0, lsl r0
    9834:	7c101010 	ldcvc	0, cr1, [r0], {16}
    9838:	00000000 	andeq	r0, r0, r0
    983c:	7c000000 	stcvc	0, cr0, [r0], {-0}
    9840:	408080c2 	addmi	r8, r0, r2, asr #1
    9844:	fe041830 	mcr2	8, 0, r1, cr4, cr0, {1}
    9848:	00000000 	andeq	r0, r0, r0
    984c:	7c000000 	stcvc	0, cr0, [r0], {-0}
    9850:	38c08082 	stmiacc	r0, {r1, r7, pc}^
    9854:	7cc280c0 	stclvc	0, cr8, [r2], {192}	; 0xc0
    9858:	00000000 	andeq	r0, r0, r0
    985c:	60000000 	andvs	r0, r0, r0
    9860:	44485850 	strbmi	r5, [r8], #-2128	; 0xfffff7b0
    9864:	4040fe42 	submi	pc, r0, r2, asr #28
    9868:	00000000 	andeq	r0, r0, r0
    986c:	7e000000 	cdpvc	0, 0, cr0, cr0, cr0, {0}
    9870:	c03e0202 	eorsgt	r0, lr, r2, lsl #4
    9874:	3cc28080 	stclcc	0, cr8, [r2], {128}	; 0x80
    9878:	00000000 	andeq	r0, r0, r0
    987c:	78000000 	stmdavc	r0, {}	; <UNPREDICTABLE>
    9880:	c67a0284 	ldrbtgt	r0, [sl], -r4, lsl #5
    9884:	78c48282 	stmiavc	r4, {r1, r7, r9, pc}^
    9888:	00000000 	andeq	r0, r0, r0
    988c:	fe000000 	cdp2	0, 0, cr0, cr0, cr0, {0}
    9890:	20204040 	eorcs	r4, r0, r0, asr #32
    9894:	04081810 	streq	r1, [r8], #-2064	; 0xfffff7f0
    9898:	00000000 	andeq	r0, r0, r0
    989c:	7c000000 	stcvc	0, cr0, [r0], {-0}
    98a0:	7c828282 	sfmvc	f0, 1, [r2], {130}	; 0x82
    98a4:	7c868282 	sfmvc	f0, 1, [r6], {130}	; 0x82
    98a8:	00000000 	andeq	r0, r0, r0
    98ac:	3c000000 	stccc	0, cr0, [r0], {-0}
    98b0:	c6828246 	strgt	r8, [r2], r6, asr #4
    98b4:	3c4280bc 	mcrrcc	0, 11, r8, r2, cr12
	...
    98c0:	00181800 	andseq	r1, r8, r0, lsl #16
    98c4:	18180000 	ldmdane	r8, {}	; <UNPREDICTABLE>
	...
    98d0:	00181800 	andseq	r1, r8, r0, lsl #16
    98d4:	18180000 	ldmdane	r8, {}	; <UNPREDICTABLE>
    98d8:	00000408 	andeq	r0, r0, r8, lsl #8
    98dc:	00000000 	andeq	r0, r0, r0
    98e0:	0e708000 	cdpeq	0, 7, cr8, cr0, cr0, {0}
    98e4:	0080700e 	addeq	r7, r0, lr
	...
    98f0:	00fe0000 	rscseq	r0, lr, r0
    98f4:	0000fe00 	andeq	pc, r0, r0, lsl #28
	...
    9900:	e01c0200 	ands	r0, ip, r0, lsl #4
    9904:	00021ce0 	andeq	r1, r2, r0, ror #25
    9908:	00000000 	andeq	r0, r0, r0
    990c:	1c000000 	stcne	0, cr0, [r0], {-0}
    9910:	08102022 	ldmdaeq	r0, {r1, r5, sp}
    9914:	08080008 	stmdaeq	r8, {r3}
    9918:	00000000 	andeq	r0, r0, r0
    991c:	78000000 	stmdavc	r0, {}	; <UNPREDICTABLE>
    9920:	92e284cc 	rscls	r8, r2, #204, 8	; 0xcc000000
    9924:	04e29292 	strbteq	r9, [r2], #658	; 0x292
    9928:	0000780c 	andeq	r7, r0, ip, lsl #16
    992c:	10000000 	andne	r0, r0, r0
    9930:	44282828 	strtmi	r2, [r8], #-2088	; 0xfffff7d8
    9934:	82c67c44 	sbchi	r7, r6, #68, 24	; 0x4400
    9938:	00000000 	andeq	r0, r0, r0
    993c:	7e000000 	cdpvc	0, 0, cr0, cr0, cr0, {0}
    9940:	7e828282 	cdpvc	2, 8, cr8, cr2, cr2, {4}
    9944:	7e828282 	cdpvc	2, 8, cr8, cr2, cr2, {4}
    9948:	00000000 	andeq	r0, r0, r0
    994c:	78000000 	stmdavc	r0, {}	; <UNPREDICTABLE>
    9950:	02020284 	andeq	r0, r2, #132, 4	; 0x40000008
    9954:	78840202 	stmvc	r4, {r1, r9}
    9958:	00000000 	andeq	r0, r0, r0
    995c:	3e000000 	cdpcc	0, 0, cr0, cr0, cr0, {0}
    9960:	82828242 	addhi	r8, r2, #536870916	; 0x20000004
    9964:	3e428282 	cdpcc	2, 4, cr8, cr2, cr2, {4}
    9968:	00000000 	andeq	r0, r0, r0
    996c:	fe000000 	cdp2	0, 0, cr0, cr0, cr0, {0}
    9970:	fe020202 	cdp2	2, 0, cr0, cr2, cr2, {0}
    9974:	fe020202 	cdp2	2, 0, cr0, cr2, cr2, {0}
    9978:	00000000 	andeq	r0, r0, r0
    997c:	fe000000 	cdp2	0, 0, cr0, cr0, cr0, {0}
    9980:	fe020202 	cdp2	2, 0, cr0, cr2, cr2, {0}
    9984:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
    9988:	00000000 	andeq	r0, r0, r0
    998c:	78000000 	stmdavc	r0, {}	; <UNPREDICTABLE>
    9990:	c2020284 	andgt	r0, r2, #132, 4	; 0x40000008
    9994:	78848282 	stmvc	r4, {r1, r7, r9, pc}
    9998:	00000000 	andeq	r0, r0, r0
    999c:	82000000 	andhi	r0, r0, #0
    99a0:	fe828282 	cdp2	2, 8, cr8, cr2, cr2, {4}
    99a4:	82828282 	addhi	r8, r2, #536870920	; 0x20000008
    99a8:	00000000 	andeq	r0, r0, r0
    99ac:	3e000000 	cdpcc	0, 0, cr0, cr0, cr0, {0}
    99b0:	08080808 	stmdaeq	r8, {r3, fp}
    99b4:	3e080808 	cdpcc	8, 0, cr0, cr8, cr8, {0}
    99b8:	00000000 	andeq	r0, r0, r0
    99bc:	38000000 	stmdacc	r0, {}	; <UNPREDICTABLE>
    99c0:	20202020 	eorcs	r2, r0, r0, lsr #32
    99c4:	1c222020 	stcne	0, cr2, [r2], #-128	; 0xffffff80
    99c8:	00000000 	andeq	r0, r0, r0
    99cc:	42000000 	andmi	r0, r0, #0
    99d0:	0e0a1222 	cdpeq	2, 0, cr1, cr10, cr2, {1}
    99d4:	42222212 	eormi	r2, r2, #536870913	; 0x20000001
    99d8:	00000000 	andeq	r0, r0, r0
    99dc:	02000000 	andeq	r0, r0, #0
    99e0:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
    99e4:	fe020202 	cdp2	2, 0, cr0, cr2, cr2, {0}
    99e8:	00000000 	andeq	r0, r0, r0
    99ec:	c6000000 	strgt	r0, [r0], -r0
    99f0:	aaaaaac6 	bge	feab4510 <_ZZN7Console5kbaseElllE3C.0+0xfeaaa6e0>
    99f4:	82828292 	addhi	r8, r2, #536870921	; 0x20000009
    99f8:	00000000 	andeq	r0, r0, r0
    99fc:	86000000 	strhi	r0, [r0], -r0
    9a00:	928a8a86 	addls	r8, sl, #548864	; 0x86000
    9a04:	c2c2a2a2 	sbcgt	sl, r2, #536870922	; 0x2000000a
    9a08:	00000000 	andeq	r0, r0, r0
    9a0c:	38000000 	stmdacc	r0, {}	; <UNPREDICTABLE>
    9a10:	82828244 	addhi	r8, r2, #68, 4	; 0x40000004
    9a14:	38448282 	stmdacc	r4, {r1, r7, r9, pc}^
    9a18:	00000000 	andeq	r0, r0, r0
    9a1c:	7e000000 	cdpvc	0, 0, cr0, cr0, cr0, {0}
    9a20:	c28282c2 	addgt	r8, r2, #536870924	; 0x2000000c
    9a24:	0202027e 	andeq	r0, r2, #-536870905	; 0xe0000007
    9a28:	00000000 	andeq	r0, r0, r0
    9a2c:	38000000 	stmdacc	r0, {}	; <UNPREDICTABLE>
    9a30:	82828244 	addhi	r8, r2, #68, 4	; 0x40000004
    9a34:	78448282 	stmdavc	r4, {r1, r7, r9, pc}^
    9a38:	00004060 	andeq	r4, r0, r0, rrx
    9a3c:	7e000000 	cdpvc	0, 0, cr0, cr0, cr0, {0}
    9a40:	7e8282c2 	cdpvc	2, 8, cr8, cr2, cr2, {6}
    9a44:	02828242 	addeq	r8, r2, #536870916	; 0x20000004
    9a48:	00000000 	andeq	r0, r0, r0
    9a4c:	7c000000 	stcvc	0, cr0, [r0], {-0}
    9a50:	7c060286 	sfmvc	f0, 4, [r6], {134}	; 0x86
    9a54:	7dc280c0 	stclvc	0, cr8, [r2, #768]	; 0x300
    9a58:	00000000 	andeq	r0, r0, r0
    9a5c:	7f000000 	svcvc	0x00000000
    9a60:	08080808 	stmdaeq	r8, {r3, fp}
    9a64:	08080808 	stmdaeq	r8, {r3, fp}
    9a68:	00000000 	andeq	r0, r0, r0
    9a6c:	82000000 	andhi	r0, r0, #0
    9a70:	82828282 	addhi	r8, r2, #536870920	; 0x20000008
    9a74:	7c828282 	sfmvc	f0, 1, [r2], {130}	; 0x82
    9a78:	00000000 	andeq	r0, r0, r0
    9a7c:	82000000 	andhi	r0, r0, #0
    9a80:	444444c6 	strbmi	r4, [r4], #-1222	; 0xfffffb3a
    9a84:	10282828 	eorne	r2, r8, r8, lsr #16
    9a88:	00000000 	andeq	r0, r0, r0
    9a8c:	81000000 	tsthi	r0, r0
    9a90:	5a5a8181 	bpl	16aa09c <_ZZN7Console5kbaseElllE3C.0+0x16a026c>
    9a94:	6666665a 			; <UNDEFINED> instruction: 0x6666665a
    9a98:	00000000 	andeq	r0, r0, r0
    9a9c:	c6000000 	strgt	r0, [r0], -r0
    9aa0:	10382844 	eorsne	r2, r8, r4, asr #16
    9aa4:	82446c28 	subhi	r6, r4, #40, 24	; 0x2800
    9aa8:	00000000 	andeq	r0, r0, r0
    9aac:	41000000 	tstmi	r0, r0
    9ab0:	08141422 	ldmdaeq	r4, {r1, r5, sl, ip}
    9ab4:	08080808 	stmdaeq	r8, {r3, fp}
    9ab8:	00000000 	andeq	r0, r0, r0
    9abc:	fe000000 	cdp2	0, 0, cr0, cr0, cr0, {0}
    9ac0:	102060c0 	eorne	r6, r0, r0, asr #1
    9ac4:	fe060c08 	cdp2	12, 0, cr0, cr6, cr8, {0}
    9ac8:	00000000 	andeq	r0, r0, r0
    9acc:	08083800 	stmdaeq	r8, {fp, ip, sp}
    9ad0:	08080808 	stmdaeq	r8, {r3, fp}
    9ad4:	08080808 	stmdaeq	r8, {r3, fp}
    9ad8:	00000038 	andeq	r0, r0, r8, lsr r0
    9adc:	02000000 	andeq	r0, r0, #0
    9ae0:	08080404 	stmdaeq	r8, {r2, sl}
    9ae4:	20101018 	andscs	r1, r0, r8, lsl r0
    9ae8:	00004020 	andeq	r4, r0, r0, lsr #32
    9aec:	10101c00 	andsne	r1, r0, r0, lsl #24
    9af0:	10101010 	andsne	r1, r0, r0, lsl r0
    9af4:	10101010 	andsne	r1, r0, r0, lsl r0
    9af8:	0000001c 	andeq	r0, r0, ip, lsl r0
    9afc:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
    9b00:	00632214 	rsbeq	r2, r3, r4, lsl r2
	...
    9b18:	007f0000 	rsbseq	r0, pc, r0
    9b1c:	10080000 	andne	r0, r8, r0
	...
    9b30:	40443800 	submi	r3, r4, r0, lsl #16
    9b34:	5c62427c 	sfmpl	f4, 2, [r2], #-496	; 0xfffffe10
    9b38:	00000000 	andeq	r0, r0, r0
    9b3c:	02020200 	andeq	r0, r2, #0, 4
    9b40:	42663e02 	rsbmi	r3, r6, #2, 28
    9b44:	3e664242 	cdpcc	2, 6, cr4, cr6, cr2, {2}
	...
    9b50:	02443800 	subeq	r3, r4, #0, 16
    9b54:	38440202 	stmdacc	r4, {r1, r9}^
    9b58:	00000000 	andeq	r0, r0, r0
    9b5c:	40404000 	submi	r4, r0, r0
    9b60:	42667c40 	rsbmi	r7, r6, #64, 24	; 0x4000
    9b64:	7c664242 	sfmvc	f4, 2, [r6], #-264	; 0xfffffef8
	...
    9b70:	42663c00 	rsbmi	r3, r6, #0, 24
    9b74:	3c46027e 	sfmcc	f0, 2, [r6], {126}	; 0x7e
    9b78:	00000000 	andeq	r0, r0, r0
    9b7c:	08083000 	stmdaeq	r8, {ip, sp}
    9b80:	08083e08 	stmdaeq	r8, {r3, r9, sl, fp, ip, sp}
    9b84:	08080808 	stmdaeq	r8, {r3, fp}
	...
    9b90:	42667c00 	rsbmi	r7, r6, #0, 24
    9b94:	5c664242 	sfmpl	f4, 2, [r6], #-264	; 0xfffffef8
    9b98:	00384440 	eorseq	r4, r8, r0, asr #8
    9b9c:	02020200 	andeq	r0, r2, #0, 4
    9ba0:	42463a02 	submi	r3, r6, #8192	; 0x2000
    9ba4:	42424242 	submi	r4, r2, #536870916	; 0x20000004
    9ba8:	00000000 	andeq	r0, r0, r0
    9bac:	00000800 	andeq	r0, r0, r0, lsl #16
    9bb0:	08080e00 	stmdaeq	r8, {r9, sl, fp}
    9bb4:	3e080808 	cdpcc	8, 0, cr0, cr8, cr8, {0}
    9bb8:	00000000 	andeq	r0, r0, r0
    9bbc:	00001000 	andeq	r1, r0, r0
    9bc0:	10101c00 	andsne	r1, r0, r0, lsl #24
    9bc4:	10101010 	andsne	r1, r0, r0, lsl r0
    9bc8:	000e1010 	andeq	r1, lr, r0, lsl r0
    9bcc:	02020200 	andeq	r0, r2, #0, 4
    9bd0:	0a122202 	beq	4923e0 <_ZZN7Console5kbaseElllE3C.0+0x4885b0>
    9bd4:	4222120e 	eormi	r1, r2, #-536870912	; 0xe0000000
    9bd8:	00000000 	andeq	r0, r0, r0
    9bdc:	08080e00 	stmdaeq	r8, {r9, sl, fp}
    9be0:	08080808 	stmdaeq	r8, {r3, fp}
    9be4:	70080808 	andvc	r0, r8, r8, lsl #16
	...
    9bf0:	9292fe00 	addsls	pc, r2, #0, 28
    9bf4:	92929292 	addsls	r9, r2, #536870921	; 0x20000009
	...
    9c00:	42463a00 	submi	r3, r6, #0, 20
    9c04:	42424242 	submi	r4, r2, #536870916	; 0x20000004
	...
    9c10:	42663c00 	rsbmi	r3, r6, #0, 24
    9c14:	3c664242 	sfmcc	f4, 2, [r6], #-264	; 0xfffffef8
	...
    9c20:	42663e00 	rsbmi	r3, r6, #0, 28
    9c24:	3e664242 	cdpcc	2, 6, cr4, cr6, cr2, {2}
    9c28:	00020202 	andeq	r0, r2, r2, lsl #4
    9c2c:	00000000 	andeq	r0, r0, r0
    9c30:	42667c00 	rsbmi	r7, r6, #0, 24
    9c34:	5c664242 	sfmpl	f4, 2, [r6], #-264	; 0xfffffef8
    9c38:	00404040 	subeq	r4, r0, r0, asr #32
    9c3c:	00000000 	andeq	r0, r0, r0
    9c40:	044c3c00 	strbeq	r3, [ip], #-3072	; 0xfffff400
    9c44:	04040404 	streq	r0, [r4], #-1028	; 0xfffffbfc
	...
    9c50:	02423c00 	subeq	r3, r2, #0, 24
    9c54:	3c42403c 	mcrrcc	0, 3, r4, r2, cr12
    9c58:	00000000 	andeq	r0, r0, r0
    9c5c:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
    9c60:	08087e08 	stmdaeq	r8, {r3, r9, sl, fp, ip, sp, lr}
    9c64:	70080808 	andvc	r0, r8, r8, lsl #16
	...
    9c70:	42424200 	submi	r4, r2, #0, 4
    9c74:	5c624242 	sfmpl	f4, 2, [r2], #-264	; 0xfffffef8
	...
    9c80:	24664200 	strbtcs	r4, [r6], #-512	; 0xfffffe00
    9c84:	18183c24 	ldmdane	r8, {r2, r5, sl, fp, ip, sp}
	...
    9c90:	5a818100 	bpl	fe06a098 <_ZZN7Console5kbaseElllE3C.0+0xfe060268>
    9c94:	24245a5a 	strtcs	r5, [r4], #-2650	; 0xfffff5a6
	...
    9ca0:	18246600 	stmdane	r4!, {r9, sl, sp, lr}
    9ca4:	66241818 			; <UNDEFINED> instruction: 0x66241818
	...
    9cb0:	24444200 	strbcs	r4, [r4], #-512	; 0xfffffe00
    9cb4:	10182824 	andsne	r2, r8, r4, lsr #16
    9cb8:	000c0810 	andeq	r0, ip, r0, lsl r8
    9cbc:	00000000 	andeq	r0, r0, r0
    9cc0:	20407e00 	subcs	r7, r0, r0, lsl #28
    9cc4:	7e020418 	cfmvdlrvc	mvd2, r0
    9cc8:	00000000 	andeq	r0, r0, r0
    9ccc:	08083800 	stmdaeq	r8, {fp, ip, sp}
    9cd0:	08060808 	stmdaeq	r6, {r3, fp}
    9cd4:	08080808 	stmdaeq	r8, {r3, fp}
    9cd8:	00000030 	andeq	r0, r0, r0, lsr r0
    9cdc:	08080800 	stmdaeq	r8, {fp}
    9ce0:	08080808 	stmdaeq	r8, {r3, fp}
    9ce4:	08080808 	stmdaeq	r8, {r3, fp}
    9ce8:	00000808 	andeq	r0, r0, r8, lsl #16
    9cec:	08080e00 	stmdaeq	r8, {r9, sl, fp}
    9cf0:	08300808 	ldmdaeq	r0!, {r3, fp}
    9cf4:	08080808 	stmdaeq	r8, {r3, fp}
    9cf8:	00000006 	andeq	r0, r0, r6
    9cfc:	00000000 	andeq	r0, r0, r0
    9d00:	9c000000 	stcls	0, cr0, [r0], {-0}
    9d04:	00000062 	andeq	r0, r0, r2, rrx
    9d08:	00000000 	andeq	r0, r0, r0
    9d0c:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
    9d10:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
    9d14:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
    9d18:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
    9d1c:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
    9d20:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff

00009d24 <rootPageTable>:
    9d24:	00000000 	andeq	r0, r0, r0

00009d28 <use_irq_console>:
    9d28:	00000000 	andeq	r0, r0, r0

00009d2c <irq_console>:
    9d2c:	00000000 	andeq	r0, r0, r0

00009d30 <_ZN4Math6divideIlEET_S1_S1_PS1_S2_>:
    9d30:	e1b0cfa0 	lsrs	ip, r0, #31
    9d34:	e92d01f0 	push	{r4, r5, r6, r7, r8}
    9d38:	e1a08fa1 	lsr	r8, r1, #31
    9d3c:	12600000 	rsbne	r0, r0, #0
    9d40:	e3580000 	cmp	r8, #0
    9d44:	12611000 	rsbne	r1, r1, #0
    9d48:	e3510000 	cmp	r1, #0
    9d4c:	0a00001e 	beq	9dcc <_ZN4Math6divideIlEET_S1_S1_PS1_S2_+0x9c>
    9d50:	e1500001 	cmp	r0, r1
    9d54:	ba000017 	blt	9db8 <_ZN4Math6divideIlEET_S1_S1_PS1_S2_+0x88>
    9d58:	e3a04000 	mov	r4, #0
    9d5c:	e5824000 	str	r4, [r2]
    9d60:	e5834000 	str	r4, [r3]
    9d64:	e5925000 	ldr	r5, [r2]
    9d68:	e2617000 	rsb	r7, r1, #0
    9d6c:	e0614000 	rsb	r4, r1, r0
    9d70:	e0844007 	add	r4, r4, r7
    9d74:	e0846001 	add	r6, r4, r1
    9d78:	e1510006 	cmp	r1, r6
    9d7c:	e2855001 	add	r5, r5, #1
    9d80:	dafffffa 	ble	9d70 <_ZN4Math6divideIlEET_S1_S1_PS1_S2_+0x40>
    9d84:	e0010195 	mul	r1, r5, r1
    9d88:	e0610000 	rsb	r0, r1, r0
    9d8c:	e5825000 	str	r5, [r2]
    9d90:	e5830000 	str	r0, [r3]
    9d94:	e5920000 	ldr	r0, [r2]
    9d98:	e35c0000 	cmp	ip, #0
    9d9c:	12600000 	rsbne	r0, r0, #0
    9da0:	15820000 	strne	r0, [r2]
    9da4:	e3580000 	cmp	r8, #0
    9da8:	12600000 	rsbne	r0, r0, #0
    9dac:	15820000 	strne	r0, [r2]
    9db0:	e8bd01f0 	pop	{r4, r5, r6, r7, r8}
    9db4:	e12fff1e 	bx	lr
    9db8:	e3a0c000 	mov	ip, #0
    9dbc:	e582c000 	str	ip, [r2]
    9dc0:	e5830000 	str	r0, [r3]
    9dc4:	e5920000 	ldr	r0, [r2]
    9dc8:	eafffff8 	b	9db0 <_ZN4Math6divideIlEET_S1_S1_PS1_S2_+0x80>
    9dcc:	e3e01000 	mvn	r1, #0
    9dd0:	e5821000 	str	r1, [r2]
    9dd4:	e5831000 	str	r1, [r3]
    9dd8:	e5920000 	ldr	r0, [r2]
    9ddc:	eafffff3 	b	9db0 <_ZN4Math6divideIlEET_S1_S1_PS1_S2_+0x80>

00009de0 <_ZN4Math13getDigitCountIlEET_S1_S1_>:
    9de0:	e92d4030 	push	{r4, r5, lr}
    9de4:	e3500000 	cmp	r0, #0
    9de8:	e24dd00c 	sub	sp, sp, #12
    9dec:	e3a04000 	mov	r4, #0
    9df0:	e1a05001 	mov	r5, r1
    9df4:	e58d4004 	str	r4, [sp, #4]
    9df8:	e58d4000 	str	r4, [sp]
    9dfc:	da000007 	ble	9e20 <_ZN4Math13getDigitCountIlEET_S1_S1_+0x40>
    9e00:	e1a01005 	mov	r1, r5
    9e04:	e28d2004 	add	r2, sp, #4
    9e08:	e1a0300d 	mov	r3, sp
    9e0c:	ebffffc7 	bl	9d30 <_ZN4Math6divideIlEET_S1_S1_PS1_S2_>
    9e10:	e59d0004 	ldr	r0, [sp, #4]
    9e14:	e3500000 	cmp	r0, #0
    9e18:	e2844001 	add	r4, r4, #1
    9e1c:	cafffff7 	bgt	9e00 <_ZN4Math13getDigitCountIlEET_S1_S1_+0x20>
    9e20:	e1a00004 	mov	r0, r4
    9e24:	e28dd00c 	add	sp, sp, #12
    9e28:	e8bd4030 	pop	{r4, r5, lr}
    9e2c:	e12fff1e 	bx	lr

00009e30 <_ZZN7Console5kbaseElllE3C.0>:
    9e30:	33323130 	teqcc	r2, #48, 2
    9e34:	37363534 			; <UNDEFINED> instruction: 0x37363534
    9e38:	42413938 	submi	r3, r1, #56, 18	; 0xe0000
    9e3c:	46454443 	strbmi	r4, [r5], -r3, asr #8
    9e40:	4a494847 	bmi	125bf64 <_ZZN7Console5kbaseElllE3C.0+0x1252134>
    9e44:	4e4d4c4b 	cdpmi	12, 4, cr4, cr13, cr11, {2}
    9e48:	0000504f 	andeq	r5, r0, pc, asr #32
    9e4c:	6f727245 	svcvs	0x00727245
    9e50:	43202e72 	teqmi	r0, #1824	; 0x720
    9e54:	75637269 	strbvc	r7, [r3, #-617]!	; 0xfffffd97
    9e58:	2072616c 	rsbscs	r6, r2, ip, ror #2
    9e5c:	706f6f6c 	rsbvc	r6, pc, ip, ror #30
    9e60:	65686320 	strbvs	r6, [r8, #-800]!	; 0xfffffce0
    9e64:	6e696b63 	vnmulvs.f64	d22, d9, d19
    9e68:	6f662067 	svcvs	0x00662067
    9e6c:	74732072 	ldrbtvc	r2, [r3], #-114	; 0xffffff8e
    9e70:	73757461 	cmnvc	r5, #1627389952	; 0x61000000
    9e74:	0000002e 	andeq	r0, r0, lr, lsr #32
    9e78:	6f727245 	svcvs	0x00727245
    9e7c:	54202172 	strtpl	r2, [r0], #-370	; 0xfffffe8e
    9e80:	6d206568 	cfstr32vs	mvfx6, [r0, #-416]!	; 0xfffffe60
    9e84:	626c6961 	rsbvs	r6, ip, #1589248	; 0x184000
    9e88:	6420786f 	strtvs	r7, [r0], #-2159	; 0xfffff791
    9e8c:	276e6469 	strbcs	r6, [lr, -r9, ror #8]!
    9e90:	65722074 	ldrbvs	r2, [r2, #-116]!	; 0xffffff8c
    9e94:	6e727574 	mrcvs	5, 3, r7, cr2, cr4, {3}
    9e98:	73206120 	teqvc	r0, #32, 2
    9e9c:	61746975 	cmnvs	r4, r5, ror r9
    9ea0:	20656c62 	rsbcs	r6, r5, r2, ror #24
    9ea4:	756c6176 	strbvc	r6, [ip, #-374]!	; 0xfffffe8a
    9ea8:	6e692065 	cdpvs	0, 6, cr2, cr9, cr5, {3}
    9eac:	74206120 	strtvc	r6, [r0], #-288	; 0xfffffee0
    9eb0:	6c656d69 	stclvs	13, cr6, [r5], #-420	; 0xfffffe5c
    9eb4:	616d2079 	smcvs	53769	; 0xd209
    9eb8:	72656e6e 	rsbvc	r6, r5, #1760	; 0x6e0
    9ebc:	0000002e 	andeq	r0, r0, lr, lsr #32
    9ec0:	6f727245 	svcvs	0x00727245
    9ec4:	54202172 	strtpl	r2, [r0], #-370	; 0xfffffe8e
    9ec8:	66206568 	strtvs	r6, [r0], -r8, ror #10
    9ecc:	656d6172 	strbvs	r6, [sp, #-370]!	; 0xfffffe8e
    9ed0:	66667562 	strbtvs	r7, [r6], -r2, ror #10
    9ed4:	72207265 	eorvc	r7, r0, #1342177286	; 0x50000006
    9ed8:	72757465 	rsbsvc	r7, r5, #1694498816	; 0x65000000
    9edc:	2064656e 	rsbcs	r6, r4, lr, ror #10
    9ee0:	69207369 	stmdbvs	r0!, {r0, r3, r5, r6, r8, r9, ip, sp, lr}
    9ee4:	6c61766e 	stclvs	6, cr7, [r1], #-440	; 0xfffffe48
    9ee8:	202e6469 	eorcs	r6, lr, r9, ror #8
    9eec:	726f6241 	rsbvc	r6, pc, #268435460	; 0x10000004
    9ef0:	676e6974 			; <UNDEFINED> instruction: 0x676e6974
    9ef4:	61726620 	cmnvs	r2, r0, lsr #12
    9ef8:	7562656d 	strbvc	r6, [r2, #-1389]!	; 0xfffffa93
    9efc:	72656666 	rsbvc	r6, r5, #106954752	; 0x6600000
    9f00:	71636120 	cmnvc	r3, r0, lsr #2
    9f04:	69736975 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r8, fp, sp, lr}^
    9f08:	6e6f6974 	mcrvs	9, 3, r6, cr15, cr4, {3}
    9f0c:	00000000 	andeq	r0, r0, r0
    9f10:	6f727245 	svcvs	0x00727245
    9f14:	54202172 	strtpl	r2, [r0], #-370	; 0xfffffe8e
    9f18:	70206568 	eorvc	r6, r0, r8, ror #10
    9f1c:	68637469 	stmdavs	r3!, {r0, r3, r5, r6, sl, ip, sp, lr}^
    9f20:	74657220 	strbtvc	r7, [r5], #-544	; 0xfffffde0
    9f24:	656e7275 	strbvs	r7, [lr, #-629]!	; 0xfffffd8b
    9f28:	73692064 	cmnvc	r9, #100	; 0x64
    9f2c:	766e6920 	strbtvc	r6, [lr], -r0, lsr #18
    9f30:	64696c61 	strbtvs	r6, [r9], #-3169	; 0xfffff39f
    9f34:	6241202e 	subvs	r2, r1, #46	; 0x2e
    9f38:	6974726f 	ldmdbvs	r4!, {r0, r1, r2, r3, r5, r6, r9, ip, sp, lr}^
    9f3c:	6620676e 	strtvs	r6, [r0], -lr, ror #14
    9f40:	656d6172 	strbvs	r6, [sp, #-370]!	; 0xfffffe8e
    9f44:	66667562 	strbtvs	r7, [r6], -r2, ror #10
    9f48:	61207265 	teqvs	r0, r5, ror #4
    9f4c:	69757163 	ldmdbvs	r5!, {r0, r1, r5, r6, r8, ip, sp, lr}^
    9f50:	69746973 	ldmdbvs	r4!, {r0, r1, r4, r5, r6, r8, fp, sp, lr}^
    9f54:	002e6e6f 	eoreq	r6, lr, pc, ror #28
    9f58:	4e4f445b 	mcrmi	4, 2, r4, cr15, cr11, {2}
    9f5c:	00095d45 	andeq	r5, r9, r5, asr #26
    9f60:	45544e49 	ldrbmi	r4, [r4, #-3657]	; 0xfffff1b7
    9f64:	50555252 	subspl	r5, r5, r2, asr r2
    9f68:	00000054 	andeq	r0, r0, r4, asr r0
    9f6c:	636c6557 	cmnvs	ip, #364904448	; 0x15c00000
    9f70:	20656d6f 	rsbcs	r6, r5, pc, ror #26
    9f74:	4d206f74 	stcmi	15, cr6, [r0, #-464]!	; 0xfffffe30
    9f78:	66646e69 	strbtvs	r6, [r4], -r9, ror #28
    9f7c:	6579616c 	ldrbvs	r6, [r9, #-364]!	; 0xfffffe94
    9f80:	61202c72 	teqvs	r0, r2, ror ip
    9f84:	73756320 	cmnvc	r5, #32, 6	; 0x80000000
    9f88:	206d6f74 	rsbcs	r6, sp, r4, ror pc
    9f8c:	70736172 	rsbsvc	r6, r3, r2, ror r1
    9f90:	72726562 	rsbsvc	r6, r2, #411041792	; 0x18800000
    9f94:	69702079 	ldmdbvs	r0!, {r0, r3, r4, r5, r6, sp}^
    9f98:	72656b20 	rsbvc	r6, r5, #32, 22	; 0x8000
    9f9c:	206c656e 	rsbcs	r6, ip, lr, ror #10
    9fa0:	74697277 	strbtvc	r7, [r9], #-631	; 0xfffffd89
    9fa4:	206e6574 	rsbcs	r6, lr, r4, ror r5
    9fa8:	43206e69 	teqmi	r0, #1680	; 0x690
    9fac:	000a2b2b 	andeq	r2, sl, fp, lsr #22
    9fb0:	6c697542 	cfstr64vs	mvdx7, [r9], #-264	; 0xfffffef8
    9fb4:	00203a64 	eoreq	r3, r0, r4, ror #20
    9fb8:	2e302e30 	mrccs	14, 1, r2, cr0, cr0, {1}
    9fbc:	00323236 	eorseq	r3, r2, r6, lsr r2
    9fc0:	000a0a0a 	andeq	r0, sl, sl, lsl #20
    9fc4:	74696157 	strbtvc	r6, [r9], #-343	; 0xfffffea9
    9fc8:	3a676e69 	bcc	19e5974 <_ZZN7Console5kbaseElllE3C.0+0x19dbb44>
    9fcc:	00000020 	andeq	r0, r0, r0, lsr #32
    9fd0:	54535b0a 	ldrbpl	r5, [r3], #-2826	; 0xfffff4f6
    9fd4:	49545241 	ldmdbmi	r4, {r0, r6, r9, ip, lr}^
    9fd8:	0a5d474e 	beq	175bd18 <_ZZN7Console5kbaseElllE3C.0+0x1751ee8>
    9fdc:	0000000a 	andeq	r0, r0, sl
    9fe0:	74696e49 	strbtvc	r6, [r9], #-3657	; 0xfffff1b7
    9fe4:	696c6169 	stmdbvs	ip!, {r0, r3, r5, r6, r8, sp, lr}^
    9fe8:	2064657a 	rsbcs	r6, r4, sl, ror r5
    9fec:	65676170 	strbvs	r6, [r7, #-368]!	; 0xfffffe90
    9ff0:	62617420 	rsbvs	r7, r1, #32, 8	; 0x20000000
    9ff4:	0000656c 	andeq	r6, r0, ip, ror #10
    9ff8:	65746e49 	ldrbvs	r6, [r4, #-3657]!	; 0xfffff1b7
    9ffc:	70757272 	rsbsvc	r7, r5, r2, ror r2
    a000:	65762074 	ldrbvs	r2, [r6, #-116]!	; 0xffffff8c
    a004:	726f7463 	rsbvc	r7, pc, #1660944384	; 0x63000000
    a008:	4e452073 	mcrmi	0, 2, r2, cr5, cr3, {3}
    a00c:	454c4241 	strbmi	r4, [ip, #-577]	; 0xfffffdbf
    a010:	00000044 	andeq	r0, r0, r4, asr #32
    a014:	756f6241 	strbvc	r6, [pc, #-577]!	; 9ddb <_ZN4Math6divideIlEET_S1_S1_PS1_S2_+0xab>
    a018:	6f742074 	svcvs	0x00742074
    a01c:	72687420 	rsbvc	r7, r8, #32, 8	; 0x20000000
    a020:	6120776f 	teqvs	r0, pc, ror #14
    a024:	5753206e 	ldrbpl	r2, [r3, -lr, rrx]
    a028:	78652049 	stmdavc	r5!, {r0, r3, r6, sp}^
    a02c:	74706563 	ldrbtvc	r6, [r0], #-1379	; 0xfffffa9d
    a030:	2e6e6f69 	cdpcs	15, 6, cr6, cr14, cr9, {3}
    a034:	000a2e2e 	andeq	r2, sl, lr, lsr #28
    a038:	20495753 	subcs	r5, r9, r3, asr r7
    a03c:	65637845 	strbvs	r7, [r3, #-2117]!	; 0xfffff7bb
    a040:	6f697470 	svcvs	0x00697470
    a044:	6854206e 	ldmdavs	r4, {r1, r2, r3, r5, r6, sp}^
    a048:	6e776f72 	mrcvs	15, 3, r6, cr7, cr2, {3}
    a04c:	00000000 	andeq	r0, r0, r0
    a050:	654b0a0a 	strbvs	r0, [fp, #-2570]	; 0xfffff5f6
    a054:	6c656e72 	stclvs	14, cr6, [r5], #-456	; 0xfffffe38
    a058:	75687320 	strbvc	r7, [r8, #-800]!	; 0xfffffce0
    a05c:	6e697474 	mcrvs	4, 3, r7, cr9, cr4, {3}
    a060:	6f642067 	svcvs	0x00642067
    a064:	2e2e6e77 	mcrcs	14, 1, r6, cr14, cr7, {3}
    a068:	0000002e 	andeq	r0, r0, lr, lsr #32
    a06c:	6f727265 	svcvs	0x00727265
    a070:	55203a72 	strpl	r3, [r0, #-2674]!	; 0xfffff58e
    a074:	7075736e 	rsbsvc	r7, r5, lr, ror #6
    a078:	74726f70 	ldrbtvc	r6, [r2], #-3952	; 0xfffff090
    a07c:	62206465 	eorvs	r6, r0, #1694498816	; 0x65000000
    a080:	20657361 	rsbcs	r7, r5, r1, ror #6
    a084:	6d206e69 	stcvs	14, cr6, [r0, #-420]!	; 0xfffffe5c
    a088:	65687461 	strbvs	r7, [r8, #-1121]!	; 0xfffffb9f
    a08c:	6974616d 	ldmdbvs	r4!, {r0, r2, r3, r5, r6, r8, sp, lr}^
    a090:	206c6163 	rsbcs	r6, ip, r3, ror #2
    a094:	7265706f 	rsbvc	r7, r5, #111	; 0x6f
    a098:	6f697461 	svcvs	0x00697461
    a09c:	000a2e6e 	andeq	r2, sl, lr, ror #28
    a0a0:	3a434347 	bcc	10dadc4 <_ZZN7Console5kbaseElllE3C.0+0x10d0f94>
    a0a4:	6f532820 	svcvs	0x00532820
    a0a8:	65637275 	strbvs	r7, [r3, #-629]!	; 0xfffffd8b
    a0ac:	47207972 			; <UNDEFINED> instruction: 0x47207972
    a0b0:	4c202b2b 	stcmi	11, cr2, [r0], #-172	; 0xffffff54
    a0b4:	20657469 	rsbcs	r7, r5, r9, ror #8
    a0b8:	30313032 	eorscc	r3, r1, r2, lsr r0
    a0bc:	2d39302e 	ldccs	0, cr3, [r9, #-184]!	; 0xffffff48
    a0c0:	20293135 	eorcs	r3, r9, r5, lsr r1
    a0c4:	2e352e34 	mrccs	14, 1, r2, cr5, cr4, {1}
    a0c8:	33410031 	movtcc	r0, #4145	; 0x1031
    a0cc:	61000000 	tstvs	r0, r0
    a0d0:	69626165 	stmdbvs	r2!, {r0, r2, r5, r6, r8, sp, lr}^
    a0d4:	00290100 	eoreq	r0, r9, r0, lsl #2
    a0d8:	41050000 	tstmi	r5, r0
    a0dc:	54374d52 	ldrtpl	r4, [r7], #-3410	; 0xfffff2ae
    a0e0:	2d494d44 	stclcs	13, cr4, [r9, #-272]	; 0xfffffef0
    a0e4:	02060053 	andeq	r0, r6, #83	; 0x53
    a0e8:	01090108 	tsteq	r9, r8, lsl #2
    a0ec:	01140412 	tsteq	r4, r2, lsl r4
    a0f0:	03170115 	tsteq	r7, #1073741829	; 0x40000005
    a0f4:	01190118 	tsteq	r9, r8, lsl r1
    a0f8:	021e011a 	andseq	r0, lr, #-2147483642	; 0x80000006
    a0fc:	Address 0x0000a0fc is out of bounds.

