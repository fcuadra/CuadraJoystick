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
	.file	"joystickClass.cpp"
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,4
	.section	.rodata
	.align	2
.LC0:
	.ascii	"/dev/input/js0\000"
	.align	2
.LC1:
	.ascii	"%d\000"
	.text
	.align	2
	.global	_ZN13JoystickClassC2Ev
	.type	_ZN13JoystickClassC2Ev, %function
_ZN13JoystickClassC2Ev:
	.fnstart
.LFB1054:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #8
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	ldr	r0, .L4
	mov	r1, #0
	bl	open
	mov	r2, r0
	ldr	r3, [fp, #-8]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-8]
	ldr	r1, [r3, #12]
	mov	r3, #65536
	orr	r3, r3, #27136
	orr	r3, r3, #-2147483631
	ldr	r2, [fp, #-8]
	add	r2, r2, #8
	mov	r0, r1
	mov	r1, r3
	bl	ioctl
	ldr	r3, [fp, #-8]
	ldrb	r3, [r3, #8]	@ zero_extendqisi2
	ldr	r0, .L4+4
	mov	r1, r3
	bl	printf
	mov	r0, #1
	bl	sleep
	ldr	r3, [fp, #-8]
	ldr	r3, [r3, #12]
	mov	r0, r3
	mov	r1, #4
	mov	r2, #2048
	bl	fcntl
	ldr	r3, [fp, #-8]
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
	.size	_ZN13JoystickClassC2Ev, .-_ZN13JoystickClassC2Ev
	.global	_ZN13JoystickClassC1Ev
_ZN13JoystickClassC1Ev = _ZN13JoystickClassC2Ev
	.align	2
	.global	_ZN13JoystickClassD2Ev
	.type	_ZN13JoystickClassD2Ev, %function
_ZN13JoystickClassD2Ev:
	.fnstart
.LFB1057:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #8
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	ldr	r3, [r3, #12]
	mov	r0, r3
	bl	close
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.fnend
	.size	_ZN13JoystickClassD2Ev, .-_ZN13JoystickClassD2Ev
	.global	_ZN13JoystickClassD1Ev
_ZN13JoystickClassD1Ev = _ZN13JoystickClassD2Ev
	.align	2
	.global	_ZN13JoystickClass9EventReadEv
	.type	_ZN13JoystickClass9EventReadEv, %function
_ZN13JoystickClass9EventReadEv:
	.fnstart
.LFB1059:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #8
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	ldr	r3, [fp, #-12]
	ldr	r2, [r3, #12]
	ldr	r3, [fp, #-12]
	mov	r0, r2
	mov	r1, r3
	mov	r2, #8
	bl	read
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-12]
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r0, [fp, #-8]
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.fnend
	.size	_ZN13JoystickClass9EventReadEv, .-_ZN13JoystickClass9EventReadEv
	.align	2
	.type	_Z41__static_initialization_and_destruction_0ii, %function
_Z41__static_initialization_and_destruction_0ii:
	.fnstart
.LFB1060:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	ldr	r3, [fp, #-8]
	cmp	r3, #1
	bne	.L11
	ldr	r3, [fp, #-12]
	ldr	r2, .L13
	cmp	r3, r2
	bne	.L11
	ldr	r0, .L13+4
	bl	_ZNSt8ios_base4InitC1Ev
	ldr	r0, .L13+4
	ldr	r1, .L13+8
	ldr	r2, .L13+12
	bl	__aeabi_atexit
.L11:
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
.L14:
	.align	2
.L13:
	.word	65535
	.word	_ZStL8__ioinit
	.word	_ZNSt8ios_base4InitD1Ev
	.word	__dso_handle
	.cantunwind
	.fnend
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.align	2
	.type	_GLOBAL__sub_I__ZN13JoystickClassC2Ev, %function
_GLOBAL__sub_I__ZN13JoystickClassC2Ev:
	.fnstart
.LFB1061:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	mov	r0, #1
	ldr	r1, .L16
	bl	_Z41__static_initialization_and_destruction_0ii
	ldmfd	sp!, {fp, pc}
.L17:
	.align	2
.L16:
	.word	65535
	.cantunwind
	.fnend
	.size	_GLOBAL__sub_I__ZN13JoystickClassC2Ev, .-_GLOBAL__sub_I__ZN13JoystickClassC2Ev
	.section	.init_array,"aw"
	.align	2
	.word	_GLOBAL__sub_I__ZN13JoystickClassC2Ev
	.hidden	__dso_handle
	.ident	"GCC: (Raspbian 4.9.2-10) 4.9.2"
	.section	.note.GNU-stack,"",%progbits
