	.arch armv6
	.eabi_attribute 27, 3
	.eabi_attribute 28, 1
	.fpu vfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"main_app.cpp"
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,4
	.global	MousePtr
	.bss
	.align	2
	.type	MousePtr, %object
	.size	MousePtr, 4
MousePtr:
	.space	4
	.global	i
	.data
	.align	2
	.type	i, %object
	.size	i, 4
i:
	.word	100
	.global	jsread
	.bss
	.align	2
	.type	jsread, %object
	.size	jsread, 8
jsread:
	.space	8
	.global	js
	.align	2
	.type	js, %object
	.size	js, 4
js:
	.space	4
	.global	xtemp
	.data
	.align	2
	.type	xtemp, %object
	.size	xtemp, 4
xtemp:
	.word	100
	.global	ytemp
	.align	2
	.type	ytemp, %object
	.size	ytemp, 4
ytemp:
	.word	100
	.section	.rodata
	.align	2
.LC0:
	.ascii	"\012Begin\000"
	.align	2
.LC1:
	.ascii	"type=%d,number=%d, value=%d\012\000"
	.align	2
.LC2:
	.ascii	"button x pressed\000"
	.align	2
.LC3:
	.ascii	"button square pressed\000"
	.align	2
.LC4:
	.ascii	"button start pressed\000"
	.align	2
.LC5:
	.ascii	"button triangle pressed\012Bluetooth\000"
	.align	2
.LC6:
	.ascii	"button select pressed\000"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	.fnstart
