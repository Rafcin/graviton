.text
.align	2
.global	save_file
.type	save_file, %function
	save_file:
	.LFB1707:
		sub	sp, sp, #592
		stp	x29, x30, [sp]
		mov	x29, sp
		stp	x19, x20, [sp, 16]
		mov	x20, x1
		adrp	x1, :got:__stack_chk_guard
		stp	x21, x22, [sp, 32]
		add	x19, sp, 64
		ldr	x1, [x1, #:got_lo12:__stack_chk_guard]
		ldr	x2, [x1]
		str	x2, [sp, 584]
		mov	x2, 0
		mov	x1, x0
		mov	w2, 16
		mov	x0, x19
	.LEHB0:
		bl	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode
	.LEHE0:
		add	x0, sp, 184
		bl	_ZNKSt12__basic_fileIcE7is_openEv
		tst	w0, 255
		bne	.L2
	.L5:
		mov	x0, x19
		bl	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
		adrp	x0, :got:__stack_chk_guard
		ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
		ldr	x2, [sp, 584]
		ldr	x1, [x0]
		subs	x2, x2, x1
		mov	x1, 0
		beq	.L7
		bl	__stack_chk_fail
	.L2:
		ldr	x20, [x20]
		add	x22, sp, 63
		mov	w21, 10
	.L3:
		cbnz	x20, .L4
		mov	x0, x19
	.LEHB1:
		bl	_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv
		b	.L5
	.L4:
		mov	x1, x20
		mov	x0, x19
		bl	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE
		mov	x1, x22
		mov	x2, 1
		strb	w21, [sp, 63]
		bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	.LEHE1:
		ldr	x20, [x20, 32]
		b	.L3
	.L8:
		mov	x20, x0
		mov	x0, x19
		bl	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
		mov	x0, x20
	.LEHB2:
		bl	_Unwind_Resume
	.LEHE2:
	.L7:
		ldp	x29, x30, [sp]
		ldp	x19, x20, [sp, 16]
		ldp	x21, x22, [sp, 32]
		add	sp, sp, 592

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
		.size	save_file, .-save_file
		