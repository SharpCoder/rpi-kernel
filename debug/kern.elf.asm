
kernel.elf:     file format elf32-littlearm


Disassembly of section vectortable:

00000000 <vectorTable>:
   0:	ea001ffe 	b	8000 <init>
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
  2c:	eb001ff9 	bl	8018 <irq_handler>
  30:	e8fd801f 	ldm	sp!, {r0, r1, r2, r3, r4, pc}^
  34:	00001541 	andeq	r1, r0, r1, asr #10
  38:	61656100 	cmnvs	r5, r0, lsl #2
  3c:	01006962 	tsteq	r0, r2, ror #18
  40:	0000000b 	andeq	r0, r0, fp
  44:	01080106 	tsteq	r8, r6, lsl #2
  48:	Address 0x00000048 is out of bounds.


Disassembly of section kernel:

00008000 <init>:
    8000:	e3a0d601 	mov	sp, #1048576	; 0x100000
    8004:	eb00040d 	bl	9040 <kmain>
    8008:	eaffffff 	b	800c <hang$>

0000800c <hang$>:
    800c:	eafffffe 	b	800c <hang$>

00008010 <_Z6ioaddrj>:
    8010:	e2800202 	add	r0, r0, #536870912	; 0x20000000
    8014:	e12fff1e 	bx	lr

00008018 <irq_handler>:
    8018:	e12fff1e 	bx	lr

0000801c <_Z3absi>:
    801c:	e3500000 	cmp	r0, #0
    8020:	b2600000 	rsblt	r0, r0, #0
    8024:	e12fff1e 	bx	lr

00008028 <_Z15getNumberLengthiiPi>:
    8028:	e1a03000 	mov	r3, r0
    802c:	e3a00000 	mov	r0, #0
    8030:	e5820000 	str	r0, [r2]
    8034:	e3a00001 	mov	r0, #1
    8038:	ea000000 	b	8040 <_Z15getNumberLengthiiPi+0x18>
    803c:	e1a00002 	mov	r0, r2
    8040:	e0020091 	mul	r2, r1, r0
    8044:	e1520003 	cmp	r2, r3
    8048:	bafffffb 	blt	803c <_Z15getNumberLengthiiPi+0x14>
    804c:	e12fff1e 	bx	lr

00008050 <_Z15getNumberLengthii>:
    8050:	e1a03000 	mov	r3, r0
    8054:	e3a00001 	mov	r0, #1
    8058:	ea000000 	b	8060 <_Z15getNumberLengthii+0x10>
    805c:	e1a00002 	mov	r0, r2
    8060:	e0020091 	mul	r2, r1, r0
    8064:	e1530002 	cmp	r3, r2
    8068:	cafffffb 	bgt	805c <_Z15getNumberLengthii+0xc>
    806c:	e12fff1e 	bx	lr

00008070 <_Z15getNumberLengthi>:
    8070:	e3a03001 	mov	r3, #1
    8074:	ea000000 	b	807c <_Z15getNumberLengthi+0xc>
    8078:	e1a03002 	mov	r3, r2
    807c:	e0832103 	add	r2, r3, r3, lsl #2
    8080:	e1a02082 	lsl	r2, r2, #1
    8084:	e1500002 	cmp	r0, r2
    8088:	cafffffa 	bgt	8078 <_Z15getNumberLengthi+0x8>
    808c:	e1a00003 	mov	r0, r3
    8090:	e12fff1e 	bx	lr

00008094 <_Z6divideiiPiS_>:
    8094:	e3510000 	cmp	r1, #0
    8098:	e92d00f0 	push	{r4, r5, r6, r7}
    809c:	0a00001d 	beq	8118 <_Z6divideiiPiS_+0x84>
    80a0:	e3510001 	cmp	r1, #1
    80a4:	05820000 	streq	r0, [r2]
    80a8:	03a02000 	moveq	r2, #0
    80ac:	05832000 	streq	r2, [r3]
    80b0:	0a000018 	beq	8118 <_Z6divideiiPiS_+0x84>
    80b4:	e3a04000 	mov	r4, #0
    80b8:	e3500000 	cmp	r0, #0
    80bc:	b2600000 	rsblt	r0, r0, #0
    80c0:	e1500004 	cmp	r0, r4
    80c4:	e5824000 	str	r4, [r2]
    80c8:	e5834000 	str	r4, [r3]
    80cc:	0a000011 	beq	8118 <_Z6divideiiPiS_+0x84>
    80d0:	e3510000 	cmp	r1, #0
    80d4:	b2611000 	rsblt	r1, r1, #0
    80d8:	e050c001 	subs	ip, r0, r1
    80dc:	4a000010 	bmi	8124 <_Z6divideiiPiS_+0x90>
    80e0:	e061c00c 	rsb	ip, r1, ip
    80e4:	e5925000 	ldr	r5, [r2]
    80e8:	e2617000 	rsb	r7, r1, #0
    80ec:	e08c6001 	add	r6, ip, r1
    80f0:	ea000001 	b	80fc <_Z6divideiiPiS_+0x68>
    80f4:	e09c6001 	adds	r6, ip, r1
    80f8:	4a000008 	bmi	8120 <_Z6divideiiPiS_+0x8c>
    80fc:	e2844001 	add	r4, r4, #1
    8100:	e1540006 	cmp	r4, r6
    8104:	e1a00006 	mov	r0, r6
    8108:	e08cc007 	add	ip, ip, r7
    810c:	e2855001 	add	r5, r5, #1
    8110:	bafffff7 	blt	80f4 <_Z6divideiiPiS_+0x60>
    8114:	e5825000 	str	r5, [r2]
    8118:	e8bd00f0 	pop	{r4, r5, r6, r7}
    811c:	e12fff1e 	bx	lr
    8120:	e5825000 	str	r5, [r2]
    8124:	e5830000 	str	r0, [r3]
    8128:	eafffffa 	b	8118 <_Z6divideiiPiS_+0x84>

