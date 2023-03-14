	.arch armv8-a
	.file	"source.cpp"
	.text
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align	3
.LC0:
	.string	"Index out of range"
	.text
	.align	2
	.p2align 4,,11
	.global	_Z6charAtRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi
	.type	_Z6charAtRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi, %function
_Z6charAtRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi:
.LFB1600:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1600
	tbnz	w1, #31, .L2
	ldr	x2, [x0, 8]
	cmp	x2, w1, sxtw
	bls	.L2
	ldr	x0, [x0]
	ldrb	w0, [x0, w1, sxtw]
	ret
.L2:
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x0, 16
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -16
	bl	__cxa_allocate_exception
	adrp	x1, .LC0
	mov	x19, x0
	add	x1, x1, :lo12:.LC0
.LEHB0:
	bl	_ZNSt12out_of_rangeC1EPKc
.LEHE0:
	adrp	x2, :got:_ZNSt12out_of_rangeD1Ev
	adrp	x1, :got:_ZTISt12out_of_range
	mov	x0, x19
	ldr	x2, [x2, #:got_lo12:_ZNSt12out_of_rangeD1Ev]
	ldr	x1, [x1, #:got_lo12:_ZTISt12out_of_range]
.LEHB1:
	bl	__cxa_throw
.L6:
	mov	x1, x0
	mov	x0, x19
	mov	x19, x1
	bl	__cxa_free_exception
	mov	x0, x19
	bl	_Unwind_Resume
.LEHE1:
	.cfi_endproc
.LFE1600:
	.global	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA1600:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1600-.LLSDACSB1600
.LLSDACSB1600:
	.uleb128 .LEHB0-.LFB1600
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L6-.LFB1600
	.uleb128 0
	.uleb128 .LEHB1-.LFB1600
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSE1600:
	.text
	.size	_Z6charAtRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi, .-_Z6charAtRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi
	.section	.text.startup,"ax",@progbits
	.align	2
	.p2align 4,,11
	.type	_GLOBAL__sub_I__Z6charAtRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi, %function
_GLOBAL__sub_I__Z6charAtRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi:
.LFB1935:
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
.LFE1935:
	.size	_GLOBAL__sub_I__Z6charAtRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi, .-_GLOBAL__sub_I__Z6charAtRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi
	.section	.init_array,"aw"
	.align	3
	.xword	_GLOBAL__sub_I__Z6charAtRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi
	.bss
	.align	3
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