.LFB1070:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, fp, lr}
	.save {r4, fp, lr}
	.setfp fp, sp, #8
	add	fp, sp, #8
	.pad #28
	sub	sp, sp, #28
	mov	r3, #0
	str	r3, [fp, #-16]
	mov	r3, #0
	str	r3, [fp, #-20]
	mov	r3, #0
	str	r3, [fp, #-24]
	mov	r3, #0
	strb	r3, [fp, #-25]
	mov	r3, #0
	strb	r3, [fp, #-26]
	mov	r3, #0
	strb	r3, [fp, #-27]
	mov	r3, #0
	strb	r3, [fp, #-28]
	mov	r0, #16
.LEHB0:
	bl	_Znwj
.LEHE0:
	mov	r4, r0
	mov	r0, r4
.LEHB1:
	bl	_ZN11cursorClassC1Ev
.LEHE1:
	ldr	r3, .L38
	str	r4, [r3]
	mov	r0, #24
.LEHB2:
	bl	_Znwj
.LEHE2:
	mov	r4, r0
	mov	r0, r4
.LEHB3:
	bl	_ZN13JoystickClassC1Ev
.LEHE3:
	ldr	r3, .L38+4
	str	r4, [r3]
.LEHB4:
	bl	_Z15InitializeMotorv
	ldr	r0, .L38+8
	bl	puts
	mov	r0, #1
	bl	sleep
.L29:
	ldr	r3, .L38+4
	ldr	r3, [r3]
	ldr	r4, .L38+12
	sub	r2, fp, #36
	mov	r0, r2
	mov	r1, r3
	bl	_ZN13JoystickClass9EventReadEv
	mov	r2, r4
	sub	r3, fp, #36
	ldmia	r3, {r0, r1}
	stmia	r2, {r0, r1}
	ldr	r3, .L38+12
	ldrb	r3, [r3, #6]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r3, .L38+12
	ldrb	r3, [r3, #7]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, .L38+12
	ldrh	r3, [r3, #4]
	sxth	r3, r3
	ldr	r0, .L38+16
	bl	printf
	ldr	r3, .L38+12
	ldrb	r3, [r3, #6]	@ zero_extendqisi2
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L2
	ldr	r3, .L38+12
	ldrb	r3, [r3, #7]	@ zero_extendqisi2
	cmp	r3, #2
	bne	.L3
	ldr	r3, .L38+12
	ldrh	r3, [r3, #4]
	sxth	r3, r3
	cmp	r3, #1
	bne	.L4
	ldrb	r3, [fp, #-25]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L4
	ldr	r0, .L38+20
	bl	puts
	ldr	r3, .L38
	ldr	r3, [r3]
	mov	r0, r3
	bl	_ZN11cursorClass5ClickEv
.L4:
	ldr	r3, .L38+12
	ldrh	r3, [r3, #4]
	strb	r3, [fp, #-25]
	b	.L2
.L3:
	ldr	r3, .L38+12
	ldrb	r3, [r3, #7]	@ zero_extendqisi2
	cmp	r3, #3
	bne	.L5
	ldr	r3, .L38+12
	ldrh	r3, [r3, #4]
	sxth	r3, r3
	cmp	r3, #1
	bne	.L6
	ldrb	r3, [fp, #-26]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L6
	ldr	r0, .L38+24
	bl	puts
	ldr	r3, .L38
	ldr	r3, [r3]
	mov	r0, r3
	bl	_ZN11cursorClass11DoubleClickEv
.L6:
	ldr	r3, .L38+12
	ldrh	r3, [r3, #4]
	strb	r3, [fp, #-26]
	b	.L2
.L5:
	ldr	r3, .L38+12
	ldrb	r3, [r3, #7]	@ zero_extendqisi2
	cmp	r3, #9
	bne	.L7
	ldr	r3, .L38+12
	ldrh	r3, [r3, #4]
	sxth	r3, r3
	cmp	r3, #1
	bne	.L8
	ldrb	r3, [fp, #-27]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L8
	ldr	r0, .L38+28
	bl	puts
	ldr	r3, .L38
	ldr	r3, [r3]
	mov	r0, r3
	mov	r1, #10
	mov	r2, #10
	bl	_ZN11cursorClass10MoveCursorEii
	ldr	r3, .L38
	ldr	r3, [r3]
	mov	r0, r3
	bl	_ZN11cursorClass5ClickEv
.L8:
	ldr	r3, .L38+12
	ldrh	r3, [r3, #4]
	strb	r3, [fp, #-27]
	b	.L2
.L7:
	ldr	r3, .L38+12
	ldrb	r3, [r3, #7]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L9
	ldr	r3, .L38+12
	ldrh	r3, [r3, #4]
	sxth	r3, r3
	cmp	r3, #1
	bne	.L10
	ldrb	r3, [fp, #-28]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L10
	ldr	r0, .L38+32
	bl	puts
	bl	_Z9Bluetoothv
.L10:
	ldr	r3, .L38+12
	ldrh	r3, [r3, #4]
	strb	r3, [fp, #-28]
	b	.L2
.L9:
	ldr	r3, .L38+12
	ldrb	r3, [r3, #7]	@ zero_extendqisi2
	cmp	r3, #8
	bne	.L2
	ldr	r3, .L38+12
	ldrh	r3, [r3, #4]
	sxth	r3, r3
	cmp	r3, #1
	bne	.L2
	ldr	r0, .L38+36
	bl	puts
	mov	r0, r0	@ nop
	ldr	r3, .L38+4
	ldr	r4, [r3]
	cmp	r4, #0
	beq	.L30
	b	.L36
.L2:
	ldr	r3, .L38+12
	ldrb	r3, [r3, #6]	@ zero_extendqisi2
	and	r3, r3, #2
	cmp	r3, #0
	beq	.L12
	ldr	r3, .L38+12
	ldrb	r3, [r3, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L13
	ldr	r3, .L38+12
	ldrb	r3, [r3, #7]	@ zero_extendqisi2
	cmp	r3, #4
	bne	.L14
.L13:
	ldr	r1, [fp, #-16]
	add	r3, r1, #1
	str	r3, [fp, #-16]
	ldr	r3, .L38+40
	umull	r2, r3, r3, r1
	mov	r2, r3, lsr #3
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #1
	rsb	r2, r3, r1
	cmp	r2, #0
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L15
	ldr	r3, .L38+12
	ldrh	r3, [r3, #4]
	sxth	r3, r3
	ldr	r2, .L38+44
	smull	r1, r2, r2, r3
	add	r2, r2, r3
	mov	r2, r2, asr #11
	mov	r3, r3, asr #31
	rsb	r3, r3, r2
	uxth	r3, r3
	sxth	r2, r3
	ldr	r3, .L38+48
	ldr	r3, [r3]
	add	r3, r2, r3
	ldr	r2, .L38+48
	str	r3, [r2]
	ldr	r3, .L38+48
	ldr	r3, [r3]
	cmp	r3, #0
	bge	.L16
	ldr	r3, .L38+48
	mov	r2, #0
	str	r2, [r3]
.L16:
	ldr	r3, .L38
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, .L38+48
	ldr	r3, [r3]
	cmp	r2, r3
	bge	.L17
	ldr	r3, .L38
	ldr	r3, [r3]
	ldr	r3, [r3]
	ldr	r2, .L38+48
	str	r3, [r2]
.L17:
	ldr	r3, .L38+52
	ldr	r3, [r3]
	mov	r2, r3
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	mov	r2, r3
	ldr	r3, .L38+52
	str	r2, [r3]
	ldr	r3, .L38+52
	ldr	r3, [r3]
	cmp	r3, #0
	bge	.L18
	ldr	r3, .L38+52
	mov	r2, #0
	str	r2, [r3]
.L18:
	ldr	r3, .L38
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, .L38+52
	ldr	r3, [r3]
	cmp	r2, r3
	bge	.L19
	ldr	r3, .L38
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	ldr	r2, .L38+52
	str	r3, [r2]
.L19:
	ldr	r3, .L38
	ldr	r1, [r3]
	ldr	r3, .L38+48
	ldr	r2, [r3]
	ldr	r3, .L38+52
	ldr	r3, [r3]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	_ZN11cursorClass10MoveCursorEii
	ldr	r3, .L38+12
	ldrh	r3, [r3, #4]
	sxth	r3, r3
	ldr	r2, .L38+44
	smull	r1, r2, r2, r3
	add	r2, r2, r3
	mov	r2, r2, asr #11
	mov	r3, r3, asr #31
	rsb	r3, r3, r2
	uxth	r3, r3
	sxth	r3, r3
	str	r3, [fp, #-20]
.L15:
	ldr	r3, .L38+12
	mov	r2, #0
	strh	r2, [r3, #4]	@ movhi
	mov	r3, #0
	cmp	r3, #0
	beq	.L14
	mov	r3, #0
	str	r3, [fp, #-20]
.L14:
	ldr	r3, .L38+12
	ldrb	r3, [r3, #7]	@ zero_extendqisi2
	cmp	r3, #1
	beq	.L20
	ldr	r3, .L38+12
	ldrb	r3, [r3, #7]	@ zero_extendqisi2
	cmp	r3, #5
	bne	.L21
.L20:
	ldr	r1, [fp, #-16]
	add	r3, r1, #1
	str	r3, [fp, #-16]
	ldr	r3, .L38+40
	umull	r2, r3, r3, r1
	mov	r2, r3, lsr #3
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #1
	rsb	r2, r3, r1
	cmp	r2, #0
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L22
	ldr	r3, .L38+12
	ldrh	r3, [r3, #4]
	sxth	r3, r3
	ldr	r2, .L38+44
	smull	r1, r2, r2, r3
	add	r2, r2, r3
	mov	r2, r2, asr #11
	mov	r3, r3, asr #31
	rsb	r3, r3, r2
	uxth	r3, r3
	sxth	r2, r3
	ldr	r3, .L38+52
	ldr	r3, [r3]
	add	r3, r2, r3
	ldr	r2, .L38+52
	str	r3, [r2]
	ldr	r3, .L38+52
	ldr	r3, [r3]
	cmp	r3, #0
	bge	.L23
	ldr	r3, .L38+52
	mov	r2, #0
	str	r2, [r3]
.L23:
	ldr	r3, .L38
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, .L38+52
	ldr	r3, [r3]
	cmp	r2, r3
	bge	.L24
	ldr	r3, .L38
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	ldr	r2, .L38+52
	str	r3, [r2]
.L24:
	ldr	r3, .L38+48
	ldr	r3, [r3]
	mov	r2, r3
	ldr	r3, [fp, #-20]
	add	r3, r2, r3
	mov	r2, r3
	ldr	r3, .L38+48
	str	r2, [r3]
	ldr	r3, .L38+48
	ldr	r3, [r3]
	cmp	r3, #0
	bge	.L25
	ldr	r3, .L38+48
	mov	r2, #0
	str	r2, [r3]
.L25:
	ldr	r3, .L38
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, .L38+48
	ldr	r3, [r3]
	cmp	r2, r3
	bge	.L26
	ldr	r3, .L38
	ldr	r3, [r3]
	ldr	r3, [r3]
	ldr	r2, .L38+48
	str	r3, [r2]
.L26:
	ldr	r3, .L38
	ldr	r1, [r3]
	ldr	r3, .L38+48
	ldr	r2, [r3]
	ldr	r3, .L38+52
	ldr	r3, [r3]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	_ZN11cursorClass10MoveCursorEii
	ldr	r3, .L38+12
	ldrh	r3, [r3, #4]
	sxth	r3, r3
	ldr	r2, .L38+44
	smull	r1, r2, r2, r3
	add	r2, r2, r3
	mov	r2, r2, asr #11
	mov	r3, r3, asr #31
	rsb	r3, r3, r2
	uxth	r3, r3
	sxth	r3, r3
	str	r3, [fp, #-24]
.L22:
	ldr	r3, .L38+12
	mov	r2, #0
	strh	r2, [r3, #4]	@ movhi
	mov	r3, #0
	cmp	r3, #0
	beq	.L21
	mov	r3, #0
	str	r3, [fp, #-24]
.L21:
	ldr	r3, .L38+12
	ldrb	r3, [r3, #7]	@ zero_extendqisi2
	cmp	r3, #3
	bne	.L27
	ldr	r3, .L38+12
	ldrh	r3, [r3, #4]
	sxth	r3, r3
	cmp	r3, #0
	ble	.L28
	mov	r0, #26
	mov	r1, #0
	bl	gpioPWM
	ldr	r3, .L38+12
	ldrh	r3, [r3, #4]
	sxth	r3, r3
	mov	r0, #19
	mov	r1, r3
	bl	gpioPWM
	b	.L27
.L28:
	ldr	r3, .L38+12
	ldrh	r3, [r3, #4]
	sxth	r3, r3
	cmp	r3, #0
	bge	.L27
	ldr	r3, .L38+12
	ldrh	r3, [r3, #4]
	sxth	r3, r3
	rsb	r3, r3, #0
	mov	r0, #26
	mov	r1, r3
	bl	gpioPWM
	mov	r0, #19
	mov	r1, #0
	bl	gpioPWM
.L27:
	ldr	r3, .L38+12
	ldrb	r3, [r3, #7]	@ zero_extendqisi2
	cmp	r3, #1
.L12:
	mov	r0, #1000
	bl	usleep
	ldr	r3, .L38+56
	ldr	r3, [r3]
	mov	r0, r3
	bl	fflush
	b	.L29
.L36:
	mov	r0, r4
	bl	_ZN13JoystickClassD1Ev
	mov	r0, r4
	bl	_ZdlPv
.L30:
	bl	gpioTerminate
	mov	r3, #0
	b	.L37
.L34:
	mov	r0, r4
	bl	_ZdlPv
	bl	__cxa_end_cleanup
.L35:
	mov	r0, r4
	bl	_ZdlPv
	bl	__cxa_end_cleanup
.LEHE4:
.L37:
	mov	r0, r3
	sub	sp, fp, #8
	@ sp needed
	ldmfd	sp!, {r4, fp, pc}
.L39:
	.align	2
.L38:
	.word	MousePtr
	.word	js
	.word	.LC0
	.word	jsread
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.word	.LC5
	.word	.LC6
	.word	-858993459
	.word	-1609957215
	.word	xtemp
	.word	ytemp
	.word	stdout
	.global	__gxx_personality_v0
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA1070:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1070-.LLSDACSB1070
.LLSDACSB1070:
	.uleb128 .LEHB0-.LFB1070
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB1070
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L34-.LFB1070
	.uleb128 0
	.uleb128 .LEHB2-.LFB1070
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB1070
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L35-.LFB1070
	.uleb128 0
	.uleb128 .LEHB4-.LFB1070
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE1070:
	.text
	.fnend
	.size	main, .-main
	.align	2
	.global	_Z15InitializeMotorv
	.type	_Z15InitializeMotorv, %function
_Z15InitializeMotorv:
	.fnstart
.LFB1071:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	bl	gpioInitialise
	mov	r0, #26
	mov	r1, #60
	bl	gpioSetPWMfrequency
	mov	r0, #19
	mov	r1, #60
	bl	gpioSetPWMfrequency
	mov	r0, #26
	ldr	r1, .L41
	bl	gpioSetPWMrange
	mov	r0, #19
	ldr	r1, .L41
	bl	gpioSetPWMrange
	mov	r0, #26
	mov	r1, #0
	bl	gpioPWM
	mov	r0, #19
	mov	r1, #0
	bl	gpioPWM
	ldmfd	sp!, {fp, pc}
.L42:
	.align	2
.L41:
	.word	32767
	.fnend
	.size	_Z15InitializeMotorv, .-_Z15InitializeMotorv
	.section	.rodata
	.align	2
.LC7:
	.ascii	"accepted connection from %s\012\000"
	.align	2
.LC8:
	.ascii	"[%s]\012\000"
	.align	2
.LC9:
	.ascii	"R\000"
	.text
	.align	2
	.global	_Z9Bluetoothv
	.type	_Z9Bluetoothv, %function
_Z9Bluetoothv:
	.fnstart
.LFB1072:
	@ args = 0, pretend = 0, frame = 1072
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #1072
	sub	sp, sp, #1072
	mov	r3, #0
	str	r3, [fp, #-24]
	mov	r3, #0
	strh	r3, [fp, #-20]	@ movhi
	sub	r3, fp, #36
	mov	r2, #0
	str	r2, [r3]
	add	r3, r3, #4
	mov	r2, #0
	str	r2, [r3]
	add	r3, r3, #4
	mov	r2, #0
	strh	r2, [r3]	@ movhi
	add	r3, r3, #2
	sub	r3, fp, #48
	mov	r2, #0
	str	r2, [r3]
	add	r3, r3, #4
	mov	r2, #0
	str	r2, [r3]
	add	r3, r3, #4
	mov	r2, #0
	strh	r2, [r3]	@ movhi
	add	r3, r3, #2
	sub	r3, fp, #1072
	sub	r3, r3, #4
	mov	r2, #1024
	mov	r0, r3
	mov	r1, #0
	bl	memset
	mov	r3, #10
	str	r3, [fp, #-52]
	mov	r0, #31
	mov	r1, #1
	mov	r2, #3
	bl	socket
	str	r0, [fp, #-8]
	mov	r3, #31
	strh	r3, [fp, #-36]	@ movhi
	sub	r3, fp, #34
	sub	r2, fp, #24
	ldr	r0, [r2]	@ unaligned
	str	r0, [r3]	@ unaligned
	ldrh	r2, [r2, #4]	@ unaligned
	strh	r2, [r3, #4]	@ unaligned
	mov	r3, #1
	strb	r3, [fp, #-28]
	sub	r3, fp, #36
	ldr	r0, [fp, #-8]
	mov	r1, r3
	mov	r2, #10
	bl	bind
	ldr	r0, [fp, #-8]
	mov	r1, #1
	bl	listen
	sub	r2, fp, #48
	sub	r3, fp, #52
	ldr	r0, [fp, #-8]
	mov	r1, r2
	mov	r2, r3
	bl	accept
	mov	r3, r0
	str	r3, [fp, #-12]
	sub	r3, fp, #48
	add	r2, r3, #2
	sub	r3, fp, #1072
	sub	r3, r3, #4
	mov	r0, r2
	mov	r1, r3
	bl	ba2str
	ldr	r3, .L57
	ldr	r2, [r3]
	sub	r3, fp, #1072
	sub	r3, r3, #4
	mov	r0, r2
	ldr	r1, .L57+4
	mov	r2, r3
	bl	fprintf
	sub	r3, fp, #1072
	sub	r3, r3, #4
	mov	r0, r3
	mov	r1, #0
	mov	r2, #1024
	bl	memset
	b	.L44
.L56:
	sub	r3, fp, #1072
	sub	r3, r3, #4
	ldr	r0, [fp, #-12]
	mov	r1, r3
	mov	r2, #1024
	bl	read
	mov	r3, r0
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	ble	.L44
	sub	r3, fp, #1072
	sub	r3, r3, #4
	ldr	r0, .L57+8
	mov	r1, r3
	bl	printf
	sub	r3, fp, #1072
	sub	r3, r3, #4
	mov	r0, r3
	mov	r1, #49
	bl	strchr
	mov	r3, r0
	cmp	r3, #0
	beq	.L45
	ldr	r3, .L57+12
	ldr	r3, [r3]
	sub	r3, r3, #10
	ldr	r2, .L57+12
	str	r3, [r2]
	ldr	r3, .L57+12
	ldr	r3, [r3]
	cmp	r3, #0
	bge	.L46
	ldr	r3, .L57+12
	mov	r2, #0
	str	r2, [r3]
.L46:
	ldr	r3, .L57+16
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, .L57+12
	ldr	r3, [r3]
	cmp	r2, r3
	bge	.L47
	ldr	r3, .L57+16
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	ldr	r2, .L57+12
	str	r3, [r2]
.L47:
	ldr	r3, .L57+16
	ldr	r1, [r3]
	ldr	r3, .L57+20
	ldr	r2, [r3]
	ldr	r3, .L57+12
	ldr	r3, [r3]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	_ZN11cursorClass10MoveCursorEii
.L45:
	sub	r3, fp, #1072
	sub	r3, r3, #4
	mov	r0, r3
	mov	r1, #50
	bl	strchr
	mov	r3, r0
	cmp	r3, #0
	beq	.L48
	ldr	r3, .L57+20
	ldr	r3, [r3]
	add	r3, r3, #10
	ldr	r2, .L57+20
	str	r3, [r2]
	ldr	r3, .L57+20
	ldr	r3, [r3]
	cmp	r3, #0
	bge	.L49
	ldr	r3, .L57+20
	mov	r2, #0
	str	r2, [r3]
.L49:
	ldr	r3, .L57+16
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, .L57+20
	ldr	r3, [r3]
	cmp	r2, r3
	bge	.L50
	ldr	r3, .L57+16
	ldr	r3, [r3]
	ldr	r3, [r3]
	ldr	r2, .L57+20
	str	r3, [r2]
.L50:
	ldr	r3, .L57+16
	ldr	r1, [r3]
	ldr	r3, .L57+20
	ldr	r2, [r3]
	ldr	r3, .L57+12
	ldr	r3, [r3]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	_ZN11cursorClass10MoveCursorEii
.L48:
	sub	r3, fp, #1072
	sub	r3, r3, #4
	mov	r0, r3
	mov	r1, #51
	bl	strchr
	mov	r3, r0
	cmp	r3, #0
	beq	.L51
	ldr	r3, .L57+12
	ldr	r3, [r3]
	add	r3, r3, #10
	ldr	r2, .L57+12
	str	r3, [r2]
	ldr	r3, .L57+12
	ldr	r3, [r3]
	cmp	r3, #0
	bge	.L52
	ldr	r3, .L57+12
	mov	r2, #0
	str	r2, [r3]
.L52:
	ldr	r3, .L57+16
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, .L57+12
	ldr	r3, [r3]
	cmp	r2, r3
	bge	.L53
	ldr	r3, .L57+16
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	ldr	r2, .L57+12
	str	r3, [r2]
.L53:
	ldr	r3, .L57+16
	ldr	r1, [r3]
	ldr	r3, .L57+20
	ldr	r2, [r3]
	ldr	r3, .L57+12
	ldr	r3, [r3]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	_ZN11cursorClass10MoveCursorEii
.L51:
	sub	r3, fp, #1072
	sub	r3, r3, #4
	mov	r0, r3
	mov	r1, #52
	bl	strchr
	mov	r3, r0
	cmp	r3, #0
	beq	.L44
	ldr	r3, .L57+20
	ldr	r3, [r3]
	sub	r3, r3, #10
	ldr	r2, .L57+20
	str	r3, [r2]
	ldr	r3, .L57+20
	ldr	r3, [r3]
	cmp	r3, #0
	bge	.L54
	ldr	r3, .L57+20
	mov	r2, #0
	str	r2, [r3]
.L54:
	ldr	r3, .L57+16
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, .L57+20
	ldr	r3, [r3]
	cmp	r2, r3
	bge	.L55
	ldr	r3, .L57+16
	ldr	r3, [r3]
	ldr	r3, [r3]
	ldr	r2, .L57+20
	str	r3, [r2]
.L55:
	ldr	r3, .L57+16
	ldr	r1, [r3]
	ldr	r3, .L57+20
	ldr	r2, [r3]
	ldr	r3, .L57+12
	ldr	r3, [r3]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	_ZN11cursorClass10MoveCursorEii
.L44:
	sub	r3, fp, #1072
	sub	r3, r3, #4
	mov	r0, r3
	ldr	r1, .L57+24
	bl	strstr
	mov	r3, r0
	cmp	r3, #0
	beq	.L56
	ldr	r0, [fp, #-12]
	bl	close
	ldr	r0, [fp, #-8]
	bl	close
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
.L58:
	.align	2
.L57:
	.word	stderr
	.word	.LC7
	.word	.LC8
	.word	ytemp
	.word	MousePtr
	.word	xtemp
	.word	.LC9
	.fnend
	.size	_Z9Bluetoothv, .-_Z9Bluetoothv
	.align	2
	.type	_Z41__static_initialization_and_destruction_0ii, %function
_Z41__static_initialization_and_destruction_0ii:
	.fnstart
.LFB1073:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	ldr	r3, [fp, #-8]
	cmp	r3, #1
	bne	.L59
	ldr	r3, [fp, #-12]
	ldr	r2, .L61
	cmp	r3, r2
	bne	.L59
	ldr	r0, .L61+4
	bl	_ZNSt8ios_base4InitC1Ev
	ldr	r0, .L61+4
	ldr	r1, .L61+8
	ldr	r2, .L61+12
	bl	__aeabi_atexit
.L59:
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
.L62:
	.align	2
.L61:
	.word	65535
	.word	_ZStL8__ioinit
	.word	_ZNSt8ios_base4InitD1Ev
	.word	__dso_handle
	.cantunwind
	.fnend
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.align	2
	.type	_GLOBAL__sub_I_MousePtr, %function
_GLOBAL__sub_I_MousePtr:
	.fnstart
.LFB1074:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	mov	r0, #1
	ldr	r1, .L64
	bl	_Z41__static_initialization_and_destruction_0ii
	ldmfd	sp!, {fp, pc}
.L65:
	.align	2
.L64:
	.word	65535
	.cantunwind
	.fnend
	.size	_GLOBAL__sub_I_MousePtr, .-_GLOBAL__sub_I_MousePtr
	.section	.init_array,"aw"
	.align	2
	.word	_GLOBAL__sub_I_MousePtr
	.hidden	__dso_handle
	.ident	"GCC: (Raspbian 4.9.2-10) 4.9.2"
	.section	.note.GNU-stack,"",%progbits
