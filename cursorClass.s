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
	.file	"cursorClass.cpp"
	.section	.rodata
	.align	2
.LC0:
	.ascii	"max width %d, \000"
	.align	2
.LC1:
	.ascii	"max height %d. \000"
	.text
	.align	2
	.global	_ZN11cursorClassC2Ev
	.type	_ZN11cursorClassC2Ev, %function
_ZN11cursorClassC2Ev:
	.fnstart
.LFB3:
	@ args = 0, pretend = 0, frame = 104
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #104
	sub	sp, sp, #104
	str	r0, [fp, #-104]
	mov	r0, #0
	bl	XOpenDisplay
	mov	r2, r0
	ldr	r3, [fp, #-104]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-104]
	ldr	r3, [r3, #8]
	mov	r0, r3
	mov	r1, #0
	bl	XRootWindow
	mov	r2, r0
	ldr	r3, [fp, #-104]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-104]
	ldr	r2, [r3, #8]
	ldr	r3, [fp, #-104]
	ldr	r3, [r3, #12]
	mov	r0, r2
	mov	r1, r3
	mov	r2, #2
	bl	XSelectInput
	ldr	r3, [fp, #-104]
	ldr	r1, [r3, #8]
	ldr	r3, [fp, #-104]
	ldr	r2, [r3, #12]
	sub	r3, fp, #96
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	XGetWindowAttributes
	ldr	r2, [fp, #-88]
	ldr	r3, [fp, #-104]
	str	r2, [r3]
	ldr	r2, [fp, #-84]
	ldr	r3, [fp, #-104]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-104]
	ldr	r3, [r3]
	ldr	r0, .L4
	mov	r1, r3
	bl	printf
	ldr	r3, [fp, #-104]
	ldr	r3, [r3, #4]
	ldr	r0, .L4+4
	mov	r1, r3
	bl	printf
	ldr	r3, [fp, #-104]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
.L5:
	.align	2
.L4:
	.word	.LC0
	.word	.LC1
	.fnend
	.size	_ZN11cursorClassC2Ev, .-_ZN11cursorClassC2Ev
	.global	_ZN11cursorClassC1Ev
_ZN11cursorClassC1Ev = _ZN11cursorClassC2Ev
	.align	2
	.global	_ZN11cursorClassD2Ev
	.type	_ZN11cursorClassD2Ev, %function
_ZN11cursorClassD2Ev:
	.fnstart
.LFB6:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	mov	r2, #0
	str	r2, [r3, #8]
	ldr	r3, [fp, #-8]
	mov	r2, #0
	str	r2, [r3, #12]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN11cursorClassD2Ev, .-_ZN11cursorClassD2Ev
	.global	_ZN11cursorClassD1Ev
_ZN11cursorClassD1Ev = _ZN11cursorClassD2Ev
	.align	2
	.global	_ZN11cursorClass10MoveCursorEii
	.type	_ZN11cursorClass10MoveCursorEii, %function
_ZN11cursorClass10MoveCursorEii:
	.fnstart
.LFB8:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #40
	sub	sp, sp, #40
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	ldr	r3, [fp, #-8]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	beq	.L9
	ldr	r3, [fp, #-8]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	beq	.L9
	ldr	r3, [fp, #-8]
	ldr	r1, [r3, #8]
	ldr	r3, [fp, #-8]
	ldr	r2, [r3, #12]
	mov	r3, #0
	str	r3, [sp]
	mov	r3, #0
	str	r3, [sp, #4]
	mov	r3, #0
	str	r3, [sp, #8]
	ldr	r3, [fp, #-12]
	str	r3, [sp, #12]
	ldr	r3, [fp, #-16]
	str	r3, [sp, #16]
	mov	r0, r1
	mov	r1, #0
	mov	r3, #0
	bl	XWarpPointer
	ldr	r3, [fp, #-8]
	ldr	r3, [r3, #8]
	mov	r0, r3
	bl	XFlush
.L9:
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.fnend
	.size	_ZN11cursorClass10MoveCursorEii, .-_ZN11cursorClass10MoveCursorEii
	.align	2
	.global	_ZN11cursorClass5ClickEv
	.type	_ZN11cursorClass5ClickEv, %function
_ZN11cursorClass5ClickEv:
	.fnstart
.LFB9:
	@ args = 0, pretend = 0, frame = 112
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #136
	sub	sp, sp, #136
	str	r0, [fp, #-112]
	mov	r3, #1
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-112]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	beq	.L11
	sub	r3, fp, #104
	mov	r0, r3
	mov	r1, #0
	mov	r2, #96
	bl	memset
	mov	r3, #4
	str	r3, [fp, #-104]
	ldr	r3, [fp, #-8]
	str	r3, [fp, #-52]
	mov	r3, #1
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-112]
	ldr	r0, [r3, #8]
	ldr	r3, [fp, #-112]
	ldr	r1, [r3, #12]
	sub	r3, fp, #104
	add	r2, r3, #20
	sub	r3, fp, #104
	add	ip, r3, #16
	sub	r3, fp, #104
	add	r3, r3, #40
	str	r3, [sp]
	sub	r3, fp, #104
	add	r3, r3, #44
	str	r3, [sp, #4]
	sub	r3, fp, #104
	add	r3, r3, #32
	str	r3, [sp, #8]
	sub	r3, fp, #104
	add	r3, r3, #36
	str	r3, [sp, #12]
	sub	r3, fp, #104
	add	r3, r3, #48
	str	r3, [sp, #16]
	mov	r3, ip
	bl	XQueryPointer
	ldr	r3, [fp, #-88]
	str	r3, [fp, #-80]
	b	.L13
.L14:
	ldr	r3, [fp, #-80]
	str	r3, [fp, #-88]
	ldr	r3, [fp, #-112]
	ldr	r0, [r3, #8]
	ldr	r1, [fp, #-88]
	sub	r3, fp, #104
	add	r2, r3, #20
	sub	r3, fp, #104
	add	ip, r3, #24
	sub	r3, fp, #104
	add	r3, r3, #40
	str	r3, [sp]
	sub	r3, fp, #104
	add	r3, r3, #44
	str	r3, [sp, #4]
	sub	r3, fp, #104
	add	r3, r3, #32
	str	r3, [sp, #8]
	sub	r3, fp, #104
	add	r3, r3, #36
	str	r3, [sp, #12]
	sub	r3, fp, #104
	add	r3, r3, #48
	str	r3, [sp, #16]
	mov	r3, ip
	bl	XQueryPointer
.L13:
	ldr	r3, [fp, #-80]
	cmp	r3, #0
	bne	.L14
	ldr	r3, [fp, #-112]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-88]
	sub	r3, fp, #104
	str	r3, [sp]
	mov	r0, r1
	mov	r1, r2
	mov	r2, #1
	ldr	r3, .L15
	bl	XSendEvent
	ldr	r3, [fp, #-112]
	ldr	r3, [r3, #8]
	mov	r0, r3
	bl	XFlush
	ldr	r0, .L15+4
	bl	usleep
	mov	r3, #5
	str	r3, [fp, #-104]
	mov	r3, #256
	str	r3, [fp, #-56]
	ldr	r3, [fp, #-112]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-88]
	sub	r3, fp, #104
	str	r3, [sp]
	mov	r0, r1
	mov	r1, r2
	mov	r2, #1
	ldr	r3, .L15
	bl	XSendEvent
	ldr	r3, [fp, #-112]
	ldr	r3, [r3, #8]
	mov	r0, r3
	bl	XFlush
.L11:
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
.L16:
	.align	2
.L15:
	.word	4095
	.word	100000
	.fnend
	.size	_ZN11cursorClass5ClickEv, .-_ZN11cursorClass5ClickEv
	.align	2
	.global	_ZN11cursorClass11DoubleClickEv
	.type	_ZN11cursorClass11DoubleClickEv, %function
_ZN11cursorClass11DoubleClickEv:
	.fnstart
.LFB10:
	@ args = 0, pretend = 0, frame = 112
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #136
	sub	sp, sp, #136
	str	r0, [fp, #-112]
	mov	r3, #1
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-112]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	beq	.L17
	sub	r3, fp, #104
	mov	r0, r3
	mov	r1, #0
	mov	r2, #96
	bl	memset
	mov	r3, #4
	str	r3, [fp, #-104]
	ldr	r3, [fp, #-8]
	str	r3, [fp, #-52]
	mov	r3, #1
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-112]
	ldr	r0, [r3, #8]
	ldr	r3, [fp, #-112]
	ldr	r1, [r3, #12]
	sub	r3, fp, #104
	add	r2, r3, #20
	sub	r3, fp, #104
	add	ip, r3, #16
	sub	r3, fp, #104
	add	r3, r3, #40
	str	r3, [sp]
	sub	r3, fp, #104
	add	r3, r3, #44
	str	r3, [sp, #4]
	sub	r3, fp, #104
	add	r3, r3, #32
	str	r3, [sp, #8]
	sub	r3, fp, #104
	add	r3, r3, #36
	str	r3, [sp, #12]
	sub	r3, fp, #104
	add	r3, r3, #48
	str	r3, [sp, #16]
	mov	r3, ip
	bl	XQueryPointer
	ldr	r3, [fp, #-88]
	str	r3, [fp, #-80]
	b	.L19
.L20:
	ldr	r3, [fp, #-80]
	str	r3, [fp, #-88]
	ldr	r3, [fp, #-112]
	ldr	r0, [r3, #8]
	ldr	r1, [fp, #-88]
	sub	r3, fp, #104
	add	r2, r3, #20
	sub	r3, fp, #104
	add	ip, r3, #24
	sub	r3, fp, #104
	add	r3, r3, #40
	str	r3, [sp]
	sub	r3, fp, #104
	add	r3, r3, #44
	str	r3, [sp, #4]
	sub	r3, fp, #104
	add	r3, r3, #32
	str	r3, [sp, #8]
	sub	r3, fp, #104
	add	r3, r3, #36
	str	r3, [sp, #12]
	sub	r3, fp, #104
	add	r3, r3, #48
	str	r3, [sp, #16]
	mov	r3, ip
	bl	XQueryPointer
.L19:
	ldr	r3, [fp, #-80]
	cmp	r3, #0
	bne	.L20
	ldr	r3, [fp, #-112]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-88]
	sub	r3, fp, #104
	str	r3, [sp]
	mov	r0, r1
	mov	r1, r2
	mov	r2, #1
	ldr	r3, .L21
	bl	XSendEvent
	ldr	r3, [fp, #-112]
	ldr	r3, [r3, #8]
	mov	r0, r3
	bl	XFlush
	ldr	r0, .L21+4
	bl	usleep
	mov	r3, #5
	str	r3, [fp, #-104]
	mov	r3, #256
	str	r3, [fp, #-56]
	ldr	r3, [fp, #-112]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-88]
	sub	r3, fp, #104
	str	r3, [sp]
	mov	r0, r1
	mov	r1, r2
	mov	r2, #1
	ldr	r3, .L21
	bl	XSendEvent
	ldr	r3, [fp, #-112]
	ldr	r3, [r3, #8]
	mov	r0, r3
	bl	XFlush
	ldr	r0, .L21+4
	bl	usleep
	mov	r3, #4
	str	r3, [fp, #-104]
	mov	r3, #256
	str	r3, [fp, #-56]
	ldr	r3, [fp, #-112]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-88]
	sub	r3, fp, #104
	str	r3, [sp]
	mov	r0, r1
	mov	r1, r2
	mov	r2, #1
	ldr	r3, .L21
	bl	XSendEvent
	ldr	r3, [fp, #-112]
	ldr	r3, [r3, #8]
	mov	r0, r3
	bl	XFlush
	ldr	r0, .L21+4
	bl	usleep
	mov	r3, #5
	str	r3, [fp, #-104]
	mov	r3, #256
	str	r3, [fp, #-56]
	ldr	r3, [fp, #-112]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-88]
	sub	r3, fp, #104
	str	r3, [sp]
	mov	r0, r1
	mov	r1, r2
	mov	r2, #1
	ldr	r3, .L21
	bl	XSendEvent
	ldr	r3, [fp, #-112]
	ldr	r3, [r3, #8]
	mov	r0, r3
	bl	XFlush
.L17:
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
.L22:
	.align	2
.L21:
	.word	4095
	.word	100000
	.fnend
	.size	_ZN11cursorClass11DoubleClickEv, .-_ZN11cursorClass11DoubleClickEv
	.ident	"GCC: (Raspbian 4.9.2-10) 4.9.2"
	.section	.note.GNU-stack,"",%progbits
