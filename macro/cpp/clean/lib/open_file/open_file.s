.text
.align	2
.global	open_file
.type	open_file, %function
	open_file:
	.LFB1707:
		sub	sp, sp, #640
		stp	x29, x30, [sp]
		mov	x29, sp
		stp	x23, x24, [sp, 48]
		mov	x23, x1
		adrp	x1, :got:__stack_chk_guard
		stp	x19, x20, [sp, 16]
		add	x19, sp, 104
		ldr	x1, [x1, #:got_lo12:__stack_chk_guard]
		stp	x21, x22, [sp, 32]
		mov	x21, x2
		ldr	x2, [x1]
		str	x2, [sp, 632]
		mov	x2, 0
		mov	x1, x0
		mov	w2, 8
		mov	x0, x19
		mov	x22, x3
	.LEHB0:
		bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode
	.LEHE0:
		add	x0, sp, 232
		bl	_ZNKSt12__basic_fileIcE7is_openEv
		tst	w0, 255
		bne	.L2
	.L10:
		mov	x0, x19
		bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
		adrp	x0, :got:__stack_chk_guard
		ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
		ldr	x2, [sp, 632]
		ldr	x1, [x0]
		subs	x2, x2, x1
		mov	x1, 0
		beq	.L7
		bl	__stack_chk_fail
	.L2:
		add	x20, sp, 72
		add	x0, sp, 88
		mov	w24, 5
		stp	x0, xzr, [sp, 72]
		strb	wzr, [sp, 88]
	.L4:
		mov	x1, x20
		mov	x0, x19
	.LEHB1:
		bl	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE
		b	.L11
	.L5:
		mov	x1, x20
		mov	x0, x23
		bl	list_push_back
		ldr	x4, [x21]
		ldr	x0, [x0, 8]
		add	x4, x4, 40
		add	x4, x4, x0
		str	x4, [x21]
		ldr	x0, [x22]
		add	x0, x0, 1
		str	x0, [x22]
		b	.L4
	.L11:
		ldr	x1, [x0]
		ldr	x1, [x1, -24]
		add	x0, x0, x1
		ldr	w0, [x0, 32]
		tst	w0, w24
		beq	.L5
		mov	x0, x19
		bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv
	.LEHE1:
		mov	x0, x20
		bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
		b	.L10
	.L8:
		mov	x21, x0
		mov	x0, x20
		bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
		mov	x0, x19
		bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
		mov	x0, x21
	.LEHB2:
		bl	_Unwind_Resume
	.LEHE2:
	.L7:
		ldp	x29, x30, [sp]
		ldp	x19, x20, [sp, 16]
		ldp	x21, x22, [sp, 32]
		ldp	x23, x24, [sp, 48]
		add	sp, sp, 640

		ret
	.LFE1707:
		.global	__gxx_personality_v0
		.section	.gcc_except_table,"a",@progbits
	.LLSDA1707:
		.byte	0xff
		.byte	0xff
		.byte	0x1
		.uleb128 .LLSDACSE1707-.LLSDACSB1707
	.LLSDACSB1707:
		.uleb128 .LEHB0-.LFB1707
		.uleb128 .LEHE0-.LEHB0
		.uleb128 0
		.uleb128 0
		.uleb128 .LEHB1-.LFB1707
		.uleb128 .LEHE1-.LEHB1
		.uleb128 .L8-.LFB1707
		.uleb128 0
		.uleb128 .LEHB2-.LFB1707
		.uleb128 .LEHE2-.LEHB2
		.uleb128 0
		.uleb128 0
	.LLSDACSE1707:
		.text
		.size	open_file, .-open_file
		