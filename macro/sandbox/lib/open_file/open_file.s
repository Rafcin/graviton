	.arch armv8-a
	.file	"open_file.cpp"
	.text
	.align	2
	.global	_Z9open_filePKcR10LinkedListRmS3_
	.type	_Z9open_filePKcR10LinkedListRmS3_, %function
_Z9open_filePKcR10LinkedListRmS3_:
.LFB1707:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1707
	sub	sp, sp, #640
	.cfi_def_cfa_offset 640
	stp	x29, x30, [sp]
	.cfi_offset 29, -640
	.cfi_offset 30, -632
	mov	x29, sp
	stp	x23, x24, [sp, 48]
	.cfi_offset 23, -592
	.cfi_offset 24, -584
	mov	x23, x1
	adrp	x1, :got:__stack_chk_guard
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -624
	.cfi_offset 20, -616
	add	x19, sp, 104
	ldr	x1, [x1, #:got_lo12:__stack_chk_guard]
	stp	x21, x22, [sp, 32]
	.cfi_offset 21, -608
	.cfi_offset 22, -600
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
	bl	_Z14list_push_backR10LinkedListRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
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
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
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
	.size	_Z9open_filePKcR10LinkedListRmS3_, .-_Z9open_filePKcR10LinkedListRmS3_
	.section	.text.startup,"ax",@progbits
	.align	2
	.type	_GLOBAL__sub_I_open_file.cpp, %function
_GLOBAL__sub_I_open_file.cpp:
.LFB2100:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -16
	adrp	x19, .LANCHOR0
	add	x19, x19, :lo12:.LANCHOR0
	mov	x0, x19
	bl	_ZNSt8ios_base4InitC1Ev
	mov	x1, x19
	adrp	x0, :got:_ZNSt8ios_base4InitD1Ev
	ldr	x19, [sp, 16]
	adrp	x2, __dso_handle
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	add	x2, x2, :lo12:__dso_handle
	ldr	x0, [x0, #:got_lo12:_ZNSt8ios_base4InitD1Ev]
	b	__cxa_atexit
	.cfi_endproc
.LFE2100:
	.size	_GLOBAL__sub_I_open_file.cpp, .-_GLOBAL__sub_I_open_file.cpp
	.section	.init_array,"aw"
	.align	3
	.xword	_GLOBAL__sub_I_open_file.cpp
	.bss
	.set	.LANCHOR0,. + 0
	.type	_ZStL8__ioinit, %object
	.size	_ZStL8__ioinit, 1
_ZStL8__ioinit:
	.zero	1
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align	3
	.type	DW.ref.__gxx_personality_v0, %object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.xword	__gxx_personality_v0
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 11.3.0-1ubuntu1~22.04) 11.3.0"
	.section	.note.GNU-stack,"",@progbits
