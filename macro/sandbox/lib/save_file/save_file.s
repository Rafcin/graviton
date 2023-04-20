	.arch armv8-a
	.file	"save_file.cpp"
	.text
	.align	2
	.global	_Z9save_filePKcRK10LinkedList
	.type	_Z9save_filePKcRK10LinkedList, %function
_Z9save_filePKcRK10LinkedList:
.LFB1707:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1707
	sub	sp, sp, #592
	.cfi_def_cfa_offset 592
	stp	x29, x30, [sp]
	.cfi_offset 29, -592
	.cfi_offset 30, -584
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -576
	.cfi_offset 20, -568
	mov	x20, x1
	adrp	x1, :got:__stack_chk_guard
	stp	x21, x22, [sp, 32]
	.cfi_offset 21, -560
	.cfi_offset 22, -552
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
	.cfi_restore 29
	.cfi_restore 30
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
	.size	_Z9save_filePKcRK10LinkedList, .-_Z9save_filePKcRK10LinkedList
	.section	.text.startup,"ax",@progbits
	.align	2
	.type	_GLOBAL__sub_I_save_file.cpp, %function
_GLOBAL__sub_I_save_file.cpp:
.LFB2093:
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
.LFE2093:
	.size	_GLOBAL__sub_I_save_file.cpp, .-_GLOBAL__sub_I_save_file.cpp
	.section	.init_array,"aw"
	.align	3
	.xword	_GLOBAL__sub_I_save_file.cpp
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