0000812c <_Z6divideii>:
    812c:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    8130:	e24dd00c 	sub	sp, sp, #12
    8134:	e3a0c000 	mov	ip, #0
    8138:	e28d2004 	add	r2, sp, #4
    813c:	e1a0300d 	mov	r3, sp
    8140:	e58dc004 	str	ip, [sp, #4]
    8144:	e58dc000 	str	ip, [sp]
    8148:	ebffffd1 	bl	8094 <_Z6divideiiPiS_>
    814c:	e59d0004 	ldr	r0, [sp, #4]
    8150:	e28dd00c 	add	sp, sp, #12
    8154:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
    8158:	e12fff1e 	bx	lr

0000815c <_Z6moduloii>:
    815c:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    8160:	e24dd00c 	sub	sp, sp, #12
    8164:	e3a0c000 	mov	ip, #0
    8168:	e28d2004 	add	r2, sp, #4
    816c:	e1a0300d 	mov	r3, sp
    8170:	e58dc004 	str	ip, [sp, #4]
    8174:	e58dc000 	str	ip, [sp]
    8178:	ebffffc5 	bl	8094 <_Z6divideiiPiS_>
    817c:	e59d0000 	ldr	r0, [sp]
    8180:	e28dd00c 	add	sp, sp, #12
    8184:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
    8188:	e12fff1e 	bx	lr

0000818c <_ZN12RaspberryLib5GET32Ej>:
    818c:	e5900000 	ldr	r0, [r0]
    8190:	e12fff1e 	bx	lr

00008194 <_ZN12RaspberryLib5PUT32Ejj>:
    8194:	e5801000 	str	r1, [r0]
    8198:	e12fff1e 	bx	lr

0000819c <_ZN12RaspberryLib4GET4Ej>:
    819c:	e5d00000 	ldrb	r0, [r0]
    81a0:	e12fff1e 	bx	lr

000081a4 <_ZN12RaspberryLib4PUT4Ejc>:
    81a4:	e5c01000 	strb	r1, [r0]
    81a8:	e12fff1e 	bx	lr

000081ac <_ZN12RaspberryLib7SetGPIOEjj>:
    81ac:	e59f2094 	ldr	r2, [pc, #148]	; 8248 <_ZN12RaspberryLib7SetGPIOEjj+0x9c>
    81b0:	e3510001 	cmp	r1, #1
    81b4:	e59f3090 	ldr	r3, [pc, #144]	; 824c <_ZN12RaspberryLib7SetGPIOEjj+0xa0>
    81b8:	11a03002 	movne	r3, r2
    81bc:	e350000a 	cmp	r0, #10
    81c0:	959f1088 	ldrls	r1, [pc, #136]	; 8250 <_ZN12RaspberryLib7SetGPIOEjj+0xa4>
    81c4:	93a0c001 	movls	ip, #1
    81c8:	9a000018 	bls	8230 <_ZN12RaspberryLib7SetGPIOEjj+0x84>
    81cc:	e59f2080 	ldr	r2, [pc, #128]	; 8254 <_ZN12RaspberryLib7SetGPIOEjj+0xa8>
    81d0:	e240100b 	sub	r1, r0, #11
    81d4:	e082c291 	umull	ip, r2, r1, r2
    81d8:	e240000a 	sub	r0, r0, #10
    81dc:	e1a011a2 	lsr	r1, r2, #3
    81e0:	e350000a 	cmp	r0, #10
    81e4:	e2012001 	and	r2, r1, #1
    81e8:	e3a0c001 	mov	ip, #1
    81ec:	9a000009 	bls	8218 <_ZN12RaspberryLib7SetGPIOEjj+0x6c>
    81f0:	e3520000 	cmp	r2, #0
    81f4:	0a000003 	beq	8208 <_ZN12RaspberryLib7SetGPIOEjj+0x5c>
    81f8:	e240000a 	sub	r0, r0, #10
    81fc:	e350000a 	cmp	r0, #10
    8200:	e3a0c002 	mov	ip, #2
    8204:	9a000003 	bls	8218 <_ZN12RaspberryLib7SetGPIOEjj+0x6c>
    8208:	e2400014 	sub	r0, r0, #20
    820c:	e350000a 	cmp	r0, #10
    8210:	e28cc002 	add	ip, ip, #2
    8214:	8afffffb 	bhi	8208 <_ZN12RaspberryLib7SetGPIOEjj+0x5c>
    8218:	e1a0110c 	lsl	r1, ip, #2
    821c:	e3a02001 	mov	r2, #1
    8220:	e1a0c20c 	lsl	ip, ip, #4
    8224:	e1a0cc12 	lsl	ip, r2, ip
    8228:	e2811202 	add	r1, r1, #536870912	; 0x20000000
    822c:	e2811602 	add	r1, r1, #2097152	; 0x200000
    8230:	e0800080 	add	r0, r0, r0, lsl #1
    8234:	e3a02001 	mov	r2, #1
    8238:	e1a00012 	lsl	r0, r2, r0
    823c:	e5810000 	str	r0, [r1]
    8240:	e583c000 	str	ip, [r3]
    8244:	e12fff1e 	bx	lr
    8248:	2020001c 	eorcs	r0, r0, ip, lsl r0
    824c:	20200028 	eorcs	r0, r0, r8, lsr #32
    8250:	20200000 	eorcs	r0, r0, r0
    8254:	cccccccd 	stclgt	12, cr12, [ip], {205}	; 0xcd

00008258 <_ZN12RaspberryLib12CheckCounterEv>:
    8258:	e59f3004 	ldr	r3, [pc, #4]	; 8264 <_ZN12RaspberryLib12CheckCounterEv+0xc>
    825c:	e5930004 	ldr	r0, [r3, #4]
    8260:	e12fff1e 	bx	lr
    8264:	20003000 	andcs	r3, r0, r0

00008268 <_ZN12RaspberryLib9WaitQuickEj>:
    8268:	e59f3014 	ldr	r3, [pc, #20]	; 8284 <_ZN12RaspberryLib9WaitQuickEj+0x1c>
    826c:	e5932004 	ldr	r2, [r3, #4]
    8270:	e0802002 	add	r2, r0, r2
    8274:	e5931004 	ldr	r1, [r3, #4]
    8278:	e1520001 	cmp	r2, r1
    827c:	8afffffc 	bhi	8274 <_ZN12RaspberryLib9WaitQuickEj+0xc>
    8280:	e12fff1e 	bx	lr
    8284:	20003000 	andcs	r3, r0, r0

00008288 <_ZN12RaspberryLib4WaitEj>:
    8288:	e59f301c 	ldr	r3, [pc, #28]	; 82ac <_ZN12RaspberryLib4WaitEj+0x24>
    828c:	e0801100 	add	r1, r0, r0, lsl #2
    8290:	e5932004 	ldr	r2, [r3, #4]
    8294:	e0810101 	add	r0, r1, r1, lsl #2
    8298:	e0821280 	add	r1, r2, r0, lsl #5
    829c:	e593c004 	ldr	ip, [r3, #4]
    82a0:	e151000c 	cmp	r1, ip
    82a4:	8afffffc 	bhi	829c <_ZN12RaspberryLib4WaitEj+0x14>
    82a8:	e12fff1e 	bx	lr
    82ac:	20003000 	andcs	r3, r0, r0

000082b0 <_ZN12RaspberryLib5BlinkEjj>:
    82b0:	e92d40f8 	push	{r3, r4, r5, r6, r7, lr}
    82b4:	e2505000 	subs	r5, r0, #0
    82b8:	0a000016 	beq	8318 <_ZN12RaspberryLib5BlinkEjj+0x68>
    82bc:	e0810101 	add	r0, r1, r1, lsl #2
    82c0:	e59f4058 	ldr	r4, [pc, #88]	; 8320 <_ZN12RaspberryLib5BlinkEjj+0x70>
    82c4:	e0801100 	add	r1, r0, r0, lsl #2
    82c8:	e1a06281 	lsl	r6, r1, #5
    82cc:	e1a07004 	mov	r7, r4
    82d0:	e3a00010 	mov	r0, #16
    82d4:	e3a01001 	mov	r1, #1
    82d8:	ebffffb3 	bl	81ac <_ZN12RaspberryLib7SetGPIOEjj>
    82dc:	e5942004 	ldr	r2, [r4, #4]
    82e0:	e0862002 	add	r2, r6, r2
    82e4:	e5943004 	ldr	r3, [r4, #4]
    82e8:	e1520003 	cmp	r2, r3
    82ec:	8afffffc 	bhi	82e4 <_ZN12RaspberryLib5BlinkEjj+0x34>
    82f0:	e3a00010 	mov	r0, #16
    82f4:	e3a01000 	mov	r1, #0
    82f8:	ebffffab 	bl	81ac <_ZN12RaspberryLib7SetGPIOEjj>
    82fc:	e597c004 	ldr	ip, [r7, #4]
    8300:	e086200c 	add	r2, r6, ip
    8304:	e594e004 	ldr	lr, [r4, #4]
    8308:	e152000e 	cmp	r2, lr
    830c:	8afffffc 	bhi	8304 <_ZN12RaspberryLib5BlinkEjj+0x54>
    8310:	e2555001 	subs	r5, r5, #1
    8314:	1affffed 	bne	82d0 <_ZN12RaspberryLib5BlinkEjj+0x20>
    8318:	e8bd40f8 	pop	{r3, r4, r5, r6, r7, lr}
    831c:	e12fff1e 	bx	lr
    8320:	20003000 	andcs	r3, r0, r0

00008324 <_ZN12RaspberryLib7PiFaultEPKc>:
    8324:	e3a00004 	mov	r0, #4
    8328:	e3a010c8 	mov	r1, #200	; 0xc8
    832c:	eaffffdf 	b	82b0 <_ZN12RaspberryLib5BlinkEjj>

00008330 <_ZN12RaspberryLib12MailboxWriteEcj>:
    8330:	e59f303c 	ldr	r3, [pc, #60]	; 8374 <_ZN12RaspberryLib12MailboxWriteEcj+0x44>
    8334:	e5932898 	ldr	r2, [r3, #2200]	; 0x898
    8338:	e3520000 	cmp	r2, #0
    833c:	bafffffc 	blt	8334 <_ZN12RaspberryLib12MailboxWriteEcj+0x4>
    8340:	ee07cf15 	mcr	15, 0, ip, cr7, cr5, {0}
    8344:	ee07cfd5 	mcr	15, 0, ip, cr7, cr5, {6}
    8348:	ee07cf9a 	mcr	15, 0, ip, cr7, cr10, {4}
    834c:	ee07cf95 	mcr	15, 0, ip, cr7, cr5, {4}
    8350:	e59f301c 	ldr	r3, [pc, #28]	; 8374 <_ZN12RaspberryLib12MailboxWriteEcj+0x44>
    8354:	e3c1100f 	bic	r1, r1, #15
    8358:	e1810000 	orr	r0, r1, r0
    835c:	e58308a0 	str	r0, [r3, #2208]	; 0x8a0
    8360:	ee07cf15 	mcr	15, 0, ip, cr7, cr5, {0}
    8364:	ee07cfd5 	mcr	15, 0, ip, cr7, cr5, {6}
    8368:	ee07cf9a 	mcr	15, 0, ip, cr7, cr10, {4}
    836c:	ee07cf95 	mcr	15, 0, ip, cr7, cr5, {4}
    8370:	e12fff1e 	bx	lr
    8374:	2000b000 	andcs	fp, r0, r0

00008378 <_ZN12RaspberryLib12MailboxCheckEc>:
    8378:	e92d4010 	push	{r4, lr}
    837c:	e59f2068 	ldr	r2, [pc, #104]	; 83ec <_ZN12RaspberryLib12MailboxCheckEc+0x74>
    8380:	e59f4068 	ldr	r4, [pc, #104]	; 83f0 <_ZN12RaspberryLib12MailboxCheckEc+0x78>
    8384:	e3a01000 	mov	r1, #0
    8388:	e5923898 	ldr	r3, [r2, #2200]	; 0x898
    838c:	e3130101 	tst	r3, #1073741824	; 0x40000000
    8390:	1a00000e 	bne	83d0 <_ZN12RaspberryLib12MailboxCheckEc+0x58>
    8394:	ee07cf15 	mcr	15, 0, ip, cr7, cr5, {0}
    8398:	ee07cfd5 	mcr	15, 0, ip, cr7, cr5, {6}
    839c:	ee07cf9a 	mcr	15, 0, ip, cr7, cr10, {4}
    83a0:	ee07cf95 	mcr	15, 0, ip, cr7, cr5, {4}
    83a4:	e5923880 	ldr	r3, [r2, #2176]	; 0x880
    83a8:	ee07cf15 	mcr	15, 0, ip, cr7, cr5, {0}
    83ac:	ee07cfd5 	mcr	15, 0, ip, cr7, cr5, {6}
    83b0:	ee07cf9a 	mcr	15, 0, ip, cr7, cr10, {4}
    83b4:	ee07cf95 	mcr	15, 0, ip, cr7, cr5, {4}
    83b8:	e203c00f 	and	ip, r3, #15
    83bc:	e15c0000 	cmp	ip, r0
    83c0:	1afffff0 	bne	8388 <_ZN12RaspberryLib12MailboxCheckEc+0x10>
    83c4:	e3c3000f 	bic	r0, r3, #15
    83c8:	e8bd4010 	pop	{r4, lr}
    83cc:	e12fff1e 	bx	lr
    83d0:	e1510004 	cmp	r1, r4
    83d4:	92811001 	addls	r1, r1, #1
    83d8:	9affffea 	bls	8388 <_ZN12RaspberryLib12MailboxCheckEc+0x10>
    83dc:	e59f0010 	ldr	r0, [pc, #16]	; 83f4 <_ZN12RaspberryLib12MailboxCheckEc+0x7c>
    83e0:	ebffffcf 	bl	8324 <_ZN12RaspberryLib7PiFaultEPKc>
    83e4:	e3e00000 	mvn	r0, #0
    83e8:	eafffff6 	b	83c8 <_ZN12RaspberryLib12MailboxCheckEc+0x50>
    83ec:	2000b000 	andcs	fp, r0, r0
    83f0:	000fffff 	strdeq	pc, [pc], -pc	; <UNPREDICTABLE>
    83f4:	0000991c 	andeq	r9, r0, ip, lsl r9

000083f8 <_ZN12RaspberryLib18AcquireFrameBufferEjj>:
    83f8:	e3a03a02 	mov	r3, #8192	; 0x2000
    83fc:	e1a0c001 	mov	ip, r1
    8400:	e92d4010 	push	{r4, lr}
    8404:	e3a02000 	mov	r2, #0
    8408:	e1a0e000 	mov	lr, r0
    840c:	e583c004 	str	ip, [r3, #4]
    8410:	e583c00c 	str	ip, [r3, #12]
    8414:	e3a0c018 	mov	ip, #24
    8418:	e3a00001 	mov	r0, #1
    841c:	e59f10e4 	ldr	r1, [pc, #228]	; 8508 <_ZN12RaspberryLib18AcquireFrameBufferEjj+0x110>
    8420:	e583e000 	str	lr, [r3]
    8424:	e583e008 	str	lr, [r3, #8]
    8428:	e5832010 	str	r2, [r3, #16]
    842c:	e583c014 	str	ip, [r3, #20]
    8430:	e5832018 	str	r2, [r3, #24]
    8434:	e583201c 	str	r2, [r3, #28]
    8438:	e5832020 	str	r2, [r3, #32]
    843c:	e5832024 	str	r2, [r3, #36]	; 0x24
    8440:	e5c32028 	strb	r2, [r3, #40]	; 0x28
    8444:	ebffffb9 	bl	8330 <_ZN12RaspberryLib12MailboxWriteEcj>
    8448:	e3a00001 	mov	r0, #1
    844c:	ebffffc9 	bl	8378 <_ZN12RaspberryLib12MailboxCheckEc>
    8450:	e3500000 	cmp	r0, #0
    8454:	1a00000d 	bne	8490 <_ZN12RaspberryLib18AcquireFrameBufferEjj+0x98>
    8458:	e3a02a02 	mov	r2, #8192	; 0x2000
    845c:	e5923020 	ldr	r3, [r2, #32]
    8460:	e3530000 	cmp	r3, #0
    8464:	0a000024 	beq	84fc <_ZN12RaspberryLib18AcquireFrameBufferEjj+0x104>
    8468:	e5921010 	ldr	r1, [r2, #16]
    846c:	e3510000 	cmp	r1, #0
    8470:	0a00001e 	beq	84f0 <_ZN12RaspberryLib18AcquireFrameBufferEjj+0xf8>
    8474:	e3530101 	cmp	r3, #1073741824	; 0x40000000
    8478:	e3a0c001 	mov	ip, #1
    847c:	82833103 	addhi	r3, r3, #-1073741824	; 0xc0000000
    8480:	e3a00a02 	mov	r0, #8192	; 0x2000
    8484:	e5c2c028 	strb	ip, [r2, #40]	; 0x28
    8488:	e5803020 	str	r3, [r0, #32]
    848c:	ea000014 	b	84e4 <_ZN12RaspberryLib18AcquireFrameBufferEjj+0xec>
    8490:	e3a00001 	mov	r0, #1
    8494:	ebffffb7 	bl	8378 <_ZN12RaspberryLib12MailboxCheckEc>
    8498:	e3500000 	cmp	r0, #0
    849c:	e59f4068 	ldr	r4, [pc, #104]	; 850c <_ZN12RaspberryLib18AcquireFrameBufferEjj+0x114>
    84a0:	e3a00001 	mov	r0, #1
    84a4:	0a00000a 	beq	84d4 <_ZN12RaspberryLib18AcquireFrameBufferEjj+0xdc>
    84a8:	ebffffb2 	bl	8378 <_ZN12RaspberryLib12MailboxCheckEc>
    84ac:	e3500000 	cmp	r0, #0
    84b0:	e2444001 	sub	r4, r4, #1
    84b4:	0a000006 	beq	84d4 <_ZN12RaspberryLib18AcquireFrameBufferEjj+0xdc>
    84b8:	e2544001 	subs	r4, r4, #1
    84bc:	3affffe5 	bcc	8458 <_ZN12RaspberryLib18AcquireFrameBufferEjj+0x60>
    84c0:	e3a00001 	mov	r0, #1
    84c4:	ebffffab 	bl	8378 <_ZN12RaspberryLib12MailboxCheckEc>
    84c8:	e3500000 	cmp	r0, #0
    84cc:	e3a00001 	mov	r0, #1
    84d0:	1afffff4 	bne	84a8 <_ZN12RaspberryLib18AcquireFrameBufferEjj+0xb0>
    84d4:	e3540000 	cmp	r4, #0
    84d8:	1affffde 	bne	8458 <_ZN12RaspberryLib18AcquireFrameBufferEjj+0x60>
    84dc:	e59f002c 	ldr	r0, [pc, #44]	; 8510 <_ZN12RaspberryLib18AcquireFrameBufferEjj+0x118>
    84e0:	ebffff8f 	bl	8324 <_ZN12RaspberryLib7PiFaultEPKc>
    84e4:	e3a00a02 	mov	r0, #8192	; 0x2000
    84e8:	e8bd4010 	pop	{r4, lr}
    84ec:	e12fff1e 	bx	lr
    84f0:	e59f001c 	ldr	r0, [pc, #28]	; 8514 <_ZN12RaspberryLib18AcquireFrameBufferEjj+0x11c>
    84f4:	ebffff8a 	bl	8324 <_ZN12RaspberryLib7PiFaultEPKc>
    84f8:	eafffff9 	b	84e4 <_ZN12RaspberryLib18AcquireFrameBufferEjj+0xec>
    84fc:	e59f0014 	ldr	r0, [pc, #20]	; 8518 <_ZN12RaspberryLib18AcquireFrameBufferEjj+0x120>
    8500:	ebffff87 	bl	8324 <_ZN12RaspberryLib7PiFaultEPKc>
    8504:	eafffff6 	b	84e4 <_ZN12RaspberryLib18AcquireFrameBufferEjj+0xec>
    8508:	40002000 	andmi	r2, r0, r0
    850c:	0000270f 	andeq	r2, r0, pc, lsl #14
    8510:	00009948 	andeq	r9, r0, r8, asr #18
    8514:	000099e0 	andeq	r9, r0, r0, ror #19
    8518:	00009990 	muleq	r0, r0, r9

0000851c <_ZN4FontC1Ev>:
    851c:	e59fc00c 	ldr	ip, [pc, #12]	; 8530 <_ZN4FontC1Ev+0x14>
    8520:	e3a01008 	mov	r1, #8
    8524:	e3a02010 	mov	r2, #16
    8528:	e9801006 	stmib	r0, {r1, r2, ip}
    852c:	e12fff1e 	bx	lr
    8530:	000090fc 	strdeq	r9, [r0], -ip

00008534 <_ZN4Font8GetBytesEc>:
    8534:	e1a03201 	lsl	r3, r1, #4
    8538:	e2832010 	add	r2, r3, #16
    853c:	e1530002 	cmp	r3, r2
    8540:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
    8544:	2a00004d 	bcs	8680 <_ZN4Font8GetBytesEc+0x14c>
    8548:	e590c00c 	ldr	ip, [r0, #12]
    854c:	e59f2138 	ldr	r2, [pc, #312]	; 868c <_ZN4Font8GetBytesEc+0x158>
    8550:	e7dc1201 	ldrb	r1, [ip, r1, lsl #4]
    8554:	e5c21000 	strb	r1, [r2]
    8558:	e590c00c 	ldr	ip, [r0, #12]
    855c:	e2834001 	add	r4, r3, #1
    8560:	e7dc1004 	ldrb	r1, [ip, r4]
    8564:	e5c21001 	strb	r1, [r2, #1]
    8568:	e590400c 	ldr	r4, [r0, #12]
    856c:	e2831002 	add	r1, r3, #2
    8570:	e7d44001 	ldrb	r4, [r4, r1]
    8574:	e063c001 	rsb	ip, r3, r1
    8578:	e7c2400c 	strb	r4, [r2, ip]
    857c:	e590400c 	ldr	r4, [r0, #12]
    8580:	e2811001 	add	r1, r1, #1
    8584:	e7d44001 	ldrb	r4, [r4, r1]
    8588:	e063c001 	rsb	ip, r3, r1
    858c:	e7c2400c 	strb	r4, [r2, ip]
    8590:	e590400c 	ldr	r4, [r0, #12]
    8594:	e2811001 	add	r1, r1, #1
    8598:	e7d44001 	ldrb	r4, [r4, r1]
    859c:	e063c001 	rsb	ip, r3, r1
    85a0:	e7c2400c 	strb	r4, [r2, ip]
    85a4:	e590400c 	ldr	r4, [r0, #12]
    85a8:	e2811001 	add	r1, r1, #1
    85ac:	e7d44001 	ldrb	r4, [r4, r1]
    85b0:	e063c001 	rsb	ip, r3, r1
    85b4:	e7c2400c 	strb	r4, [r2, ip]
    85b8:	e590400c 	ldr	r4, [r0, #12]
    85bc:	e2811001 	add	r1, r1, #1
    85c0:	e7d44001 	ldrb	r4, [r4, r1]
    85c4:	e063c001 	rsb	ip, r3, r1
    85c8:	e7c2400c 	strb	r4, [r2, ip]
    85cc:	e590400c 	ldr	r4, [r0, #12]
    85d0:	e2811001 	add	r1, r1, #1
    85d4:	e7d44001 	ldrb	r4, [r4, r1]
    85d8:	e063c001 	rsb	ip, r3, r1
    85dc:	e7c2400c 	strb	r4, [r2, ip]
    85e0:	e590400c 	ldr	r4, [r0, #12]
    85e4:	e2811001 	add	r1, r1, #1
    85e8:	e7d44001 	ldrb	r4, [r4, r1]
    85ec:	e063c001 	rsb	ip, r3, r1
    85f0:	e7c2400c 	strb	r4, [r2, ip]
    85f4:	e590400c 	ldr	r4, [r0, #12]
    85f8:	e2811001 	add	r1, r1, #1
    85fc:	e7d44001 	ldrb	r4, [r4, r1]
    8600:	e063c001 	rsb	ip, r3, r1
    8604:	e7c2400c 	strb	r4, [r2, ip]
    8608:	e590400c 	ldr	r4, [r0, #12]
    860c:	e2811001 	add	r1, r1, #1
    8610:	e7d44001 	ldrb	r4, [r4, r1]
    8614:	e063c001 	rsb	ip, r3, r1
    8618:	e7c2400c 	strb	r4, [r2, ip]
    861c:	e590400c 	ldr	r4, [r0, #12]
    8620:	e2811001 	add	r1, r1, #1
    8624:	e7d44001 	ldrb	r4, [r4, r1]
    8628:	e063c001 	rsb	ip, r3, r1
    862c:	e7c2400c 	strb	r4, [r2, ip]
    8630:	e590400c 	ldr	r4, [r0, #12]
    8634:	e2811001 	add	r1, r1, #1
    8638:	e7d44001 	ldrb	r4, [r4, r1]
    863c:	e063c001 	rsb	ip, r3, r1
    8640:	e7c2400c 	strb	r4, [r2, ip]
    8644:	e590400c 	ldr	r4, [r0, #12]
    8648:	e2811001 	add	r1, r1, #1
    864c:	e7d44001 	ldrb	r4, [r4, r1]
    8650:	e063c001 	rsb	ip, r3, r1
    8654:	e7c2400c 	strb	r4, [r2, ip]
    8658:	e590400c 	ldr	r4, [r0, #12]
    865c:	e2811001 	add	r1, r1, #1
    8660:	e7d44001 	ldrb	r4, [r4, r1]
    8664:	e063c001 	rsb	ip, r3, r1
    8668:	e7c2400c 	strb	r4, [r2, ip]
    866c:	e590000c 	ldr	r0, [r0, #12]
    8670:	e281c001 	add	ip, r1, #1
    8674:	e7d0000c 	ldrb	r0, [r0, ip]
    8678:	e063100c 	rsb	r1, r3, ip
    867c:	e7c20001 	strb	r0, [r2, r1]
    8680:	e59f0004 	ldr	r0, [pc, #4]	; 868c <_ZN4Font8GetBytesEc+0x158>
    8684:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
    8688:	e12fff1e 	bx	lr
    868c:	000090e4 	andeq	r9, r0, r4, ror #1

00008690 <_ZN5ColorC1Ev>:
    8690:	e3e02000 	mvn	r2, #0
    8694:	e5c02000 	strb	r2, [r0]
    8698:	e5c02001 	strb	r2, [r0, #1]
    869c:	e5c02002 	strb	r2, [r0, #2]
    86a0:	e12fff1e 	bx	lr

000086a4 <_ZN5Color7ToColorEj>:
    86a4:	e20028ff 	and	r2, r0, #16711680	; 0xff0000
    86a8:	e2001cff 	and	r1, r0, #65280	; 0xff00
    86ac:	e1813822 	orr	r3, r1, r2, lsr #16
    86b0:	e20000ff 	and	r0, r0, #255	; 0xff
    86b4:	e24dd008 	sub	sp, sp, #8
    86b8:	e1830800 	orr	r0, r3, r0, lsl #16
    86bc:	e28dd008 	add	sp, sp, #8
    86c0:	e12fff1e 	bx	lr

000086c4 <_ZN5Color9FromColorEccc>:
    86c4:	e1822401 	orr	r2, r2, r1, lsl #8
    86c8:	e1820800 	orr	r0, r2, r0, lsl #16
    86cc:	e12fff1e 	bx	lr

000086d0 <_ZN6CanvasC1EPN12RaspberryLib3GPUE>:
    86d0:	e5801000 	str	r1, [r0]
    86d4:	e12fff1e 	bx	lr

000086d8 <_ZN6Canvas8SetPixelEjj5Color>:
    86d8:	e24dd008 	sub	sp, sp, #8
    86dc:	e58d3004 	str	r3, [sp, #4]
    86e0:	e5903000 	ldr	r3, [r0]
    86e4:	e5d3c028 	ldrb	ip, [r3, #40]	; 0x28
    86e8:	e35c0000 	cmp	ip, #0
    86ec:	0a00000f 	beq	8730 <_ZN6Canvas8SetPixelEjj5Color+0x58>
    86f0:	e593c010 	ldr	ip, [r3, #16]
    86f4:	e0811081 	add	r1, r1, r1, lsl #1
    86f8:	e022129c 	mla	r2, ip, r2, r1
    86fc:	e5933020 	ldr	r3, [r3, #32]
    8700:	e5ddc004 	ldrb	ip, [sp, #4]
    8704:	e7c2c003 	strb	ip, [r2, r3]
    8708:	e5901000 	ldr	r1, [r0]
    870c:	e591c020 	ldr	ip, [r1, #32]
    8710:	e5dd1005 	ldrb	r1, [sp, #5]
    8714:	e28c3001 	add	r3, ip, #1
    8718:	e7c31002 	strb	r1, [r3, r2]
    871c:	e590c000 	ldr	ip, [r0]
    8720:	e59c0020 	ldr	r0, [ip, #32]
    8724:	e5dd1006 	ldrb	r1, [sp, #6]
    8728:	e2803002 	add	r3, r0, #2
    872c:	e7c31002 	strb	r1, [r3, r2]
    8730:	e28dd008 	add	sp, sp, #8
    8734:	e12fff1e 	bx	lr

00008738 <_ZN6Canvas8GetPixelEjj>:
    8738:	e5903000 	ldr	r3, [r0]
    873c:	e5d30028 	ldrb	r0, [r3, #40]	; 0x28
    8740:	e3500000 	cmp	r0, #0
    8744:	e24dd008 	sub	sp, sp, #8
    8748:	0a000011 	beq	8794 <_ZN6Canvas8GetPixelEjj+0x5c>
    874c:	e5930010 	ldr	r0, [r3, #16]
    8750:	e0020290 	mul	r2, r0, r2
    8754:	e5933020 	ldr	r3, [r3, #32]
    8758:	e081c081 	add	ip, r1, r1, lsl #1
    875c:	e08c0003 	add	r0, ip, r3
    8760:	e790c002 	ldr	ip, [r0, r2]
    8764:	e1a0182c 	lsr	r1, ip, #16
    8768:	e1a0242c 	lsr	r2, ip, #8
    876c:	e5cd1004 	strb	r1, [sp, #4]
    8770:	e5cd2005 	strb	r2, [sp, #5]
    8774:	e5cdc006 	strb	ip, [sp, #6]
    8778:	e5ddc004 	ldrb	ip, [sp, #4]
    877c:	e5dd3005 	ldrb	r3, [sp, #5]
    8780:	e5dd1006 	ldrb	r1, [sp, #6]
    8784:	e18c2403 	orr	r2, ip, r3, lsl #8
    8788:	e1820801 	orr	r0, r2, r1, lsl #16
    878c:	e28dd008 	add	sp, sp, #8
    8790:	e12fff1e 	bx	lr
    8794:	e3e03000 	mvn	r3, #0
    8798:	e5cd3004 	strb	r3, [sp, #4]
    879c:	e5cd3005 	strb	r3, [sp, #5]
    87a0:	e5cd3006 	strb	r3, [sp, #6]
    87a4:	eafffff3 	b	8778 <_ZN6Canvas8GetPixelEjj+0x40>

000087a8 <_ZN6Canvas5ClearE5Color>:
    87a8:	e92d4070 	push	{r4, r5, r6, lr}
    87ac:	e24dd008 	sub	sp, sp, #8
    87b0:	e58d1004 	str	r1, [sp, #4]
    87b4:	e5903000 	ldr	r3, [r0]
    87b8:	e5932004 	ldr	r2, [r3, #4]
    87bc:	e3520000 	cmp	r2, #0
    87c0:	e1a05000 	mov	r5, r0
    87c4:	13a06000 	movne	r6, #0
    87c8:	0a000011 	beq	8814 <_ZN6Canvas5ClearE5Color+0x6c>
    87cc:	e593c000 	ldr	ip, [r3]
    87d0:	e35c0000 	cmp	ip, #0
    87d4:	13a04000 	movne	r4, #0
    87d8:	0a000009 	beq	8804 <_ZN6Canvas5ClearE5Color+0x5c>
    87dc:	e1a01004 	mov	r1, r4
    87e0:	e1a00005 	mov	r0, r5
    87e4:	e59d3004 	ldr	r3, [sp, #4]
    87e8:	e1a02006 	mov	r2, r6
    87ec:	ebffffb9 	bl	86d8 <_ZN6Canvas8SetPixelEjj5Color>
    87f0:	e5953000 	ldr	r3, [r5]
    87f4:	e5930000 	ldr	r0, [r3]
    87f8:	e2844001 	add	r4, r4, #1
    87fc:	e1500004 	cmp	r0, r4
    8800:	8afffff5 	bhi	87dc <_ZN6Canvas5ClearE5Color+0x34>
    8804:	e5931004 	ldr	r1, [r3, #4]
    8808:	e2866001 	add	r6, r6, #1
    880c:	e1510006 	cmp	r1, r6
    8810:	8affffed 	bhi	87cc <_ZN6Canvas5ClearE5Color+0x24>
    8814:	e28dd008 	add	sp, sp, #8
    8818:	e8bd4070 	pop	{r4, r5, r6, lr}
    881c:	e12fff1e 	bx	lr

00008820 <_ZN6Canvas5ClearEv>:
    8820:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    8824:	e3e03000 	mvn	r3, #0
    8828:	e24dd00c 	sub	sp, sp, #12
    882c:	e5cd3004 	strb	r3, [sp, #4]
    8830:	e5cd3005 	strb	r3, [sp, #5]
    8834:	e5cd3006 	strb	r3, [sp, #6]
    8838:	e59d1004 	ldr	r1, [sp, #4]
    883c:	ebffffd9 	bl	87a8 <_ZN6Canvas5ClearE5Color>
    8840:	e28dd00c 	add	sp, sp, #12
    8844:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
    8848:	e12fff1e 	bx	lr

0000884c <_ZN6Canvas13DrawCharacterEcP4Fontjjj>:
    884c:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
    8850:	e24dd014 	sub	sp, sp, #20
    8854:	e59d403c 	ldr	r4, [sp, #60]	; 0x3c
    8858:	e1a0c201 	lsl	ip, r1, #4
    885c:	e28c5010 	add	r5, ip, #16
    8860:	e1a06824 	lsr	r6, r4, #16
    8864:	e1a0a424 	lsr	sl, r4, #8
    8868:	e15c0005 	cmp	ip, r5
    886c:	e1a07000 	mov	r7, r0
    8870:	e1a08003 	mov	r8, r3
    8874:	e59d5038 	ldr	r5, [sp, #56]	; 0x38
    8878:	e5cd600c 	strb	r6, [sp, #12]
    887c:	e5cda00d 	strb	sl, [sp, #13]
    8880:	e5cd400e 	strb	r4, [sp, #14]
    8884:	2a00004d 	bcs	89c0 <_ZN6Canvas13DrawCharacterEcP4Fontjjj+0x174>
    8888:	e592000c 	ldr	r0, [r2, #12]
    888c:	e59f3288 	ldr	r3, [pc, #648]	; 8b1c <_ZN6Canvas13DrawCharacterEcP4Fontjjj+0x2d0>
    8890:	e7d06201 	ldrb	r6, [r0, r1, lsl #4]
    8894:	e5c36000 	strb	r6, [r3]
    8898:	e592b00c 	ldr	fp, [r2, #12]
    889c:	e28ca001 	add	sl, ip, #1
    88a0:	e7db900a 	ldrb	r9, [fp, sl]
    88a4:	e5c39001 	strb	r9, [r3, #1]
    88a8:	e592100c 	ldr	r1, [r2, #12]
    88ac:	e28c6002 	add	r6, ip, #2
    88b0:	e7d14006 	ldrb	r4, [r1, r6]
    88b4:	e06c0006 	rsb	r0, ip, r6
    88b8:	e7c34000 	strb	r4, [r3, r0]
    88bc:	e592a00c 	ldr	sl, [r2, #12]
    88c0:	e2861001 	add	r1, r6, #1
    88c4:	e7dab001 	ldrb	fp, [sl, r1]
    88c8:	e06c9001 	rsb	r9, ip, r1
    88cc:	e7c3b009 	strb	fp, [r3, r9]
    88d0:	e592600c 	ldr	r6, [r2, #12]
    88d4:	e281a001 	add	sl, r1, #1
    88d8:	e7d6400a 	ldrb	r4, [r6, sl]
    88dc:	e06c000a 	rsb	r0, ip, sl
    88e0:	e7c34000 	strb	r4, [r3, r0]
    88e4:	e592b00c 	ldr	fp, [r2, #12]
    88e8:	e28a1001 	add	r1, sl, #1
    88ec:	e7db9001 	ldrb	r9, [fp, r1]
    88f0:	e06c6001 	rsb	r6, ip, r1
    88f4:	e7c39006 	strb	r9, [r3, r6]
    88f8:	e592a00c 	ldr	sl, [r2, #12]
    88fc:	e281b001 	add	fp, r1, #1
    8900:	e7da400b 	ldrb	r4, [sl, fp]
    8904:	e06c000b 	rsb	r0, ip, fp
    8908:	e7c34000 	strb	r4, [r3, r0]
    890c:	e592900c 	ldr	r9, [r2, #12]
    8910:	e28b1001 	add	r1, fp, #1
    8914:	e7d96001 	ldrb	r6, [r9, r1]
    8918:	e06ca001 	rsb	sl, ip, r1
    891c:	e7c3600a 	strb	r6, [r3, sl]
    8920:	e592b00c 	ldr	fp, [r2, #12]
    8924:	e2819001 	add	r9, r1, #1
    8928:	e7db4009 	ldrb	r4, [fp, r9]
    892c:	e06c0009 	rsb	r0, ip, r9
    8930:	e7c34000 	strb	r4, [r3, r0]
    8934:	e592600c 	ldr	r6, [r2, #12]
    8938:	e2891001 	add	r1, r9, #1
    893c:	e7d6a001 	ldrb	sl, [r6, r1]
    8940:	e06cb001 	rsb	fp, ip, r1
    8944:	e7c3a00b 	strb	sl, [r3, fp]
    8948:	e592900c 	ldr	r9, [r2, #12]
    894c:	e2816001 	add	r6, r1, #1
    8950:	e7d94006 	ldrb	r4, [r9, r6]
    8954:	e06c0006 	rsb	r0, ip, r6
    8958:	e7c34000 	strb	r4, [r3, r0]
    895c:	e592a00c 	ldr	sl, [r2, #12]
    8960:	e2861001 	add	r1, r6, #1
    8964:	e7dab001 	ldrb	fp, [sl, r1]
    8968:	e06c9001 	rsb	r9, ip, r1
    896c:	e7c3b009 	strb	fp, [r3, r9]
    8970:	e592000c 	ldr	r0, [r2, #12]
    8974:	e281a001 	add	sl, r1, #1
    8978:	e7d0400a 	ldrb	r4, [r0, sl]
    897c:	e06c600a 	rsb	r6, ip, sl
    8980:	e7c34006 	strb	r4, [r3, r6]
    8984:	e592b00c 	ldr	fp, [r2, #12]
    8988:	e28a1001 	add	r1, sl, #1
    898c:	e7db9001 	ldrb	r9, [fp, r1]
    8990:	e06c0001 	rsb	r0, ip, r1
    8994:	e7c39000 	strb	r9, [r3, r0]
    8998:	e592600c 	ldr	r6, [r2, #12]
    899c:	e281b001 	add	fp, r1, #1
    89a0:	e7d6400b 	ldrb	r4, [r6, fp]
    89a4:	e06ca00b 	rsb	sl, ip, fp
    89a8:	e7c3400a 	strb	r4, [r3, sl]
    89ac:	e592900c 	ldr	r9, [r2, #12]
    89b0:	e28b0001 	add	r0, fp, #1
    89b4:	e7d92000 	ldrb	r2, [r9, r0]
    89b8:	e06c1000 	rsb	r1, ip, r0
    89bc:	e7c32001 	strb	r2, [r3, r1]
    89c0:	e59f6158 	ldr	r6, [pc, #344]	; 8b20 <_ZN6Canvas13DrawCharacterEcP4Fontjjj+0x2d4>
    89c4:	e288c003 	add	ip, r8, #3
    89c8:	e2889001 	add	r9, r8, #1
    89cc:	e286a010 	add	sl, r6, #16
    89d0:	e288b002 	add	fp, r8, #2
    89d4:	e58dc004 	str	ip, [sp, #4]
    89d8:	ea000010 	b	8a20 <_ZN6Canvas13DrawCharacterEcP4Fontjjj+0x1d4>
    89dc:	e3140002 	tst	r4, #2
    89e0:	1a000018 	bne	8a48 <_ZN6Canvas13DrawCharacterEcP4Fontjjj+0x1fc>
    89e4:	e3140004 	tst	r4, #4
    89e8:	1a00001d 	bne	8a64 <_ZN6Canvas13DrawCharacterEcP4Fontjjj+0x218>
    89ec:	e3140008 	tst	r4, #8
    89f0:	1a000022 	bne	8a80 <_ZN6Canvas13DrawCharacterEcP4Fontjjj+0x234>
    89f4:	e3140010 	tst	r4, #16
    89f8:	1a000027 	bne	8a9c <_ZN6Canvas13DrawCharacterEcP4Fontjjj+0x250>
    89fc:	e3140020 	tst	r4, #32
    8a00:	1a00002c 	bne	8ab8 <_ZN6Canvas13DrawCharacterEcP4Fontjjj+0x26c>
    8a04:	e3140040 	tst	r4, #64	; 0x40
    8a08:	1a000031 	bne	8ad4 <_ZN6Canvas13DrawCharacterEcP4Fontjjj+0x288>
    8a0c:	e1b043a4 	lsrs	r4, r4, #7
    8a10:	1a000036 	bne	8af0 <_ZN6Canvas13DrawCharacterEcP4Fontjjj+0x2a4>
    8a14:	e156000a 	cmp	r6, sl
    8a18:	e2855001 	add	r5, r5, #1
    8a1c:	0a00003b 	beq	8b10 <_ZN6Canvas13DrawCharacterEcP4Fontjjj+0x2c4>
    8a20:	e5f64001 	ldrb	r4, [r6, #1]!
    8a24:	e3140001 	tst	r4, #1
    8a28:	0affffeb 	beq	89dc <_ZN6Canvas13DrawCharacterEcP4Fontjjj+0x190>
    8a2c:	e1a00007 	mov	r0, r7
    8a30:	e1a01008 	mov	r1, r8
    8a34:	e1a02005 	mov	r2, r5
    8a38:	e59d300c 	ldr	r3, [sp, #12]
    8a3c:	ebffff25 	bl	86d8 <_ZN6Canvas8SetPixelEjj5Color>
    8a40:	e3140002 	tst	r4, #2
    8a44:	0affffe6 	beq	89e4 <_ZN6Canvas13DrawCharacterEcP4Fontjjj+0x198>
    8a48:	e1a00007 	mov	r0, r7
    8a4c:	e1a01009 	mov	r1, r9
    8a50:	e1a02005 	mov	r2, r5
    8a54:	e59d300c 	ldr	r3, [sp, #12]
    8a58:	ebffff1e 	bl	86d8 <_ZN6Canvas8SetPixelEjj5Color>
    8a5c:	e3140004 	tst	r4, #4
    8a60:	0affffe1 	beq	89ec <_ZN6Canvas13DrawCharacterEcP4Fontjjj+0x1a0>
    8a64:	e1a00007 	mov	r0, r7
    8a68:	e1a0100b 	mov	r1, fp
    8a6c:	e1a02005 	mov	r2, r5
    8a70:	e59d300c 	ldr	r3, [sp, #12]
    8a74:	ebffff17 	bl	86d8 <_ZN6Canvas8SetPixelEjj5Color>
    8a78:	e3140008 	tst	r4, #8
    8a7c:	0affffdc 	beq	89f4 <_ZN6Canvas13DrawCharacterEcP4Fontjjj+0x1a8>
    8a80:	e1a00007 	mov	r0, r7
    8a84:	e59d1004 	ldr	r1, [sp, #4]
    8a88:	e1a02005 	mov	r2, r5
    8a8c:	e59d300c 	ldr	r3, [sp, #12]
    8a90:	ebffff10 	bl	86d8 <_ZN6Canvas8SetPixelEjj5Color>
    8a94:	e3140010 	tst	r4, #16
    8a98:	0affffd7 	beq	89fc <_ZN6Canvas13DrawCharacterEcP4Fontjjj+0x1b0>
    8a9c:	e1a00007 	mov	r0, r7
    8aa0:	e2881004 	add	r1, r8, #4
    8aa4:	e1a02005 	mov	r2, r5
    8aa8:	e59d300c 	ldr	r3, [sp, #12]
    8aac:	ebffff09 	bl	86d8 <_ZN6Canvas8SetPixelEjj5Color>
    8ab0:	e3140020 	tst	r4, #32
    8ab4:	0affffd2 	beq	8a04 <_ZN6Canvas13DrawCharacterEcP4Fontjjj+0x1b8>
    8ab8:	e1a00007 	mov	r0, r7
    8abc:	e2881005 	add	r1, r8, #5
    8ac0:	e1a02005 	mov	r2, r5
    8ac4:	e59d300c 	ldr	r3, [sp, #12]
    8ac8:	ebffff02 	bl	86d8 <_ZN6Canvas8SetPixelEjj5Color>
    8acc:	e3140040 	tst	r4, #64	; 0x40
    8ad0:	0affffcd 	beq	8a0c <_ZN6Canvas13DrawCharacterEcP4Fontjjj+0x1c0>
    8ad4:	e1a00007 	mov	r0, r7
    8ad8:	e2881006 	add	r1, r8, #6
    8adc:	e1a02005 	mov	r2, r5
    8ae0:	e59d300c 	ldr	r3, [sp, #12]
    8ae4:	ebfffefb 	bl	86d8 <_ZN6Canvas8SetPixelEjj5Color>
    8ae8:	e1b043a4 	lsrs	r4, r4, #7
    8aec:	0affffc8 	beq	8a14 <_ZN6Canvas13DrawCharacterEcP4Fontjjj+0x1c8>
    8af0:	e1a02005 	mov	r2, r5
    8af4:	e1a00007 	mov	r0, r7
    8af8:	e2881007 	add	r1, r8, #7
    8afc:	e59d300c 	ldr	r3, [sp, #12]
    8b00:	ebfffef4 	bl	86d8 <_ZN6Canvas8SetPixelEjj5Color>
    8b04:	e156000a 	cmp	r6, sl
    8b08:	e2855001 	add	r5, r5, #1
    8b0c:	1affffc3 	bne	8a20 <_ZN6Canvas13DrawCharacterEcP4Fontjjj+0x1d4>
    8b10:	e28dd014 	add	sp, sp, #20
    8b14:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
    8b18:	e12fff1e 	bx	lr
    8b1c:	000090e4 	andeq	r9, r0, r4, ror #1
    8b20:	000090e3 	andeq	r9, r0, r3, ror #1

00008b24 <_ZN6Canvas10DrawStringEPKcP4Fontjjj>:
    8b24:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
    8b28:	e1a06001 	mov	r6, r1
    8b2c:	e5d11000 	ldrb	r1, [r1]
    8b30:	e24dd008 	sub	sp, sp, #8
    8b34:	e3510000 	cmp	r1, #0
    8b38:	e1a08000 	mov	r8, r0
    8b3c:	e1a05002 	mov	r5, r2
    8b40:	e1a07003 	mov	r7, r3
    8b44:	e28d9028 	add	r9, sp, #40	; 0x28
    8b48:	e8990600 	ldm	r9, {r9, sl}
    8b4c:	0a00000c 	beq	8b84 <_ZN6Canvas10DrawStringEPKcP4Fontjjj+0x60>
    8b50:	e5923004 	ldr	r3, [r2, #4]
    8b54:	e3a04000 	mov	r4, #0
    8b58:	ea000000 	b	8b60 <_ZN6Canvas10DrawStringEPKcP4Fontjjj+0x3c>
    8b5c:	e5953004 	ldr	r3, [r5, #4]
    8b60:	e0237394 	mla	r3, r4, r3, r7
    8b64:	e1a00008 	mov	r0, r8
    8b68:	e1a02005 	mov	r2, r5
    8b6c:	e88d0600 	stm	sp, {r9, sl}
    8b70:	ebffff35 	bl	884c <_ZN6Canvas13DrawCharacterEcP4Fontjjj>
    8b74:	e5f61001 	ldrb	r1, [r6, #1]!
    8b78:	e3510000 	cmp	r1, #0
    8b7c:	e2844001 	add	r4, r4, #1
    8b80:	1afffff5 	bne	8b5c <_ZN6Canvas10DrawStringEPKcP4Fontjjj+0x38>
    8b84:	e28dd008 	add	sp, sp, #8
    8b88:	e8bd47f0 	pop	{r4, r5, r6, r7, r8, r9, sl, lr}
    8b8c:	e12fff1e 	bx	lr

00008b90 <_ZN6Canvas5ClearEj>:
    8b90:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    8b94:	e1a02821 	lsr	r2, r1, #16
    8b98:	e24dd00c 	sub	sp, sp, #12
    8b9c:	e1a03421 	lsr	r3, r1, #8
    8ba0:	e5cd2004 	strb	r2, [sp, #4]
    8ba4:	e5cd3005 	strb	r3, [sp, #5]
    8ba8:	e5cd1006 	strb	r1, [sp, #6]
    8bac:	e59d1004 	ldr	r1, [sp, #4]
    8bb0:	ebfffefc 	bl	87a8 <_ZN6Canvas5ClearE5Color>
    8bb4:	e28dd00c 	add	sp, sp, #12
    8bb8:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
    8bbc:	e12fff1e 	bx	lr

00008bc0 <_ZN7Console5clearEv>:
    8bc0:	e92d4010 	push	{r4, lr}
    8bc4:	e3a01000 	mov	r1, #0
    8bc8:	e1a04000 	mov	r4, r0
    8bcc:	e590000c 	ldr	r0, [r0, #12]
    8bd0:	ebffffee 	bl	8b90 <_ZN6Canvas5ClearEj>
    8bd4:	e3a03000 	mov	r3, #0
    8bd8:	e5843000 	str	r3, [r4]
    8bdc:	e5843004 	str	r3, [r4, #4]
    8be0:	e8bd4010 	pop	{r4, lr}
    8be4:	e12fff1e 	bx	lr

00008be8 <_ZN7Console7newLineEv>:
    8be8:	e590c004 	ldr	ip, [r0, #4]
    8bec:	e28c1001 	add	r1, ip, #1
    8bf0:	e3a02000 	mov	r2, #0
    8bf4:	e351002d 	cmp	r1, #45	; 0x2d
    8bf8:	e5801004 	str	r1, [r0, #4]
    8bfc:	e5802000 	str	r2, [r0]
    8c00:	912fff1e 	bxls	lr
    8c04:	eaffffed 	b	8bc0 <_ZN7Console5clearEv>

00008c08 <_ZN7Console9printCharEcj>:
    8c08:	e92d4070 	push	{r4, r5, r6, lr}
    8c0c:	e3510009 	cmp	r1, #9
    8c10:	e24dd010 	sub	sp, sp, #16
    8c14:	e1a04000 	mov	r4, r0
    8c18:	e1a05002 	mov	r5, r2
    8c1c:	0a000022 	beq	8cac <_ZN7Console9printCharEcj+0xa4>
    8c20:	e351000a 	cmp	r1, #10
    8c24:	0a00001d 	beq	8ca0 <_ZN7Console9printCharEcj+0x98>
    8c28:	e3510008 	cmp	r1, #8
    8c2c:	0a000014 	beq	8c84 <_ZN7Console9printCharEcj+0x7c>
    8c30:	e5902000 	ldr	r2, [r0]
    8c34:	e3520078 	cmp	r2, #120	; 0x78
    8c38:	8a000024 	bhi	8cd0 <_ZN7Console9printCharEcj+0xc8>
    8c3c:	e5943004 	ldr	r3, [r4, #4]
    8c40:	e353002d 	cmp	r3, #45	; 0x2d
    8c44:	8a00001d 	bhi	8cc0 <_ZN7Console9printCharEcj+0xb8>
    8c48:	e594e008 	ldr	lr, [r4, #8]
    8c4c:	e594c018 	ldr	ip, [r4, #24]
    8c50:	e02cec93 	mla	ip, r3, ip, lr
    8c54:	e5946000 	ldr	r6, [r4]
    8c58:	e5943014 	ldr	r3, [r4, #20]
    8c5c:	e594000c 	ldr	r0, [r4, #12]
    8c60:	e023e396 	mla	r3, r6, r3, lr
    8c64:	e2842010 	add	r2, r4, #16
    8c68:	e58dc000 	str	ip, [sp]
    8c6c:	e58d5004 	str	r5, [sp, #4]
    8c70:	ebfffef5 	bl	884c <_ZN6Canvas13DrawCharacterEcP4Fontjjj>
    8c74:	e5941000 	ldr	r1, [r4]
    8c78:	e2813001 	add	r3, r1, #1
    8c7c:	e5843000 	str	r3, [r4]
    8c80:	ea000003 	b	8c94 <_ZN7Console9printCharEcj+0x8c>
    8c84:	e5903000 	ldr	r3, [r0]
    8c88:	e3530000 	cmp	r3, #0
    8c8c:	12433001 	subne	r3, r3, #1
    8c90:	15803000 	strne	r3, [r0]
    8c94:	e28dd010 	add	sp, sp, #16
    8c98:	e8bd4070 	pop	{r4, r5, r6, lr}
    8c9c:	e12fff1e 	bx	lr
    8ca0:	e28dd010 	add	sp, sp, #16
    8ca4:	e8bd4070 	pop	{r4, r5, r6, lr}
    8ca8:	eaffffce 	b	8be8 <_ZN7Console7newLineEv>
    8cac:	e5900000 	ldr	r0, [r0]
    8cb0:	e2803004 	add	r3, r0, #4
    8cb4:	e3530077 	cmp	r3, #119	; 0x77
    8cb8:	95843000 	strls	r3, [r4]
    8cbc:	eafffff4 	b	8c94 <_ZN7Console9printCharEcj+0x8c>
    8cc0:	e1a00004 	mov	r0, r4
    8cc4:	e28dd010 	add	sp, sp, #16
    8cc8:	e8bd4070 	pop	{r4, r5, r6, lr}
    8ccc:	eaffffbb 	b	8bc0 <_ZN7Console5clearEv>
    8cd0:	e58d100c 	str	r1, [sp, #12]
    8cd4:	ebffffc3 	bl	8be8 <_ZN7Console7newLineEv>
    8cd8:	e59d100c 	ldr	r1, [sp, #12]
    8cdc:	eaffffd6 	b	8c3c <_ZN7Console9printCharEcj+0x34>

00008ce0 <_ZN7Console6kprintEPc>:
    8ce0:	e92d4038 	push	{r3, r4, r5, lr}
    8ce4:	e1a04001 	mov	r4, r1
    8ce8:	e5d11000 	ldrb	r1, [r1]
    8cec:	e3510000 	cmp	r1, #0
    8cf0:	e1a05000 	mov	r5, r0
    8cf4:	0a000005 	beq	8d10 <_ZN7Console6kprintEPc+0x30>
    8cf8:	e1a00005 	mov	r0, r5
    8cfc:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    8d00:	ebffffc0 	bl	8c08 <_ZN7Console9printCharEcj>
    8d04:	e5f41001 	ldrb	r1, [r4, #1]!
    8d08:	e3510000 	cmp	r1, #0
    8d0c:	1afffff9 	bne	8cf8 <_ZN7Console6kprintEPc+0x18>
    8d10:	e8bd4038 	pop	{r3, r4, r5, lr}
    8d14:	e12fff1e 	bx	lr

00008d18 <_ZN7Console6kprintEPKc>:
    8d18:	eafffff0 	b	8ce0 <_ZN7Console6kprintEPc>

00008d1c <_ZN7Console5kbaseEii>:
    8d1c:	e92d40f0 	push	{r4, r5, r6, r7, lr}
    8d20:	e2423005 	sub	r3, r2, #5
    8d24:	e3530015 	cmp	r3, #21
    8d28:	e24dd02c 	sub	sp, sp, #44	; 0x2c
    8d2c:	e1a05002 	mov	r5, r2
    8d30:	e1a06000 	mov	r6, r0
    8d34:	e1a04001 	mov	r4, r1
    8d38:	8a000027 	bhi	8ddc <_ZN7Console5kbaseEii+0xc0>
    8d3c:	e3a00000 	mov	r0, #0
    8d40:	e58d0020 	str	r0, [sp, #32]
    8d44:	e58d001c 	str	r0, [sp, #28]
    8d48:	e3a0c001 	mov	ip, #1
    8d4c:	ea000000 	b	8d54 <_ZN7Console5kbaseEii+0x38>
    8d50:	e1a0c003 	mov	ip, r3
    8d54:	e0030c95 	mul	r3, r5, ip
    8d58:	e1540003 	cmp	r4, r3
    8d5c:	cafffffb 	bgt	8d50 <_ZN7Console5kbaseEii+0x34>
    8d60:	e59f7080 	ldr	r7, [pc, #128]	; 8de8 <_ZN7Console5kbaseEii+0xcc>
    8d64:	e8b7000f 	ldm	r7!, {r0, r1, r2, r3}
    8d68:	e1a0e00d 	mov	lr, sp
    8d6c:	e8ae000f 	stmia	lr!, {r0, r1, r2, r3}
    8d70:	e8970007 	ldm	r7, {r0, r1, r2}
    8d74:	e8ae0003 	stmia	lr!, {r0, r1}
    8d78:	e58dc024 	str	ip, [sp, #36]	; 0x24
    8d7c:	e1ce20b0 	strh	r2, [lr]
    8d80:	e1a0100c 	mov	r1, ip
    8d84:	e1a00004 	mov	r0, r4
    8d88:	e28d301c 	add	r3, sp, #28
    8d8c:	e28d2020 	add	r2, sp, #32
    8d90:	ebfffcbf 	bl	8094 <_Z6divideiiPiS_>
    8d94:	e59d3020 	ldr	r3, [sp, #32]
    8d98:	e28d0028 	add	r0, sp, #40	; 0x28
    8d9c:	e0802003 	add	r2, r0, r3
    8da0:	e5521028 	ldrb	r1, [r2, #-40]	; 0xffffffd8
    8da4:	e1a00006 	mov	r0, r6
    8da8:	e3a028ff 	mov	r2, #16711680	; 0xff0000
    8dac:	ebffff95 	bl	8c08 <_ZN7Console9printCharEcj>
    8db0:	e59d0024 	ldr	r0, [sp, #36]	; 0x24
    8db4:	e59dc020 	ldr	ip, [sp, #32]
    8db8:	e00c0c90 	mul	ip, r0, ip
    8dbc:	e1a01005 	mov	r1, r5
    8dc0:	e28d2024 	add	r2, sp, #36	; 0x24
    8dc4:	e28d301c 	add	r3, sp, #28
    8dc8:	e06c4004 	rsb	r4, ip, r4
    8dcc:	ebfffcb0 	bl	8094 <_Z6divideiiPiS_>
    8dd0:	e59dc024 	ldr	ip, [sp, #36]	; 0x24
    8dd4:	e35c0000 	cmp	ip, #0
    8dd8:	caffffe8 	bgt	8d80 <_ZN7Console5kbaseEii+0x64>
    8ddc:	e28dd02c 	add	sp, sp, #44	; 0x2c
    8de0:	e8bd40f0 	pop	{r4, r5, r6, r7, lr}
    8de4:	e12fff1e 	bx	lr
    8de8:	00009900 	andeq	r9, r0, r0, lsl #18

00008dec <_ZN7ConsoleC1EP6Canvas>:
    8dec:	e92d4010 	push	{r4, lr}
    8df0:	e59fe038 	ldr	lr, [pc, #56]	; 8e30 <_ZN7ConsoleC1EP6Canvas+0x44>
    8df4:	e3a03000 	mov	r3, #0
    8df8:	e3a0c008 	mov	ip, #8
    8dfc:	e3a02010 	mov	r2, #16
    8e00:	e1a04000 	mov	r4, r0
    8e04:	e580e01c 	str	lr, [r0, #28]
    8e08:	e580c014 	str	ip, [r0, #20]
    8e0c:	e5802018 	str	r2, [r0, #24]
    8e10:	e5803000 	str	r3, [r0]
    8e14:	e5803004 	str	r3, [r0, #4]
    8e18:	e5803008 	str	r3, [r0, #8]
    8e1c:	e580100c 	str	r1, [r0, #12]
    8e20:	ebffff66 	bl	8bc0 <_ZN7Console5clearEv>
    8e24:	e1a00004 	mov	r0, r4
    8e28:	e8bd4010 	pop	{r4, lr}
    8e2c:	e12fff1e 	bx	lr
    8e30:	000090fc 	strdeq	r9, [r0], -ip

00008e34 <_Z11init_memoryv>:
    8e34:	e24dd018 	sub	sp, sp, #24
    8e38:	e59f300c 	ldr	r3, [pc, #12]	; 8e4c <_Z11init_memoryv+0x18>
    8e3c:	e28d2004 	add	r2, sp, #4
    8e40:	e5832010 	str	r2, [r3, #16]
    8e44:	e28dd018 	add	sp, sp, #24
    8e48:	e12fff1e 	bx	lr
    8e4c:	000090e4 	andeq	r9, r0, r4, ror #1

00008e50 <_Z6kalloci>:
    8e50:	e92d0070 	push	{r4, r5, r6}
    8e54:	e59f3084 	ldr	r3, [pc, #132]	; 8ee0 <_Z6kalloci+0x90>
    8e58:	e1b06100 	lsls	r6, r0, #2
    8e5c:	e1a02000 	mov	r2, r0
    8e60:	e24dd01c 	sub	sp, sp, #28
    8e64:	e5930014 	ldr	r0, [r3, #20]
    8e68:	0a000014 	beq	8ec0 <_Z6kalloci+0x70>
    8e6c:	e59f1070 	ldr	r1, [pc, #112]	; 8ee4 <_Z6kalloci+0x94>
    8e70:	e5911800 	ldr	r1, [r1, #2048]	; 0x800
    8e74:	e3a05000 	mov	r5, #0
    8e78:	e3560001 	cmp	r6, #1
    8e7c:	e4815004 	str	r5, [r1], #4
    8e80:	e3a04001 	mov	r4, #1
    8e84:	9a00000d 	bls	8ec0 <_Z6kalloci+0x70>
    8e88:	e3a0c001 	mov	ip, #1
    8e8c:	e35c0000 	cmp	ip, #0
    8e90:	0a000003 	beq	8ea4 <_Z6kalloci+0x54>
    8e94:	e3a04002 	mov	r4, #2
    8e98:	e1560004 	cmp	r6, r4
    8e9c:	e4815004 	str	r5, [r1], #4
    8ea0:	9a000006 	bls	8ec0 <_Z6kalloci+0x70>
    8ea4:	e1a0c001 	mov	ip, r1
    8ea8:	e48c5004 	str	r5, [ip], #4
    8eac:	e2844002 	add	r4, r4, #2
    8eb0:	e1560004 	cmp	r6, r4
    8eb4:	e5815004 	str	r5, [r1, #4]
    8eb8:	e28c1004 	add	r1, ip, #4
    8ebc:	8afffff8 	bhi	8ea4 <_Z6kalloci+0x54>
    8ec0:	e5931010 	ldr	r1, [r3, #16]
    8ec4:	e0802202 	add	r2, r0, r2, lsl #4
    8ec8:	e28dc004 	add	ip, sp, #4
    8ecc:	e581c000 	str	ip, [r1]
    8ed0:	e5832014 	str	r2, [r3, #20]
    8ed4:	e28dd01c 	add	sp, sp, #28
    8ed8:	e8bd0070 	pop	{r4, r5, r6}
    8edc:	e12fff1e 	bx	lr
    8ee0:	000090e4 	andeq	r9, r0, r4, ror #1
    8ee4:	000090fc 	strdeq	r9, [r0], -ip

00008ee8 <_Z14outputMetaDataP7Console>:
    8ee8:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
    8eec:	e59f1104 	ldr	r1, [pc, #260]	; 8ff8 <_Z14outputMetaDataP7Console+0x110>
    8ef0:	e1a04000 	mov	r4, r0
    8ef4:	ebffff79 	bl	8ce0 <_ZN7Console6kprintEPc>
    8ef8:	e1a00004 	mov	r0, r4
    8efc:	e59f10f8 	ldr	r1, [pc, #248]	; 8ffc <_Z14outputMetaDataP7Console+0x114>
    8f00:	ebffff76 	bl	8ce0 <_ZN7Console6kprintEPc>
    8f04:	e59f70f4 	ldr	r7, [pc, #244]	; 9000 <_Z14outputMetaDataP7Console+0x118>
    8f08:	e1a00004 	mov	r0, r4
    8f0c:	e59f10f0 	ldr	r1, [pc, #240]	; 9004 <_Z14outputMetaDataP7Console+0x11c>
    8f10:	ebffff72 	bl	8ce0 <_ZN7Console6kprintEPc>
    8f14:	e1a00004 	mov	r0, r4
    8f18:	e59f10e8 	ldr	r1, [pc, #232]	; 9008 <_Z14outputMetaDataP7Console+0x120>
    8f1c:	ebffff6f 	bl	8ce0 <_ZN7Console6kprintEPc>
    8f20:	e1a01007 	mov	r1, r7
    8f24:	e1a00004 	mov	r0, r4
    8f28:	ebffff6c 	bl	8ce0 <_ZN7Console6kprintEPc>
    8f2c:	e59f60d8 	ldr	r6, [pc, #216]	; 900c <_Z14outputMetaDataP7Console+0x124>
    8f30:	e1a00004 	mov	r0, r4
    8f34:	e59f10d4 	ldr	r1, [pc, #212]	; 9010 <_Z14outputMetaDataP7Console+0x128>
    8f38:	ebffff68 	bl	8ce0 <_ZN7Console6kprintEPc>
    8f3c:	e1a00004 	mov	r0, r4
    8f40:	e59f10cc 	ldr	r1, [pc, #204]	; 9014 <_Z14outputMetaDataP7Console+0x12c>
    8f44:	ebffff65 	bl	8ce0 <_ZN7Console6kprintEPc>
    8f48:	e1a01006 	mov	r1, r6
    8f4c:	e1a00004 	mov	r0, r4
    8f50:	ebffff62 	bl	8ce0 <_ZN7Console6kprintEPc>
    8f54:	e59f50bc 	ldr	r5, [pc, #188]	; 9018 <_Z14outputMetaDataP7Console+0x130>
    8f58:	e1a00004 	mov	r0, r4
    8f5c:	e59f10b8 	ldr	r1, [pc, #184]	; 901c <_Z14outputMetaDataP7Console+0x134>
    8f60:	ebffff5e 	bl	8ce0 <_ZN7Console6kprintEPc>
    8f64:	e1a00004 	mov	r0, r4
    8f68:	e59f10b0 	ldr	r1, [pc, #176]	; 9020 <_Z14outputMetaDataP7Console+0x138>
    8f6c:	ebffff5b 	bl	8ce0 <_ZN7Console6kprintEPc>
    8f70:	e1a01005 	mov	r1, r5
    8f74:	e1a00004 	mov	r0, r4
    8f78:	ebffff58 	bl	8ce0 <_ZN7Console6kprintEPc>
    8f7c:	e1a00004 	mov	r0, r4
    8f80:	e59f109c 	ldr	r1, [pc, #156]	; 9024 <_Z14outputMetaDataP7Console+0x13c>
    8f84:	ebffff55 	bl	8ce0 <_ZN7Console6kprintEPc>
    8f88:	e1a00004 	mov	r0, r4
    8f8c:	e1a01007 	mov	r1, r7
    8f90:	ebffff52 	bl	8ce0 <_ZN7Console6kprintEPc>
    8f94:	e1a00004 	mov	r0, r4
    8f98:	e59f1088 	ldr	r1, [pc, #136]	; 9028 <_Z14outputMetaDataP7Console+0x140>
    8f9c:	ebffff4f 	bl	8ce0 <_ZN7Console6kprintEPc>
    8fa0:	e1a00004 	mov	r0, r4
    8fa4:	e59f1080 	ldr	r1, [pc, #128]	; 902c <_Z14outputMetaDataP7Console+0x144>
    8fa8:	ebffff4c 	bl	8ce0 <_ZN7Console6kprintEPc>
    8fac:	e1a00004 	mov	r0, r4
    8fb0:	e1a01006 	mov	r1, r6
    8fb4:	ebffff49 	bl	8ce0 <_ZN7Console6kprintEPc>
    8fb8:	e1a00004 	mov	r0, r4
    8fbc:	e59f106c 	ldr	r1, [pc, #108]	; 9030 <_Z14outputMetaDataP7Console+0x148>
    8fc0:	ebffff46 	bl	8ce0 <_ZN7Console6kprintEPc>
    8fc4:	e1a00004 	mov	r0, r4
    8fc8:	e59f1064 	ldr	r1, [pc, #100]	; 9034 <_Z14outputMetaDataP7Console+0x14c>
    8fcc:	ebffff43 	bl	8ce0 <_ZN7Console6kprintEPc>
    8fd0:	e1a00004 	mov	r0, r4
    8fd4:	e59f105c 	ldr	r1, [pc, #92]	; 9038 <_Z14outputMetaDataP7Console+0x150>
    8fd8:	ebffff40 	bl	8ce0 <_ZN7Console6kprintEPc>
    8fdc:	e1a00004 	mov	r0, r4
    8fe0:	e59f1054 	ldr	r1, [pc, #84]	; 903c <_Z14outputMetaDataP7Console+0x154>
    8fe4:	ebffff3d 	bl	8ce0 <_ZN7Console6kprintEPc>
    8fe8:	e1a00004 	mov	r0, r4
    8fec:	e1a01005 	mov	r1, r5
    8ff0:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
    8ff4:	eaffff39 	b	8ce0 <_ZN7Console6kprintEPc>
    8ff8:	00009a28 	andeq	r9, r0, r8, lsr #20
    8ffc:	00009a38 	andeq	r9, r0, r8, lsr sl
    9000:	00009a58 	andeq	r9, r0, r8, asr sl
    9004:	00009a48 	andeq	r9, r0, r8, asr #20
    9008:	00009a4c 	andeq	r9, r0, ip, asr #20
    900c:	00009a70 	andeq	r9, r0, r0, ror sl
    9010:	00009a60 	andeq	r9, r0, r0, ror #20
    9014:	00009a64 	andeq	r9, r0, r4, ror #20
    9018:	00009ab4 			; <UNDEFINED> instruction: 0x00009ab4
    901c:	00009a74 	andeq	r9, r0, r4, ror sl
    9020:	00009a88 	andeq	r9, r0, r8, lsl #21
    9024:	00009ab8 			; <UNDEFINED> instruction: 0x00009ab8
    9028:	00009a54 	andeq	r9, r0, r4, asr sl
    902c:	00009abc 			; <UNDEFINED> instruction: 0x00009abc
    9030:	00009ad4 	ldrdeq	r9, [r0], -r4
    9034:	00009ae8 	andeq	r9, r0, r8, ror #21
    9038:	00009af4 	strdeq	r9, [r0], -r4
    903c:	00009b0c 	andeq	r9, r0, ip, lsl #22

00009040 <kmain>:
    9040:	e92d4030 	push	{r4, r5, lr}
    9044:	e3a00b01 	mov	r0, #1024	; 0x400
    9048:	e24dd03c 	sub	sp, sp, #60	; 0x3c
    904c:	e3a01c03 	mov	r1, #768	; 0x300
    9050:	ebfffce8 	bl	83f8 <_ZN12RaspberryLib18AcquireFrameBufferEjj>
    9054:	e5d02028 	ldrb	r2, [r0, #40]	; 0x28
    9058:	e3520000 	cmp	r2, #0
    905c:	e1a03000 	mov	r3, r0
    9060:	0a000019 	beq	90cc <kmain+0x8c>
    9064:	e59f206c 	ldr	r2, [pc, #108]	; 90d8 <kmain+0x98>
    9068:	e28dc020 	add	ip, sp, #32
    906c:	e59f1068 	ldr	r1, [pc, #104]	; 90dc <kmain+0x9c>
    9070:	e3a0e000 	mov	lr, #0
    9074:	e582c010 	str	ip, [r2, #16]
    9078:	e3a04010 	mov	r4, #16
    907c:	e28d5034 	add	r5, sp, #52	; 0x34
    9080:	e1a0000d 	mov	r0, sp
    9084:	e58d3034 	str	r3, [sp, #52]	; 0x34
    9088:	e3a03008 	mov	r3, #8
    908c:	e58d3014 	str	r3, [sp, #20]
    9090:	e58de000 	str	lr, [sp]
    9094:	e58de004 	str	lr, [sp, #4]
    9098:	e58de008 	str	lr, [sp, #8]
    909c:	e58d101c 	str	r1, [sp, #28]
    90a0:	e58d4018 	str	r4, [sp, #24]
    90a4:	e58d500c 	str	r5, [sp, #12]
    90a8:	ebfffec4 	bl	8bc0 <_ZN7Console5clearEv>
    90ac:	e59f102c 	ldr	r1, [pc, #44]	; 90e0 <kmain+0xa0>
    90b0:	e1a00005 	mov	r0, r5
    90b4:	ebfffeb5 	bl	8b90 <_ZN6Canvas5ClearEj>
    90b8:	e1a0000d 	mov	r0, sp
    90bc:	ebffff89 	bl	8ee8 <_Z14outputMetaDataP7Console>
    90c0:	e1a00004 	mov	r0, r4
    90c4:	e3a01001 	mov	r1, #1
    90c8:	ebfffc37 	bl	81ac <_ZN12RaspberryLib7SetGPIOEjj>
    90cc:	e28dd03c 	add	sp, sp, #60	; 0x3c
    90d0:	e8bd4030 	pop	{r4, r5, lr}
    90d4:	e12fff1e 	bx	lr
    90d8:	000090e4 	andeq	r9, r0, r4, ror #1
    90dc:	000090fc 	strdeq	r9, [r0], -ip
    90e0:	000a0c25 	andeq	r0, sl, r5, lsr #24

000090e4 <_ZZN4Font8GetBytesEcE5bytes>:
	...

000090f4 <page_table>:
    90f4:	00000000 	andeq	r0, r0, r0

000090f8 <end>:
    90f8:	00000000 	andeq	r0, r0, r0

000090fc <kernel_default_font>:
	...
    930c:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
    9310:	08080808 	stmdaeq	r8, {r3, fp}
    9314:	08080008 	stmdaeq	r8, {r3}
    9318:	00000000 	andeq	r0, r0, r0
    931c:	14000000 	strne	r0, [r0], #-0
    9320:	00141414 	andseq	r1, r4, r4, lsl r4
	...
    932c:	48480000 	stmdami	r8, {}^	; <UNPREDICTABLE>
    9330:	2424fe68 	strtcs	pc, [r4], #-3688	; 0xfffff198
    9334:	1212147f 	andsne	r1, r2, #2130706432	; 0x7f000000
    9338:	00000000 	andeq	r0, r0, r0
    933c:	10000000 	andne	r0, r0, r0
    9340:	1c12927c 	lfmne	f1, 1, [r2], {124}	; 0x7c
    9344:	7c929070 	ldcvc	0, cr9, [r2], {112}	; 0x70
    9348:	00001010 	andeq	r1, r0, r0, lsl r0
    934c:	06000000 	streq	r0, [r0], -r0
    9350:	38460909 	stmdacc	r6, {r0, r3, r8, fp}^
    9354:	60909066 	addsvs	r9, r0, r6, rrx
    9358:	00000000 	andeq	r0, r0, r0
    935c:	38000000 	stmdacc	r0, {}	; <UNPREDICTABLE>
    9360:	920c0404 	andls	r0, ip, #4, 8	; 0x4000000
    9364:	bc46a2b2 	sfmlt	f2, 3, [r6], {178}	; 0xb2
    9368:	00000000 	andeq	r0, r0, r0
    936c:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
    9370:	00080808 	andeq	r0, r8, r8, lsl #16
	...
    937c:	10103000 	andsne	r3, r0, r0
    9380:	08080808 	stmdaeq	r8, {r3, fp}
    9384:	10100808 	andsne	r0, r0, r8, lsl #16
    9388:	00000020 	andeq	r0, r0, r0, lsr #32
    938c:	08080c00 	stmdaeq	r8, {sl, fp}
    9390:	10101010 	andsne	r1, r0, r0, lsl r0
    9394:	08081010 	stmdaeq	r8, {r4, ip}
    9398:	0000000c 	andeq	r0, r0, ip
    939c:	10000000 	andne	r0, r0, r0
    93a0:	d6387c92 			; <UNDEFINED> instruction: 0xd6387c92
    93a4:	00000010 	andeq	r0, r0, r0, lsl r0
	...
    93b0:	7f080808 	svcvc	0x00080808
    93b4:	00080808 	andeq	r0, r8, r8, lsl #16
	...
    93c4:	18180000 	ldmdane	r8, {}	; <UNPREDICTABLE>
    93c8:	00000408 	andeq	r0, r0, r8, lsl #8
	...
    93d4:	0000001c 	andeq	r0, r0, ip, lsl r0
	...
    93e4:	18180000 	ldmdane	r8, {}	; <UNPREDICTABLE>
    93e8:	00000000 	andeq	r0, r0, r0
    93ec:	40000000 	andmi	r0, r0, r0
    93f0:	10102020 	andsne	r2, r0, r0, lsr #32
    93f4:	04080818 	streq	r0, [r8], #-2072	; 0xfffff7e8
    93f8:	00000204 	andeq	r0, r0, r4, lsl #4
    93fc:	38000000 	stmdacc	r0, {}	; <UNPREDICTABLE>
    9400:	92828244 	addls	r8, r2, #68, 4	; 0x40000004
    9404:	38448282 	stmdacc	r4, {r1, r7, r9, pc}^
    9408:	00000000 	andeq	r0, r0, r0
    940c:	1c000000 	stcne	0, cr0, [r0], {-0}
    9410:	10101010 	andsne	r1, r0, r0, lsl r0
    9414:	7c101010 	ldcvc	0, cr1, [r0], {16}
    9418:	00000000 	andeq	r0, r0, r0
    941c:	7c000000 	stcvc	0, cr0, [r0], {-0}
    9420:	408080c2 	addmi	r8, r0, r2, asr #1
    9424:	fe041830 	mcr2	8, 0, r1, cr4, cr0, {1}
    9428:	00000000 	andeq	r0, r0, r0
    942c:	7c000000 	stcvc	0, cr0, [r0], {-0}
    9430:	38c08082 	stmiacc	r0, {r1, r7, pc}^
    9434:	7cc280c0 	stclvc	0, cr8, [r2], {192}	; 0xc0
    9438:	00000000 	andeq	r0, r0, r0
    943c:	60000000 	andvs	r0, r0, r0
    9440:	44485850 	strbmi	r5, [r8], #-2128	; 0xfffff7b0
    9444:	4040fe42 	submi	pc, r0, r2, asr #28
    9448:	00000000 	andeq	r0, r0, r0
    944c:	7e000000 	cdpvc	0, 0, cr0, cr0, cr0, {0}
    9450:	c03e0202 	eorsgt	r0, lr, r2, lsl #4
    9454:	3cc28080 	stclcc	0, cr8, [r2], {128}	; 0x80
    9458:	00000000 	andeq	r0, r0, r0
    945c:	78000000 	stmdavc	r0, {}	; <UNPREDICTABLE>
    9460:	c67a0284 	ldrbtgt	r0, [sl], -r4, lsl #5
    9464:	78c48282 	stmiavc	r4, {r1, r7, r9, pc}^
    9468:	00000000 	andeq	r0, r0, r0
    946c:	fe000000 	cdp2	0, 0, cr0, cr0, cr0, {0}
    9470:	20204040 	eorcs	r4, r0, r0, asr #32
    9474:	04081810 	streq	r1, [r8], #-2064	; 0xfffff7f0
    9478:	00000000 	andeq	r0, r0, r0
    947c:	7c000000 	stcvc	0, cr0, [r0], {-0}
    9480:	7c828282 	sfmvc	f0, 1, [r2], {130}	; 0x82
    9484:	7c868282 	sfmvc	f0, 1, [r6], {130}	; 0x82
    9488:	00000000 	andeq	r0, r0, r0
    948c:	3c000000 	stccc	0, cr0, [r0], {-0}
    9490:	c6828246 	strgt	r8, [r2], r6, asr #4
    9494:	3c4280bc 	mcrrcc	0, 11, r8, r2, cr12
	...
    94a0:	00181800 	andseq	r1, r8, r0, lsl #16
    94a4:	18180000 	ldmdane	r8, {}	; <UNPREDICTABLE>
	...
    94b0:	00181800 	andseq	r1, r8, r0, lsl #16
    94b4:	18180000 	ldmdane	r8, {}	; <UNPREDICTABLE>
    94b8:	00000408 	andeq	r0, r0, r8, lsl #8
    94bc:	00000000 	andeq	r0, r0, r0
    94c0:	0e708000 	cdpeq	0, 7, cr8, cr0, cr0, {0}
    94c4:	0080700e 	addeq	r7, r0, lr
	...
    94d0:	00fe0000 	rscseq	r0, lr, r0
    94d4:	0000fe00 	andeq	pc, r0, r0, lsl #28
	...
    94e0:	e01c0200 	ands	r0, ip, r0, lsl #4
    94e4:	00021ce0 	andeq	r1, r2, r0, ror #25
    94e8:	00000000 	andeq	r0, r0, r0
    94ec:	1c000000 	stcne	0, cr0, [r0], {-0}
    94f0:	08102022 	ldmdaeq	r0, {r1, r5, sp}
    94f4:	08080008 	stmdaeq	r8, {r3}
    94f8:	00000000 	andeq	r0, r0, r0
    94fc:	78000000 	stmdavc	r0, {}	; <UNPREDICTABLE>
    9500:	92e284cc 	rscls	r8, r2, #204, 8	; 0xcc000000
    9504:	04e29292 	strbteq	r9, [r2], #658	; 0x292
    9508:	0000780c 	andeq	r7, r0, ip, lsl #16
    950c:	10000000 	andne	r0, r0, r0
    9510:	44282828 	strtmi	r2, [r8], #-2088	; 0xfffff7d8
    9514:	82c67c44 	sbchi	r7, r6, #68, 24	; 0x4400
    9518:	00000000 	andeq	r0, r0, r0
    951c:	7e000000 	cdpvc	0, 0, cr0, cr0, cr0, {0}
    9520:	7e828282 	cdpvc	2, 8, cr8, cr2, cr2, {4}
    9524:	7e828282 	cdpvc	2, 8, cr8, cr2, cr2, {4}
    9528:	00000000 	andeq	r0, r0, r0
    952c:	78000000 	stmdavc	r0, {}	; <UNPREDICTABLE>
    9530:	02020284 	andeq	r0, r2, #132, 4	; 0x40000008
    9534:	78840202 	stmvc	r4, {r1, r9}
    9538:	00000000 	andeq	r0, r0, r0
    953c:	3e000000 	cdpcc	0, 0, cr0, cr0, cr0, {0}
    9540:	82828242 	addhi	r8, r2, #536870916	; 0x20000004
    9544:	3e428282 	cdpcc	2, 4, cr8, cr2, cr2, {4}
    9548:	00000000 	andeq	r0, r0, r0
    954c:	fe000000 	cdp2	0, 0, cr0, cr0, cr0, {0}
    9550:	fe020202 	cdp2	2, 0, cr0, cr2, cr2, {0}
    9554:	fe020202 	cdp2	2, 0, cr0, cr2, cr2, {0}
    9558:	00000000 	andeq	r0, r0, r0
    955c:	fe000000 	cdp2	0, 0, cr0, cr0, cr0, {0}
    9560:	fe020202 	cdp2	2, 0, cr0, cr2, cr2, {0}
    9564:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
    9568:	00000000 	andeq	r0, r0, r0
    956c:	78000000 	stmdavc	r0, {}	; <UNPREDICTABLE>
    9570:	c2020284 	andgt	r0, r2, #132, 4	; 0x40000008
    9574:	78848282 	stmvc	r4, {r1, r7, r9, pc}
    9578:	00000000 	andeq	r0, r0, r0
    957c:	82000000 	andhi	r0, r0, #0
    9580:	fe828282 	cdp2	2, 8, cr8, cr2, cr2, {4}
    9584:	82828282 	addhi	r8, r2, #536870920	; 0x20000008
    9588:	00000000 	andeq	r0, r0, r0
    958c:	3e000000 	cdpcc	0, 0, cr0, cr0, cr0, {0}
    9590:	08080808 	stmdaeq	r8, {r3, fp}
    9594:	3e080808 	cdpcc	8, 0, cr0, cr8, cr8, {0}
    9598:	00000000 	andeq	r0, r0, r0
    959c:	38000000 	stmdacc	r0, {}	; <UNPREDICTABLE>
    95a0:	20202020 	eorcs	r2, r0, r0, lsr #32
    95a4:	1c222020 	stcne	0, cr2, [r2], #-128	; 0xffffff80
    95a8:	00000000 	andeq	r0, r0, r0
    95ac:	42000000 	andmi	r0, r0, #0
    95b0:	0e0a1222 	cdpeq	2, 0, cr1, cr10, cr2, {1}
    95b4:	42222212 	eormi	r2, r2, #536870913	; 0x20000001
    95b8:	00000000 	andeq	r0, r0, r0
    95bc:	02000000 	andeq	r0, r0, #0
    95c0:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
    95c4:	fe020202 	cdp2	2, 0, cr0, cr2, cr2, {0}
    95c8:	00000000 	andeq	r0, r0, r0
    95cc:	c6000000 	strgt	r0, [r0], -r0
    95d0:	aaaaaac6 	bge	feab40f0 <_ZZN7Console5kbaseEiiE3C.8+0xfeaaa7f0>
    95d4:	82828292 	addhi	r8, r2, #536870921	; 0x20000009
    95d8:	00000000 	andeq	r0, r0, r0
    95dc:	86000000 	strhi	r0, [r0], -r0
    95e0:	928a8a86 	addls	r8, sl, #548864	; 0x86000
    95e4:	c2c2a2a2 	sbcgt	sl, r2, #536870922	; 0x2000000a
    95e8:	00000000 	andeq	r0, r0, r0
    95ec:	38000000 	stmdacc	r0, {}	; <UNPREDICTABLE>
    95f0:	82828244 	addhi	r8, r2, #68, 4	; 0x40000004
    95f4:	38448282 	stmdacc	r4, {r1, r7, r9, pc}^
    95f8:	00000000 	andeq	r0, r0, r0
    95fc:	7e000000 	cdpvc	0, 0, cr0, cr0, cr0, {0}
    9600:	c28282c2 	addgt	r8, r2, #536870924	; 0x2000000c
    9604:	0202027e 	andeq	r0, r2, #-536870905	; 0xe0000007
    9608:	00000000 	andeq	r0, r0, r0
    960c:	38000000 	stmdacc	r0, {}	; <UNPREDICTABLE>
    9610:	82828244 	addhi	r8, r2, #68, 4	; 0x40000004
    9614:	78448282 	stmdavc	r4, {r1, r7, r9, pc}^
    9618:	00004060 	andeq	r4, r0, r0, rrx
    961c:	7e000000 	cdpvc	0, 0, cr0, cr0, cr0, {0}
    9620:	7e8282c2 	cdpvc	2, 8, cr8, cr2, cr2, {6}
    9624:	02828242 	addeq	r8, r2, #536870916	; 0x20000004
    9628:	00000000 	andeq	r0, r0, r0
    962c:	7c000000 	stcvc	0, cr0, [r0], {-0}
    9630:	7c060286 	sfmvc	f0, 4, [r6], {134}	; 0x86
    9634:	7dc280c0 	stclvc	0, cr8, [r2, #768]	; 0x300
    9638:	00000000 	andeq	r0, r0, r0
    963c:	7f000000 	svcvc	0x00000000
    9640:	08080808 	stmdaeq	r8, {r3, fp}
    9644:	08080808 	stmdaeq	r8, {r3, fp}
    9648:	00000000 	andeq	r0, r0, r0
    964c:	82000000 	andhi	r0, r0, #0
    9650:	82828282 	addhi	r8, r2, #536870920	; 0x20000008
    9654:	7c828282 	sfmvc	f0, 1, [r2], {130}	; 0x82
    9658:	00000000 	andeq	r0, r0, r0
    965c:	82000000 	andhi	r0, r0, #0
    9660:	444444c6 	strbmi	r4, [r4], #-1222	; 0xfffffb3a
    9664:	10282828 	eorne	r2, r8, r8, lsr #16
    9668:	00000000 	andeq	r0, r0, r0
    966c:	81000000 	tsthi	r0, r0
    9670:	5a5a8181 	bpl	16a9c7c <_ZZN7Console5kbaseEiiE3C.8+0x16a037c>
    9674:	6666665a 			; <UNDEFINED> instruction: 0x6666665a
    9678:	00000000 	andeq	r0, r0, r0
    967c:	c6000000 	strgt	r0, [r0], -r0
    9680:	10382844 	eorsne	r2, r8, r4, asr #16
    9684:	82446c28 	subhi	r6, r4, #40, 24	; 0x2800
    9688:	00000000 	andeq	r0, r0, r0
    968c:	41000000 	tstmi	r0, r0
    9690:	08141422 	ldmdaeq	r4, {r1, r5, sl, ip}
    9694:	08080808 	stmdaeq	r8, {r3, fp}
    9698:	00000000 	andeq	r0, r0, r0
    969c:	fe000000 	cdp2	0, 0, cr0, cr0, cr0, {0}
    96a0:	102060c0 	eorne	r6, r0, r0, asr #1
    96a4:	fe060c08 	cdp2	12, 0, cr0, cr6, cr8, {0}
    96a8:	00000000 	andeq	r0, r0, r0
    96ac:	08083800 	stmdaeq	r8, {fp, ip, sp}
    96b0:	08080808 	stmdaeq	r8, {r3, fp}
    96b4:	08080808 	stmdaeq	r8, {r3, fp}
    96b8:	00000038 	andeq	r0, r0, r8, lsr r0
    96bc:	02000000 	andeq	r0, r0, #0
    96c0:	08080404 	stmdaeq	r8, {r2, sl}
    96c4:	20101018 	andscs	r1, r0, r8, lsl r0
    96c8:	00004020 	andeq	r4, r0, r0, lsr #32
    96cc:	10101c00 	andsne	r1, r0, r0, lsl #24
    96d0:	10101010 	andsne	r1, r0, r0, lsl r0
    96d4:	10101010 	andsne	r1, r0, r0, lsl r0
    96d8:	0000001c 	andeq	r0, r0, ip, lsl r0
    96dc:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
    96e0:	00632214 	rsbeq	r2, r3, r4, lsl r2
	...
    96f8:	007f0000 	rsbseq	r0, pc, r0
    96fc:	10080000 	andne	r0, r8, r0
	...
    9710:	40443800 	submi	r3, r4, r0, lsl #16
    9714:	5c62427c 	sfmpl	f4, 2, [r2], #-496	; 0xfffffe10
    9718:	00000000 	andeq	r0, r0, r0
    971c:	02020200 	andeq	r0, r2, #0, 4
    9720:	42663e02 	rsbmi	r3, r6, #2, 28
    9724:	3e664242 	cdpcc	2, 6, cr4, cr6, cr2, {2}
	...
    9730:	02443800 	subeq	r3, r4, #0, 16
    9734:	38440202 	stmdacc	r4, {r1, r9}^
    9738:	00000000 	andeq	r0, r0, r0
    973c:	40404000 	submi	r4, r0, r0
    9740:	42667c40 	rsbmi	r7, r6, #64, 24	; 0x4000
    9744:	7c664242 	sfmvc	f4, 2, [r6], #-264	; 0xfffffef8
	...
    9750:	42663c00 	rsbmi	r3, r6, #0, 24
    9754:	3c46027e 	sfmcc	f0, 2, [r6], {126}	; 0x7e
    9758:	00000000 	andeq	r0, r0, r0
    975c:	08083000 	stmdaeq	r8, {ip, sp}
    9760:	08083e08 	stmdaeq	r8, {r3, r9, sl, fp, ip, sp}
    9764:	08080808 	stmdaeq	r8, {r3, fp}
	...
    9770:	42667c00 	rsbmi	r7, r6, #0, 24
    9774:	5c664242 	sfmpl	f4, 2, [r6], #-264	; 0xfffffef8
    9778:	00384440 	eorseq	r4, r8, r0, asr #8
    977c:	02020200 	andeq	r0, r2, #0, 4
    9780:	42463a02 	submi	r3, r6, #8192	; 0x2000
    9784:	42424242 	submi	r4, r2, #536870916	; 0x20000004
    9788:	00000000 	andeq	r0, r0, r0
    978c:	00000800 	andeq	r0, r0, r0, lsl #16
    9790:	08080e00 	stmdaeq	r8, {r9, sl, fp}
    9794:	3e080808 	cdpcc	8, 0, cr0, cr8, cr8, {0}
    9798:	00000000 	andeq	r0, r0, r0
    979c:	00001000 	andeq	r1, r0, r0
    97a0:	10101c00 	andsne	r1, r0, r0, lsl #24
    97a4:	10101010 	andsne	r1, r0, r0, lsl r0
    97a8:	000e1010 	andeq	r1, lr, r0, lsl r0
    97ac:	02020200 	andeq	r0, r2, #0, 4
    97b0:	0a122202 	beq	491fc0 <_ZZN7Console5kbaseEiiE3C.8+0x4886c0>
    97b4:	4222120e 	eormi	r1, r2, #-536870912	; 0xe0000000
    97b8:	00000000 	andeq	r0, r0, r0
    97bc:	08080e00 	stmdaeq	r8, {r9, sl, fp}
    97c0:	08080808 	stmdaeq	r8, {r3, fp}
    97c4:	70080808 	andvc	r0, r8, r8, lsl #16
	...
    97d0:	9292fe00 	addsls	pc, r2, #0, 28
    97d4:	92929292 	addsls	r9, r2, #536870921	; 0x20000009
	...
    97e0:	42463a00 	submi	r3, r6, #0, 20
    97e4:	42424242 	submi	r4, r2, #536870916	; 0x20000004
	...
    97f0:	42663c00 	rsbmi	r3, r6, #0, 24
    97f4:	3c664242 	sfmcc	f4, 2, [r6], #-264	; 0xfffffef8
	...
    9800:	42663e00 	rsbmi	r3, r6, #0, 28
    9804:	3e664242 	cdpcc	2, 6, cr4, cr6, cr2, {2}
    9808:	00020202 	andeq	r0, r2, r2, lsl #4
    980c:	00000000 	andeq	r0, r0, r0
    9810:	42667c00 	rsbmi	r7, r6, #0, 24
    9814:	5c664242 	sfmpl	f4, 2, [r6], #-264	; 0xfffffef8
    9818:	00404040 	subeq	r4, r0, r0, asr #32
    981c:	00000000 	andeq	r0, r0, r0
    9820:	044c3c00 	strbeq	r3, [ip], #-3072	; 0xfffff400
    9824:	04040404 	streq	r0, [r4], #-1028	; 0xfffffbfc
	...
    9830:	02423c00 	subeq	r3, r2, #0, 24
    9834:	3c42403c 	mcrrcc	0, 3, r4, r2, cr12
    9838:	00000000 	andeq	r0, r0, r0
    983c:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
    9840:	08087e08 	stmdaeq	r8, {r3, r9, sl, fp, ip, sp, lr}
    9844:	70080808 	andvc	r0, r8, r8, lsl #16
	...
    9850:	42424200 	submi	r4, r2, #0, 4
    9854:	5c624242 	sfmpl	f4, 2, [r2], #-264	; 0xfffffef8
	...
    9860:	24664200 	strbtcs	r4, [r6], #-512	; 0xfffffe00
    9864:	18183c24 	ldmdane	r8, {r2, r5, sl, fp, ip, sp}
	...
    9870:	5a818100 	bpl	fe069c78 <_ZZN7Console5kbaseEiiE3C.8+0xfe060378>
    9874:	24245a5a 	strtcs	r5, [r4], #-2650	; 0xfffff5a6
	...
    9880:	18246600 	stmdane	r4!, {r9, sl, sp, lr}
    9884:	66241818 			; <UNDEFINED> instruction: 0x66241818
	...
    9890:	24444200 	strbcs	r4, [r4], #-512	; 0xfffffe00
    9894:	10182824 	andsne	r2, r8, r4, lsr #16
    9898:	000c0810 	andeq	r0, ip, r0, lsl r8
    989c:	00000000 	andeq	r0, r0, r0
    98a0:	20407e00 	subcs	r7, r0, r0, lsl #28
    98a4:	7e020418 	cfmvdlrvc	mvd2, r0
    98a8:	00000000 	andeq	r0, r0, r0
    98ac:	08083800 	stmdaeq	r8, {fp, ip, sp}
    98b0:	08060808 	stmdaeq	r6, {r3, fp}
    98b4:	08080808 	stmdaeq	r8, {r3, fp}
    98b8:	00000030 	andeq	r0, r0, r0, lsr r0
    98bc:	08080800 	stmdaeq	r8, {fp}
    98c0:	08080808 	stmdaeq	r8, {r3, fp}
    98c4:	08080808 	stmdaeq	r8, {r3, fp}
    98c8:	00000808 	andeq	r0, r0, r8, lsl #16
    98cc:	08080e00 	stmdaeq	r8, {r9, sl, fp}
    98d0:	08300808 	ldmdaeq	r0!, {r3, fp}
    98d4:	08080808 	stmdaeq	r8, {r3, fp}
    98d8:	00000006 	andeq	r0, r0, r6
    98dc:	00000000 	andeq	r0, r0, r0
    98e0:	9c000000 	stcls	0, cr0, [r0], {-0}
    98e4:	00000062 	andeq	r0, r0, r2, rrx
    98e8:	00000000 	andeq	r0, r0, r0
    98ec:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
    98f0:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
    98f4:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
    98f8:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff

000098fc <memory_space>:
    98fc:	00009000 	andeq	r9, r0, r0

00009900 <_ZZN7Console5kbaseEiiE3C.8>:
    9900:	33323130 	teqcc	r2, #48, 2
    9904:	37363534 			; <UNDEFINED> instruction: 0x37363534
    9908:	42413938 	submi	r3, r1, #56, 18	; 0xe0000
    990c:	46454443 	strbmi	r4, [r5], -r3, asr #8
    9910:	4a494847 	bmi	125ba34 <_ZZN7Console5kbaseEiiE3C.8+0x1252134>
    9914:	4e4d4c4b 	cdpmi	12, 4, cr4, cr13, cr11, {2}
    9918:	0000504f 	andeq	r5, r0, pc, asr #32

Disassembly of section .rodata.str1.4:

0000991c <.rodata.str1.4>:
    991c:	6f727245 	svcvs	0x00727245
    9920:	43202e72 	teqmi	r0, #1824	; 0x720
    9924:	75637269 	strbvc	r7, [r3, #-617]!	; 0xfffffd97
    9928:	2072616c 	rsbscs	r6, r2, ip, ror #2
    992c:	706f6f6c 	rsbvc	r6, pc, ip, ror #30
    9930:	65686320 	strbvs	r6, [r8, #-800]!	; 0xfffffce0
    9934:	6e696b63 	vnmulvs.f64	d22, d9, d19
    9938:	6f662067 	svcvs	0x00662067
    993c:	74732072 	ldrbtvc	r2, [r3], #-114	; 0xffffff8e
    9940:	73757461 	cmnvc	r5, #1627389952	; 0x61000000
    9944:	0000002e 	andeq	r0, r0, lr, lsr #32
    9948:	6f727245 	svcvs	0x00727245
    994c:	54202172 	strtpl	r2, [r0], #-370	; 0xfffffe8e
    9950:	6d206568 	cfstr32vs	mvfx6, [r0, #-416]!	; 0xfffffe60
    9954:	626c6961 	rsbvs	r6, ip, #1589248	; 0x184000
    9958:	6420786f 	strtvs	r7, [r0], #-2159	; 0xfffff791
    995c:	276e6469 	strbcs	r6, [lr, -r9, ror #8]!
    9960:	65722074 	ldrbvs	r2, [r2, #-116]!	; 0xffffff8c
    9964:	6e727574 	mrcvs	5, 3, r7, cr2, cr4, {3}
    9968:	73206120 	teqvc	r0, #32, 2
    996c:	61746975 	cmnvs	r4, r5, ror r9
    9970:	20656c62 	rsbcs	r6, r5, r2, ror #24
    9974:	756c6176 	strbvc	r6, [ip, #-374]!	; 0xfffffe8a
    9978:	6e692065 	cdpvs	0, 6, cr2, cr9, cr5, {3}
    997c:	74206120 	strtvc	r6, [r0], #-288	; 0xfffffee0
    9980:	6c656d69 	stclvs	13, cr6, [r5], #-420	; 0xfffffe5c
    9984:	616d2079 	smcvs	53769	; 0xd209
    9988:	72656e6e 	rsbvc	r6, r5, #1760	; 0x6e0
    998c:	0000002e 	andeq	r0, r0, lr, lsr #32
    9990:	6f727245 	svcvs	0x00727245
    9994:	54202172 	strtpl	r2, [r0], #-370	; 0xfffffe8e
    9998:	66206568 	strtvs	r6, [r0], -r8, ror #10
    999c:	656d6172 	strbvs	r6, [sp, #-370]!	; 0xfffffe8e
    99a0:	66667562 	strbtvs	r7, [r6], -r2, ror #10
    99a4:	72207265 	eorvc	r7, r0, #1342177286	; 0x50000006
    99a8:	72757465 	rsbsvc	r7, r5, #1694498816	; 0x65000000
    99ac:	2064656e 	rsbcs	r6, r4, lr, ror #10
    99b0:	69207369 	stmdbvs	r0!, {r0, r3, r5, r6, r8, r9, ip, sp, lr}
    99b4:	6c61766e 	stclvs	6, cr7, [r1], #-440	; 0xfffffe48
    99b8:	202e6469 	eorcs	r6, lr, r9, ror #8
    99bc:	726f6241 	rsbvc	r6, pc, #268435460	; 0x10000004
    99c0:	676e6974 			; <UNDEFINED> instruction: 0x676e6974
    99c4:	61726620 	cmnvs	r2, r0, lsr #12
    99c8:	7562656d 	strbvc	r6, [r2, #-1389]!	; 0xfffffa93
    99cc:	72656666 	rsbvc	r6, r5, #106954752	; 0x6600000
    99d0:	71636120 	cmnvc	r3, r0, lsr #2
    99d4:	69736975 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r8, fp, sp, lr}^
    99d8:	6e6f6974 	mcrvs	9, 3, r6, cr15, cr4, {3}
    99dc:	00000000 	andeq	r0, r0, r0
    99e0:	6f727245 	svcvs	0x00727245
    99e4:	54202172 	strtpl	r2, [r0], #-370	; 0xfffffe8e
    99e8:	70206568 	eorvc	r6, r0, r8, ror #10
    99ec:	68637469 	stmdavs	r3!, {r0, r3, r5, r6, sl, ip, sp, lr}^
    99f0:	74657220 	strbtvc	r7, [r5], #-544	; 0xfffffde0
    99f4:	656e7275 	strbvs	r7, [lr, #-629]!	; 0xfffffd8b
    99f8:	73692064 	cmnvc	r9, #100	; 0x64
    99fc:	766e6920 	strbtvc	r6, [lr], -r0, lsr #18
    9a00:	64696c61 	strbtvs	r6, [r9], #-3169	; 0xfffff39f
    9a04:	6241202e 	subvs	r2, r1, #46	; 0x2e
    9a08:	6974726f 	ldmdbvs	r4!, {r0, r1, r2, r3, r5, r6, r9, ip, sp, lr}^
    9a0c:	6620676e 	strtvs	r6, [r0], -lr, ror #14
    9a10:	656d6172 	strbvs	r6, [sp, #-370]!	; 0xfffffe8e
    9a14:	66667562 	strbtvs	r7, [r6], -r2, ror #10
    9a18:	61207265 	teqvs	r0, r5, ror #4
    9a1c:	69757163 	ldmdbvs	r5!, {r0, r1, r5, r6, r8, ip, sp, lr}^
    9a20:	69746973 	ldmdbvs	r4!, {r0, r1, r4, r5, r6, r8, fp, sp, lr}^
    9a24:	002e6e6f 	eoreq	r6, lr, pc, ror #28
    9a28:	636c6557 	cmnvs	ip, #364904448	; 0x15c00000
    9a2c:	20656d6f 	rsbcs	r6, r5, pc, ror #26
    9a30:	74206f74 	strtvc	r6, [r0], #-3956	; 0xfffff08c
    9a34:	00206568 	eoreq	r6, r0, r8, ror #10
    9a38:	70727830 	rsbsvc	r7, r2, r0, lsr r8
    9a3c:	654b2069 	strbvs	r2, [fp, #-105]	; 0xffffff97
    9a40:	6c656e72 	stclvs	14, cr6, [r5], #-456	; 0xfffffe38
    9a44:	00000000 	andeq	r0, r0, r0
    9a48:	00000a21 	andeq	r0, r0, r1, lsr #20
    9a4c:	73726556 	cmnvc	r2, #360710144	; 0x15800000
    9a50:	3a6e6f69 	bcc	1ba57fc <_ZZN7Console5kbaseEiiE3C.8+0x1b9befc>
    9a54:	00000020 	andeq	r0, r0, r0, lsr #32
    9a58:	2e302e30 	mrccs	14, 1, r2, cr0, cr0, {1}
    9a5c:	00313932 	eorseq	r3, r1, r2, lsr r9
    9a60:	00202d20 	eoreq	r2, r0, r0, lsr #26
    9a64:	646e694d 	strbtvs	r6, [lr], #-2381	; 0xfffff6b3
    9a68:	79616c66 	stmdbvc	r1!, {r1, r2, r5, r6, sl, fp, sp, lr}^
    9a6c:	00007265 	andeq	r7, r0, r5, ror #4
    9a70:	0000000a 	andeq	r0, r0, sl
    9a74:	77656956 			; <UNDEFINED> instruction: 0x77656956
    9a78:	65687420 	strbvs	r7, [r8, #-1056]!	; 0xfffffbe0
    9a7c:	646f6320 	strbtvs	r6, [pc], #-800	; 9a84 <_ZZN7Console5kbaseEiiE3C.8+0x184>
    9a80:	74612065 	strbtvc	r2, [r1], #-101	; 0xffffff9b
    9a84:	0000203a 	andeq	r2, r0, sl, lsr r0
    9a88:	70747468 	rsbsvc	r7, r4, r8, ror #8
    9a8c:	2f2f3a73 	svccs	0x002f3a73
    9a90:	68746967 	ldmdavs	r4!, {r0, r1, r2, r5, r6, r8, fp, sp, lr}^
    9a94:	632e6275 	teqvs	lr, #1342177287	; 0x50000007
    9a98:	532f6d6f 	teqpl	pc, #7104	; 0x1bc0
    9a9c:	70726168 	rsbsvc	r6, r2, r8, ror #2
    9aa0:	65646f43 	strbvs	r6, [r4, #-3907]!	; 0xfffff0bd
    9aa4:	70722f72 	rsbsvc	r2, r2, r2, ror pc
    9aa8:	656b2d69 	strbvs	r2, [fp, #-3433]!	; 0xfffff297
    9aac:	6c656e72 	stclvs	14, cr6, [r5], #-456	; 0xfffffe38
    9ab0:	00000000 	andeq	r0, r0, r0
    9ab4:	00000a0a 	andeq	r0, r0, sl, lsl #20
    9ab8:	00000076 	andeq	r0, r0, r6, ror r0
    9abc:	33313032 	teqcc	r1, #50	; 0x32
    9ac0:	2d33302d 	ldccs	0, cr3, [r3, #-180]!	; 0xffffff4c
    9ac4:	20203632 	eorcs	r3, r0, r2, lsr r6
    9ac8:	353a3031 	ldrcc	r3, [sl, #-49]!	; 0xffffffcf
    9acc:	31343a39 	teqcc	r4, r9, lsr sl
    9ad0:	004d5020 	subeq	r5, sp, r0, lsr #32
    9ad4:	6769724f 	strbvs	r7, [r9, -pc, asr #4]!
    9ad8:	6c616e69 	stclvs	14, cr6, [r1], #-420	; 0xfffffe5c
    9adc:	74756120 	ldrbtvc	r6, [r5], #-288	; 0xfffffee0
    9ae0:	3a726f68 	bcc	1ca5888 <_ZZN7Console5kbaseEiiE3C.8+0x1c9bf88>
    9ae4:	00000020 	andeq	r0, r0, r0, lsr #32
    9ae8:	72616853 	rsbvc	r6, r1, #5439488	; 0x530000
    9aec:	646f4370 	strbtvs	r4, [pc], #-880	; 9af4 <_ZZN7Console5kbaseEiiE3C.8+0x1f4>
    9af0:	00007265 	andeq	r7, r0, r5, ror #4
    9af4:	6e6f430a 	cdpvs	3, 6, cr4, cr15, cr10, {0}
    9af8:	74636174 	strbtvc	r6, [r3], #-372	; 0xfffffe8c
    9afc:	666e6920 	strbtvs	r6, [lr], -r0, lsr #18
    9b00:	616d726f 	cmnvs	sp, pc, ror #4
    9b04:	6e6f6974 	mcrvs	9, 3, r6, cr15, cr4, {3}
    9b08:	0000203a 	andeq	r2, r0, sl, lsr r0
    9b0c:	75736f4a 	ldrbvc	r6, [r3, #-3914]!	; 0xfffff0b6
    9b10:	64406168 	strbvs	r6, [r0], #-360	; 0xfffffe98
    9b14:	67756265 	ldrbvs	r6, [r5, -r5, ror #4]!
    9b18:	2e656c67 	cdpcs	12, 6, cr6, cr5, cr7, {3}
    9b1c:	006d6f63 	rsbeq	r6, sp, r3, ror #30

Disassembly of section .ARM.attributes:

00000000 <.ARM.attributes>:
   0:	00002f41 	andeq	r2, r0, r1, asr #30
   4:	61656100 	cmnvs	r5, r0, lsl #2
   8:	01006962 	tsteq	r0, r2, ror #18
   c:	00000025 	andeq	r0, r0, r5, lsr #32
  10:	4d524105 	ldfmie	f4, [r2, #-20]	; 0xffffffec
  14:	4d445437 	cfstrdmi	mvd5, [r4, #-220]	; 0xffffff24
  18:	00532d49 	subseq	r2, r3, r9, asr #26
  1c:	01080206 	tsteq	r8, r6, lsl #4
  20:	04120109 	ldreq	r0, [r2], #-265	; 0xfffffef7
  24:	01150114 	tsteq	r5, r4, lsl r1
  28:	01180317 	tsteq	r8, r7, lsl r3
  2c:	012c011a 	teqeq	ip, sl, lsl r1

Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347 	bcc	10d0d24 <_ZZN7Console5kbaseEiiE3C.8+0x10c7424>
   4:	6f532820 	svcvs	0x00532820
   8:	65637275 	strbvs	r7, [r3, #-629]!	; 0xfffffd8b
   c:	47207972 			; <UNDEFINED> instruction: 0x47207972
  10:	4c202b2b 	stcmi	11, cr2, [r0], #-172	; 0xffffff54
  14:	20657469 	rsbcs	r7, r5, r9, ror #8
  18:	30313032 	eorscc	r3, r1, r2, lsr r0
  1c:	2d39302e 	ldccs	0, cr3, [r9, #-184]!	; 0xffffff48
  20:	20293135 	eorcs	r3, r9, r5, lsr r1
  24:	2e352e34 	mrccs	14, 1, r2, cr5, cr4, {1}
  28:	Address 0x00000028 is out of bounds.

