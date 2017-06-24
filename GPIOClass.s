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
	.file	"GPIOClass.cpp"
	.section	.text._ZNSt11char_traitsIcE6lengthEPKc,"axG",%progbits,_ZNSt11char_traitsIcE6lengthEPKc,comdat
	.align	2
	.weak	_ZNSt11char_traitsIcE6lengthEPKc
	.type	_ZNSt11char_traitsIcE6lengthEPKc, %function
_ZNSt11char_traitsIcE6lengthEPKc:
	.fnstart
.LFB238:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	ldr	r0, [fp, #-8]
	bl	strlen
	mov	r3, r0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.cantunwind
	.fnend
	.size	_ZNSt11char_traitsIcE6lengthEPKc, .-_ZNSt11char_traitsIcE6lengthEPKc
	.section	.text._ZStorSt13_Ios_OpenmodeS_,"axG",%progbits,_ZStorSt13_Ios_OpenmodeS_,comdat
	.align	2
	.weak	_ZStorSt13_Ios_OpenmodeS_
	.type	_ZStorSt13_Ios_OpenmodeS_, %function
_ZStorSt13_Ios_OpenmodeS_:
	.fnstart
.LFB644:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	orr	r3, r2, r3
	mov	r0, r3
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZStorSt13_Ios_OpenmodeS_, .-_ZStorSt13_Ios_OpenmodeS_
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,4
	.section	.rodata
	.align	2
.LC0:
	.ascii	"4\000"
	.text
	.align	2
	.global	_ZN9GPIOClassC2Ev
	.type	_ZN9GPIOClassC2Ev, %function
_ZN9GPIOClassC2Ev:
	.fnstart
.LFB1085:
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
	mov	r0, r3
.LEHB0:
	bl	_ZNSsC1Ev
.LEHE0:
	ldr	r3, [fp, #-8]
	mov	r0, r3
	ldr	r1, .L11
.LEHB1:
	bl	_ZNSsaSEPKc
.LEHE1:
	ldr	r3, [fp, #-8]
	b	.L10
.L9:
	ldr	r3, [fp, #-8]
	mov	r0, r3
	bl	_ZNSsD1Ev
.LEHB2:
	bl	__cxa_end_cleanup
.LEHE2:
.L10:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
.L12:
	.align	2
.L11:
	.word	.LC0
	.global	__gxx_personality_v0
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA1085:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1085-.LLSDACSB1085
.LLSDACSB1085:
	.uleb128 .LEHB0-.LFB1085
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB1085
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L9-.LFB1085
	.uleb128 0
	.uleb128 .LEHB2-.LFB1085
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE1085:
	.text
	.fnend
	.size	_ZN9GPIOClassC2Ev, .-_ZN9GPIOClassC2Ev
	.global	_ZN9GPIOClassC1Ev
_ZN9GPIOClassC1Ev = _ZN9GPIOClassC2Ev
	.align	2
	.global	_ZN9GPIOClassC2ESs
	.type	_ZN9GPIOClassC2ESs, %function
_ZN9GPIOClassC2ESs:
	.fnstart
.LFB1088:
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
	ldr	r3, [fp, #-8]
	mov	r0, r3
.LEHB3:
	bl	_ZNSsC1Ev
.LEHE3:
	ldr	r3, [fp, #-8]
	mov	r0, r3
	ldr	r1, [fp, #-12]
.LEHB4:
	bl	_ZNSsaSERKSs
.LEHE4:
	ldr	r3, [fp, #-8]
	b	.L18
.L17:
	ldr	r3, [fp, #-8]
	mov	r0, r3
	bl	_ZNSsD1Ev
.LEHB5:
	bl	__cxa_end_cleanup
.LEHE5:
.L18:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA1088:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1088-.LLSDACSB1088
.LLSDACSB1088:
	.uleb128 .LEHB3-.LFB1088
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB4-.LFB1088
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L17-.LFB1088
	.uleb128 0
	.uleb128 .LEHB5-.LFB1088
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSE1088:
	.text
	.fnend
	.size	_ZN9GPIOClassC2ESs, .-_ZN9GPIOClassC2ESs
	.global	_ZN9GPIOClassC1ESs
_ZN9GPIOClassC1ESs = _ZN9GPIOClassC2ESs
	.section	.rodata
	.align	2
.LC1:
	.ascii	"/sys/class/gpio/export\000"
	.align	2
.LC2:
	.ascii	"ERROR:  Unable to export GPIO\000"
	.align	2
.LC3:
	.ascii	".\000"
	.text
	.align	2
	.global	_ZN9GPIOClass11export_gpioEv
	.type	_ZN9GPIOClass11export_gpioEv, %function
_ZN9GPIOClass11export_gpioEv:
	.fnstart
.LFB1090:
	@ args = 0, pretend = 0, frame = 296
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, fp, lr}
	.save {r4, fp, lr}
	.setfp fp, sp, #8
	add	fp, sp, #8
	.pad #300
	sub	sp, sp, #300
	str	r0, [fp, #-304]
	sub	r3, fp, #16
	mov	r0, r3
	bl	_ZNSaIcEC1Ev
	sub	r2, fp, #20
	sub	r3, fp, #16
	mov	r0, r2
	ldr	r1, .L30
	mov	r2, r3
.LEHB6:
	bl	_ZNSsC1EPKcRKSaIcE
.LEHE6:
	sub	r3, fp, #16
	mov	r0, r3
	bl	_ZNSaIcED1Ev
	sub	r3, fp, #20
	mov	r0, r3
.LEHB7:
	bl	_ZNKSs5c_strEv
	mov	r4, r0
	mov	r0, #16
	mov	r1, #32
	bl	_ZStorSt13_Ios_OpenmodeS_
	mov	r2, r0
	sub	r3, fp, #296
	mov	r0, r3
	mov	r1, r4
	bl	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode
.LEHE7:
	sub	r3, fp, #296
	add	r3, r3, #140
	mov	r0, r3
.LEHB8:
	bl	_ZNKSt9basic_iosIcSt11char_traitsIcEEcvPvEv
	mov	r3, #0
	cmp	r3, #0
	beq	.L20
	ldr	r0, .L30+4
	ldr	r1, .L30+8
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	r2, r0
	ldr	r3, [fp, #-304]
	mov	r0, r2
	mov	r1, r3
	bl	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKSbIS4_S5_T1_E
	mov	r3, r0
	mov	r0, r3
	ldr	r1, .L30+12
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	r3, r0
	mov	r0, r3
	ldr	r1, .L30+16
	bl	_ZNSolsEPFRSoS_E
	mvn	r4, #0
	b	.L21
.L20:
	ldr	r3, [fp, #-304]
	sub	r2, fp, #296
	mov	r0, r2
	mov	r1, r3
	bl	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKSbIS4_S5_T1_E
	sub	r3, fp, #296
	mov	r0, r3
	bl	_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv
.LEHE8:
	mov	r4, #0
.L21:
	sub	r3, fp, #296
	mov	r0, r3
.LEHB9:
	bl	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
.LEHE9:
	sub	r3, fp, #20
	mov	r0, r3
.LEHB10:
	bl	_ZNSsD1Ev
	mov	r3, r4
	b	.L29
.L26:
	sub	r3, fp, #16
	mov	r0, r3
	bl	_ZNSaIcED1Ev
	bl	__cxa_end_cleanup
.LEHE10:
.L28:
	sub	r3, fp, #296
	mov	r0, r3
	bl	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
	b	.L25
.L27:
.L25:
	sub	r3, fp, #20
	mov	r0, r3
	bl	_ZNSsD1Ev
.LEHB11:
	bl	__cxa_end_cleanup
.LEHE11:
.L29:
	mov	r0, r3
	sub	sp, fp, #8
	@ sp needed
	ldmfd	sp!, {r4, fp, pc}
.L31:
	.align	2
.L30:
	.word	.LC1
	.word	_ZSt4cout
	.word	.LC2
	.word	.LC3
	.word	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA1090:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1090-.LLSDACSB1090
.LLSDACSB1090:
	.uleb128 .LEHB6-.LFB1090
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L26-.LFB1090
	.uleb128 0
	.uleb128 .LEHB7-.LFB1090
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L27-.LFB1090
	.uleb128 0
	.uleb128 .LEHB8-.LFB1090
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L28-.LFB1090
	.uleb128 0
	.uleb128 .LEHB9-.LFB1090
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L27-.LFB1090
	.uleb128 0
	.uleb128 .LEHB10-.LFB1090
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB11-.LFB1090
	.uleb128 .LEHE11-.LEHB11
	.uleb128 0
	.uleb128 0
.LLSDACSE1090:
	.text
	.fnend
	.size	_ZN9GPIOClass11export_gpioEv, .-_ZN9GPIOClass11export_gpioEv
	.section	.rodata
	.align	2
.LC4:
	.ascii	"/sys/class/gpio/unexport\000"
	.align	2
.LC5:
	.ascii	"ERROR: Unable to unexport GPIO\000"
	.text
	.align	2
	.global	_ZN9GPIOClass13unexport_gpioEv
	.type	_ZN9GPIOClass13unexport_gpioEv, %function
_ZN9GPIOClass13unexport_gpioEv:
	.fnstart
.LFB1091:
	@ args = 0, pretend = 0, frame = 296
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, fp, lr}
	.save {r4, fp, lr}
	.setfp fp, sp, #8
	add	fp, sp, #8
	.pad #300
	sub	sp, sp, #300
	str	r0, [fp, #-304]
	sub	r3, fp, #16
	mov	r0, r3
	bl	_ZNSaIcEC1Ev
	sub	r2, fp, #20
	sub	r3, fp, #16
	mov	r0, r2
	ldr	r1, .L42
	mov	r2, r3
.LEHB12:
	bl	_ZNSsC1EPKcRKSaIcE
.LEHE12:
	sub	r3, fp, #16
	mov	r0, r3
	bl	_ZNSaIcED1Ev
	sub	r3, fp, #20
	mov	r0, r3
.LEHB13:
	bl	_ZNKSs5c_strEv
	mov	r4, r0
	mov	r0, #16
	mov	r1, #32
	bl	_ZStorSt13_Ios_OpenmodeS_
	mov	r2, r0
	sub	r3, fp, #296
	mov	r0, r3
	mov	r1, r4
	bl	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode
.LEHE13:
	sub	r3, fp, #296
	add	r3, r3, #140
	mov	r0, r3
.LEHB14:
	bl	_ZNKSt9basic_iosIcSt11char_traitsIcEEcvPvEv
	mov	r3, #0
	cmp	r3, #0
	beq	.L33
	ldr	r0, .L42+4
	ldr	r1, .L42+8
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	r2, r0
	ldr	r3, [fp, #-304]
	mov	r0, r2
	mov	r1, r3
	bl	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKSbIS4_S5_T1_E
	mov	r3, r0
	mov	r0, r3
	ldr	r1, .L42+12
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	r3, r0
	mov	r0, r3
	ldr	r1, .L42+16
	bl	_ZNSolsEPFRSoS_E
.L33:
	ldr	r3, [fp, #-304]
	sub	r2, fp, #296
	mov	r0, r2
	mov	r1, r3
	bl	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKSbIS4_S5_T1_E
	sub	r3, fp, #296
	mov	r0, r3
	bl	_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv
.LEHE14:
	mov	r4, #0
	sub	r3, fp, #296
	mov	r0, r3
.LEHB15:
	bl	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
.LEHE15:
	sub	r3, fp, #20
	mov	r0, r3
.LEHB16:
	bl	_ZNSsD1Ev
	mov	r3, r4
	b	.L41
.L38:
	sub	r3, fp, #16
	mov	r0, r3
	bl	_ZNSaIcED1Ev
	bl	__cxa_end_cleanup
.LEHE16:
.L40:
	sub	r3, fp, #296
	mov	r0, r3
	bl	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
	b	.L37
.L39:
.L37:
	sub	r3, fp, #20
	mov	r0, r3
	bl	_ZNSsD1Ev
.LEHB17:
	bl	__cxa_end_cleanup
.LEHE17:
.L41:
	mov	r0, r3
	sub	sp, fp, #8
	@ sp needed
	ldmfd	sp!, {r4, fp, pc}
.L43:
	.align	2
.L42:
	.word	.LC4
	.word	_ZSt4cout
	.word	.LC5
	.word	.LC3
	.word	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA1091:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1091-.LLSDACSB1091
.LLSDACSB1091:
	.uleb128 .LEHB12-.LFB1091
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L38-.LFB1091
	.uleb128 0
	.uleb128 .LEHB13-.LFB1091
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L39-.LFB1091
	.uleb128 0
	.uleb128 .LEHB14-.LFB1091
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L40-.LFB1091
	.uleb128 0
	.uleb128 .LEHB15-.LFB1091
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L39-.LFB1091
	.uleb128 0
	.uleb128 .LEHB16-.LFB1091
	.uleb128 .LEHE16-.LEHB16
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB17-.LFB1091
	.uleb128 .LEHE17-.LEHB17
	.uleb128 0
	.uleb128 0
.LLSDACSE1091:
	.text
	.fnend
	.size	_ZN9GPIOClass13unexport_gpioEv, .-_ZN9GPIOClass13unexport_gpioEv
	.section	.rodata
	.align	2
.LC6:
	.ascii	"/sys/class/gpio/gpio\000"
	.align	2
.LC7:
	.ascii	"/direction\000"
	.align	2
.LC8:
	.ascii	"ERROR: Unable to set direction for GPIO \000"
	.text
	.align	2
	.global	_ZN9GPIOClass11setdir_gpioESs
	.type	_ZN9GPIOClass11setdir_gpioESs, %function
_ZN9GPIOClass11setdir_gpioESs:
	.fnstart
.LFB1092:
	@ args = 0, pretend = 0, frame = 296
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, fp, lr}
	.save {r4, fp, lr}
	.setfp fp, sp, #8
	add	fp, sp, #8
	.pad #300
	sub	sp, sp, #300
	str	r0, [fp, #-304]
	str	r1, [fp, #-308]
	ldr	r3, [fp, #-304]
	sub	r2, fp, #16
	mov	r0, r2
	ldr	r1, .L57
	mov	r2, r3
.LEHB18:
	bl	_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EPKS3_RKS6_
.LEHE18:
	sub	r2, fp, #20
	sub	r3, fp, #16
	mov	r0, r2
	mov	r1, r3
	ldr	r2, .L57+4
.LEHB19:
	bl	_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_PKS3_
.LEHE19:
	sub	r3, fp, #16
	mov	r0, r3
.LEHB20:
	bl	_ZNSsD1Ev
.LEHE20:
	sub	r3, fp, #20
	mov	r0, r3
.LEHB21:
	bl	_ZNKSs5c_strEv
	mov	r4, r0
	mov	r0, #16
	mov	r1, #32
	bl	_ZStorSt13_Ios_OpenmodeS_
	mov	r2, r0
	sub	r3, fp, #296
	mov	r0, r3
	mov	r1, r4
	bl	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode
.LEHE21:
	sub	r3, fp, #296
	add	r3, r3, #140
	mov	r0, r3
.LEHB22:
	bl	_ZNKSt9basic_iosIcSt11char_traitsIcEEcvPvEv
	mov	r3, #0
	cmp	r3, #0
	beq	.L45
	ldr	r0, .L57+8
	ldr	r1, .L57+12
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	r2, r0
	ldr	r3, [fp, #-304]
	mov	r0, r2
	mov	r1, r3
	bl	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKSbIS4_S5_T1_E
	mov	r3, r0
	mov	r0, r3
	ldr	r1, .L57+16
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	r3, r0
	mov	r0, r3
	ldr	r1, .L57+20
	bl	_ZNSolsEPFRSoS_E
	mvn	r4, #0
	b	.L46
.L45:
	sub	r3, fp, #296
	mov	r0, r3
	ldr	r1, [fp, #-308]
	bl	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKSbIS4_S5_T1_E
	sub	r3, fp, #296
	mov	r0, r3
	bl	_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv
.LEHE22:
	mov	r4, #0
.L46:
	sub	r3, fp, #296
	mov	r0, r3
.LEHB23:
	bl	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
.LEHE23:
	sub	r3, fp, #20
	mov	r0, r3
.LEHB24:
	bl	_ZNSsD1Ev
.LEHE24:
	mov	r3, r4
	b	.L56
.L52:
	sub	r3, fp, #16
	mov	r0, r3
	bl	_ZNSsD1Ev
.LEHB25:
	bl	__cxa_end_cleanup
.LEHE25:
.L53:
	sub	r3, fp, #20
	mov	r0, r3
	bl	_ZNSsD1Ev
.LEHB26:
	bl	__cxa_end_cleanup
.LEHE26:
.L55:
	sub	r3, fp, #296
	mov	r0, r3
	bl	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
	b	.L51
.L54:
.L51:
	sub	r3, fp, #20
	mov	r0, r3
	bl	_ZNSsD1Ev
.LEHB27:
	bl	__cxa_end_cleanup
.LEHE27:
.L56:
	mov	r0, r3
	sub	sp, fp, #8
	@ sp needed
	ldmfd	sp!, {r4, fp, pc}
.L58:
	.align	2
.L57:
	.word	.LC6
	.word	.LC7
	.word	_ZSt4cout
	.word	.LC8
	.word	.LC3
	.word	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA1092:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1092-.LLSDACSB1092
.LLSDACSB1092:
	.uleb128 .LEHB18-.LFB1092
	.uleb128 .LEHE18-.LEHB18
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB19-.LFB1092
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L52-.LFB1092
	.uleb128 0
	.uleb128 .LEHB20-.LFB1092
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L53-.LFB1092
	.uleb128 0
	.uleb128 .LEHB21-.LFB1092
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L54-.LFB1092
	.uleb128 0
	.uleb128 .LEHB22-.LFB1092
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L55-.LFB1092
	.uleb128 0
	.uleb128 .LEHB23-.LFB1092
	.uleb128 .LEHE23-.LEHB23
	.uleb128 .L54-.LFB1092
	.uleb128 0
	.uleb128 .LEHB24-.LFB1092
	.uleb128 .LEHE24-.LEHB24
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB25-.LFB1092
	.uleb128 .LEHE25-.LEHB25
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB26-.LFB1092
	.uleb128 .LEHE26-.LEHB26
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB27-.LFB1092
	.uleb128 .LEHE27-.LEHB27
	.uleb128 0
	.uleb128 0
.LLSDACSE1092:
	.text
	.fnend
	.size	_ZN9GPIOClass11setdir_gpioESs, .-_ZN9GPIOClass11setdir_gpioESs
	.section	.rodata
	.align	2
.LC9:
	.ascii	"/value\000"
	.align	2
.LC10:
	.ascii	"ERROR:  Unable to give a value to gpio \000"
	.text
	.align	2
	.global	_ZN9GPIOClass11setval_gpioESs
	.type	_ZN9GPIOClass11setval_gpioESs, %function
_ZN9GPIOClass11setval_gpioESs:
	.fnstart
.LFB1093:
	@ args = 0, pretend = 0, frame = 296
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, fp, lr}
	.save {r4, fp, lr}
	.setfp fp, sp, #8
	add	fp, sp, #8
	.pad #300
	sub	sp, sp, #300
	str	r0, [fp, #-304]
	str	r1, [fp, #-308]
	ldr	r3, [fp, #-304]
	sub	r2, fp, #16
	mov	r0, r2
	ldr	r1, .L72
	mov	r2, r3
.LEHB28:
	bl	_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EPKS3_RKS6_
.LEHE28:
	sub	r2, fp, #20
	sub	r3, fp, #16
	mov	r0, r2
	mov	r1, r3
	ldr	r2, .L72+4
.LEHB29:
	bl	_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_PKS3_
.LEHE29:
	sub	r3, fp, #16
	mov	r0, r3
.LEHB30:
	bl	_ZNSsD1Ev
.LEHE30:
	sub	r3, fp, #20
	mov	r0, r3
.LEHB31:
	bl	_ZNKSs5c_strEv
	mov	r4, r0
	mov	r0, #16
	mov	r1, #32
	bl	_ZStorSt13_Ios_OpenmodeS_
	mov	r2, r0
	sub	r3, fp, #296
	mov	r0, r3
	mov	r1, r4
	bl	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode
.LEHE31:
	sub	r3, fp, #296
	add	r3, r3, #140
	mov	r0, r3
.LEHB32:
	bl	_ZNKSt9basic_iosIcSt11char_traitsIcEEcvPvEv
	mov	r3, #0
	cmp	r3, #0
	beq	.L60
	ldr	r0, .L72+8
	ldr	r1, .L72+12
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	r2, r0
	ldr	r3, [fp, #-304]
	mov	r0, r2
	mov	r1, r3
	bl	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKSbIS4_S5_T1_E
	mov	r3, r0
	mov	r0, r3
	ldr	r1, .L72+16
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	r3, r0
	mov	r0, r3
	ldr	r1, .L72+20
	bl	_ZNSolsEPFRSoS_E
	mvn	r4, #0
	b	.L61
.L60:
	sub	r3, fp, #296
	mov	r0, r3
	ldr	r1, [fp, #-308]
	bl	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKSbIS4_S5_T1_E
	sub	r3, fp, #296
	mov	r0, r3
	bl	_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv
.LEHE32:
	mov	r4, #0
.L61:
	sub	r3, fp, #296
	mov	r0, r3
.LEHB33:
	bl	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
.LEHE33:
	sub	r3, fp, #20
	mov	r0, r3
.LEHB34:
	bl	_ZNSsD1Ev
.LEHE34:
	mov	r3, r4
	b	.L71
.L67:
	sub	r3, fp, #16
	mov	r0, r3
	bl	_ZNSsD1Ev
.LEHB35:
	bl	__cxa_end_cleanup
.LEHE35:
.L68:
	sub	r3, fp, #20
	mov	r0, r3
	bl	_ZNSsD1Ev
.LEHB36:
	bl	__cxa_end_cleanup
.LEHE36:
.L70:
	sub	r3, fp, #296
	mov	r0, r3
	bl	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
	b	.L66
.L69:
.L66:
	sub	r3, fp, #20
	mov	r0, r3
	bl	_ZNSsD1Ev
.LEHB37:
	bl	__cxa_end_cleanup
.LEHE37:
.L71:
	mov	r0, r3
	sub	sp, fp, #8
	@ sp needed
	ldmfd	sp!, {r4, fp, pc}
.L73:
	.align	2
.L72:
	.word	.LC6
	.word	.LC9
	.word	_ZSt4cout
	.word	.LC10
	.word	.LC3
	.word	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA1093:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1093-.LLSDACSB1093
.LLSDACSB1093:
	.uleb128 .LEHB28-.LFB1093
	.uleb128 .LEHE28-.LEHB28
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB29-.LFB1093
	.uleb128 .LEHE29-.LEHB29
	.uleb128 .L67-.LFB1093
	.uleb128 0
	.uleb128 .LEHB30-.LFB1093
	.uleb128 .LEHE30-.LEHB30
	.uleb128 .L68-.LFB1093
	.uleb128 0
	.uleb128 .LEHB31-.LFB1093
	.uleb128 .LEHE31-.LEHB31
	.uleb128 .L69-.LFB1093
	.uleb128 0
	.uleb128 .LEHB32-.LFB1093
	.uleb128 .LEHE32-.LEHB32
	.uleb128 .L70-.LFB1093
	.uleb128 0
	.uleb128 .LEHB33-.LFB1093
	.uleb128 .LEHE33-.LEHB33
	.uleb128 .L69-.LFB1093
	.uleb128 0
	.uleb128 .LEHB34-.LFB1093
	.uleb128 .LEHE34-.LEHB34
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB35-.LFB1093
	.uleb128 .LEHE35-.LEHB35
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB36-.LFB1093
	.uleb128 .LEHE36-.LEHB36
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB37-.LFB1093
	.uleb128 .LEHE37-.LEHB37
	.uleb128 0
	.uleb128 0
.LLSDACSE1093:
	.text
	.fnend
	.size	_ZN9GPIOClass11setval_gpioESs, .-_ZN9GPIOClass11setval_gpioESs
	.section	.rodata
	.align	2
.LC11:
	.ascii	"ERROR: Unable to get the actual value of GPIO\000"
	.align	2
.LC12:
	.ascii	"0\000"
	.align	2
.LC13:
	.ascii	"1\000"
	.text
	.align	2
	.global	_ZN9GPIOClass11getval_gpioERSs
	.type	_ZN9GPIOClass11getval_gpioERSs, %function
_ZN9GPIOClass11getval_gpioERSs:
	.fnstart
.LFB1094:
	@ args = 0, pretend = 0, frame = 296
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, fp, lr}
	.save {r4, fp, lr}
	.setfp fp, sp, #8
	add	fp, sp, #8
	.pad #300
	sub	sp, sp, #300
	str	r0, [fp, #-304]
	str	r1, [fp, #-308]
	ldr	r3, [fp, #-304]
	sub	r2, fp, #16
	mov	r0, r2
	ldr	r1, .L89
	mov	r2, r3
.LEHB38:
	bl	_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EPKS3_RKS6_
.LEHE38:
	sub	r2, fp, #20
	sub	r3, fp, #16
	mov	r0, r2
	mov	r1, r3
	ldr	r2, .L89+4
.LEHB39:
	bl	_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_PKS3_
.LEHE39:
	sub	r3, fp, #16
	mov	r0, r3
.LEHB40:
	bl	_ZNSsD1Ev
.LEHE40:
	sub	r3, fp, #20
	mov	r0, r3
.LEHB41:
	bl	_ZNKSs5c_strEv
	mov	r2, r0
	sub	r3, fp, #300
	mov	r0, r3
	mov	r1, r2
	mov	r2, #8
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode
.LEHE41:
	sub	r3, fp, #300
	add	r3, r3, #144
	mov	r0, r3
.LEHB42:
	bl	_ZNKSt9basic_iosIcSt11char_traitsIcEEcvPvEv
	mov	r3, #0
	cmp	r3, #0
	beq	.L75
	ldr	r0, .L89+8
	ldr	r1, .L89+12
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	r2, r0
	ldr	r3, [fp, #-304]
	mov	r0, r2
	mov	r1, r3
	bl	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKSbIS4_S5_T1_E
	mov	r3, r0
	mov	r0, r3
	ldr	r1, .L89+16
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	r3, r0
	mov	r0, r3
	ldr	r1, .L89+20
	bl	_ZNSolsEPFRSoS_E
	mvn	r4, #0
	b	.L76
.L75:
	sub	r3, fp, #300
	mov	r0, r3
	ldr	r1, [fp, #-308]
	bl	_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RSbIS4_S5_T1_E
	ldr	r0, [fp, #-308]
	ldr	r1, .L89+24
	bl	_ZStneIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_EPKS3_
	mov	r3, r0
	cmp	r3, #0
	beq	.L77
	ldr	r0, [fp, #-308]
	ldr	r1, .L89+28
	bl	_ZNSsaSEPKc
	b	.L78
.L77:
	ldr	r0, [fp, #-308]
	ldr	r1, .L89+24
	bl	_ZNSsaSEPKc
.L78:
	sub	r3, fp, #300
	mov	r0, r3
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv
.LEHE42:
	mov	r4, #0
.L76:
	sub	r3, fp, #300
	mov	r0, r3
.LEHB43:
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
.LEHE43:
	sub	r3, fp, #20
	mov	r0, r3
.LEHB44:
	bl	_ZNSsD1Ev
.LEHE44:
	mov	r3, r4
	b	.L88
.L84:
	sub	r3, fp, #16
	mov	r0, r3
	bl	_ZNSsD1Ev
.LEHB45:
	bl	__cxa_end_cleanup
.LEHE45:
.L85:
	sub	r3, fp, #20
	mov	r0, r3
	bl	_ZNSsD1Ev
.LEHB46:
	bl	__cxa_end_cleanup
.LEHE46:
.L87:
	sub	r3, fp, #300
	mov	r0, r3
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	b	.L83
.L86:
.L83:
	sub	r3, fp, #20
	mov	r0, r3
	bl	_ZNSsD1Ev
.LEHB47:
	bl	__cxa_end_cleanup
.LEHE47:
.L88:
	mov	r0, r3
	sub	sp, fp, #8
	@ sp needed
	ldmfd	sp!, {r4, fp, pc}
.L90:
	.align	2
.L89:
	.word	.LC6
	.word	.LC9
	.word	_ZSt4cout
	.word	.LC11
	.word	.LC3
	.word	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	.word	.LC12
	.word	.LC13
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA1094:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1094-.LLSDACSB1094
.LLSDACSB1094:
	.uleb128 .LEHB38-.LFB1094
	.uleb128 .LEHE38-.LEHB38
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB39-.LFB1094
	.uleb128 .LEHE39-.LEHB39
	.uleb128 .L84-.LFB1094
	.uleb128 0
	.uleb128 .LEHB40-.LFB1094
	.uleb128 .LEHE40-.LEHB40
	.uleb128 .L85-.LFB1094
	.uleb128 0
	.uleb128 .LEHB41-.LFB1094
	.uleb128 .LEHE41-.LEHB41
	.uleb128 .L86-.LFB1094
	.uleb128 0
	.uleb128 .LEHB42-.LFB1094
	.uleb128 .LEHE42-.LEHB42
	.uleb128 .L87-.LFB1094
	.uleb128 0
	.uleb128 .LEHB43-.LFB1094
	.uleb128 .LEHE43-.LEHB43
	.uleb128 .L86-.LFB1094
	.uleb128 0
	.uleb128 .LEHB44-.LFB1094
	.uleb128 .LEHE44-.LEHB44
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB45-.LFB1094
	.uleb128 .LEHE45-.LEHB45
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB46-.LFB1094
	.uleb128 .LEHE46-.LEHB46
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB47-.LFB1094
	.uleb128 .LEHE47-.LEHB47
	.uleb128 0
	.uleb128 0
.LLSDACSE1094:
	.text
	.fnend
	.size	_ZN9GPIOClass11getval_gpioERSs, .-_ZN9GPIOClass11getval_gpioERSs
	.align	2
	.global	_ZN9GPIOClass11get_gpionumEv
	.type	_ZN9GPIOClass11get_gpionumEv, %function
_ZN9GPIOClass11get_gpionumEv:
	.fnstart
.LFB1095:
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
	ldr	r0, [fp, #-8]
	mov	r1, r3
	bl	_ZNSsC1ERKSs
	ldr	r0, [fp, #-8]
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.fnend
	.size	_ZN9GPIOClass11get_gpionumEv, .-_ZN9GPIOClass11get_gpionumEv
	.section	.text._ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EPKS3_RKS6_,"axG",%progbits,_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EPKS3_RKS6_,comdat
	.align	2
	.weak	_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EPKS3_RKS6_
	.type	_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EPKS3_RKS6_, %function
_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EPKS3_RKS6_:
	.fnstart
.LFB1127:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #24
	sub	sp, sp, #24
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	ldr	r0, [fp, #-20]
	bl	_ZNSt11char_traitsIcE6lengthEPKc
	str	r0, [fp, #-8]
	ldr	r0, [fp, #-16]
.LEHB48:
	bl	_ZNSsC1Ev
.LEHE48:
	ldr	r0, [fp, #-24]
.LEHB49:
	bl	_ZNKSs4sizeEv
	mov	r2, r0
	ldr	r3, [fp, #-8]
	add	r3, r2, r3
	ldr	r0, [fp, #-16]
	mov	r1, r3
	bl	_ZNSs7reserveEj
	ldr	r0, [fp, #-16]
	ldr	r1, [fp, #-20]
	ldr	r2, [fp, #-8]
	bl	_ZNSs6appendEPKcj
	ldr	r0, [fp, #-16]
	ldr	r1, [fp, #-24]
	bl	_ZNSs6appendERKSs
.LEHE49:
	b	.L97
.L96:
	ldr	r0, [fp, #-16]
	bl	_ZNSsD1Ev
.LEHB50:
	bl	__cxa_end_cleanup
.LEHE50:
.L97:
	ldr	r0, [fp, #-16]
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA1127:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1127-.LLSDACSB1127
.LLSDACSB1127:
	.uleb128 .LEHB48-.LFB1127
	.uleb128 .LEHE48-.LEHB48
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB49-.LFB1127
	.uleb128 .LEHE49-.LEHB49
	.uleb128 .L96-.LFB1127
	.uleb128 0
	.uleb128 .LEHB50-.LFB1127
	.uleb128 .LEHE50-.LEHB50
	.uleb128 0
	.uleb128 0
.LLSDACSE1127:
	.section	.text._ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EPKS3_RKS6_,"axG",%progbits,_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EPKS3_RKS6_,comdat
	.fnend
	.size	_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EPKS3_RKS6_, .-_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EPKS3_RKS6_
	.section	.text._ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_PKS3_,"axG",%progbits,_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_PKS3_,comdat
	.align	2
	.weak	_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_PKS3_
	.type	_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_PKS3_, %function
_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_PKS3_:
	.fnstart
.LFB1128:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #16
	sub	sp, sp, #16
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	ldr	r0, [fp, #-8]
	ldr	r1, [fp, #-12]
.LEHB51:
	bl	_ZNSsC1ERKSs
.LEHE51:
	ldr	r0, [fp, #-8]
	ldr	r1, [fp, #-16]
.LEHB52:
	bl	_ZNSs6appendEPKc
.LEHE52:
	b	.L102
.L101:
	ldr	r0, [fp, #-8]
	bl	_ZNSsD1Ev
.LEHB53:
	bl	__cxa_end_cleanup
.LEHE53:
.L102:
	ldr	r0, [fp, #-8]
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA1128:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1128-.LLSDACSB1128
.LLSDACSB1128:
	.uleb128 .LEHB51-.LFB1128
	.uleb128 .LEHE51-.LEHB51
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB52-.LFB1128
	.uleb128 .LEHE52-.LEHB52
	.uleb128 .L101-.LFB1128
	.uleb128 0
	.uleb128 .LEHB53-.LFB1128
	.uleb128 .LEHE53-.LEHB53
	.uleb128 0
	.uleb128 0
.LLSDACSE1128:
	.section	.text._ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_PKS3_,"axG",%progbits,_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_PKS3_,comdat
	.fnend
	.size	_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_PKS3_, .-_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_PKS3_
	.section	.text._ZStneIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_EPKS3_,"axG",%progbits,_ZStneIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_EPKS3_,comdat
	.align	2
	.weak	_ZStneIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_EPKS3_
	.type	_ZStneIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_EPKS3_, %function
_ZStneIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_EPKS3_:
	.fnstart
.LFB1136:
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
	ldr	r0, [fp, #-8]
	ldr	r1, [fp, #-12]
	bl	_ZSteqIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_EPKS3_
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.fnend
	.size	_ZStneIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_EPKS3_, .-_ZStneIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_EPKS3_
	.section	.text._ZSteqIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_EPKS3_,"axG",%progbits,_ZSteqIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_EPKS3_,comdat
	.align	2
	.weak	_ZSteqIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_EPKS3_
	.type	_ZSteqIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_EPKS3_, %function
_ZSteqIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_EPKS3_:
	.fnstart
.LFB1188:
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
	ldr	r0, [fp, #-8]
	ldr	r1, [fp, #-12]
	bl	_ZNKSs7compareEPKc
	mov	r3, r0
	cmp	r3, #0
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.fnend
	.size	_ZSteqIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_EPKS3_, .-_ZSteqIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_EPKS3_
	.text
	.align	2
	.type	_Z41__static_initialization_and_destruction_0ii, %function
_Z41__static_initialization_and_destruction_0ii:
	.fnstart
.LFB1202:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	ldr	r3, [fp, #-8]
	cmp	r3, #1
	bne	.L107
	ldr	r3, [fp, #-12]
	ldr	r2, .L109
	cmp	r3, r2
	bne	.L107
	ldr	r0, .L109+4
	bl	_ZNSt8ios_base4InitC1Ev
	ldr	r0, .L109+4
	ldr	r1, .L109+8
	ldr	r2, .L109+12
	bl	__aeabi_atexit
.L107:
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
.L110:
	.align	2
.L109:
	.word	65535
	.word	_ZStL8__ioinit
	.word	_ZNSt8ios_base4InitD1Ev
	.word	__dso_handle
	.cantunwind
	.fnend
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.align	2
	.type	_GLOBAL__sub_I__ZN9GPIOClassC2Ev, %function
_GLOBAL__sub_I__ZN9GPIOClassC2Ev:
	.fnstart
.LFB1203:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	mov	r0, #1
	ldr	r1, .L112
	bl	_Z41__static_initialization_and_destruction_0ii
	ldmfd	sp!, {fp, pc}
.L113:
	.align	2
.L112:
	.word	65535
	.cantunwind
	.fnend
	.size	_GLOBAL__sub_I__ZN9GPIOClassC2Ev, .-_GLOBAL__sub_I__ZN9GPIOClassC2Ev
	.section	.init_array,"aw"
	.align	2
	.word	_GLOBAL__sub_I__ZN9GPIOClassC2Ev
	.section	.rodata
	.align	2
	.type	_ZZL18__gthread_active_pvE20__gthread_active_ptr, %object
	.size	_ZZL18__gthread_active_pvE20__gthread_active_ptr, 4
_ZZL18__gthread_active_pvE20__gthread_active_ptr:
	.word	_ZL28__gthrw___pthread_key_createPjPFvPvE
	.weakref	_ZL28__gthrw___pthread_key_createPjPFvPvE,__pthread_key_create
	.hidden	__dso_handle
	.ident	"GCC: (Raspbian 4.9.2-10) 4.9.2"
	.section	.note.GNU-stack,"",%progbits
