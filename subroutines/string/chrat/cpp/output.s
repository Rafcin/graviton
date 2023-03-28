	.arch armv8-a
	.file	"source.cpp"
	.text
	.align	2
	.p2align 4,,11
	.global	_Z6charAtRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi
	.type	_Z6charAtRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi, %function
_Z6charAtRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi:
.LFB1600:
	.cfi_startproc
	mov	x2, x0
	mov	w0, 0
	tbnz	w1, #31, .L2
	ldr	x3, [x2, 8]
	mov	w0, 0
	cmp	x3, w1, sxtw
	bls	.L2
	ldr	x0, [x2]
	ldrb	w0, [x0, w1, sxtw]
.L2:
	ret
	.cfi_endproc
.LFE1600:
	.size	_Z6charAtRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi, .-_Z6charAtRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi
	.section	.text.startup,"ax",@progbits
	.align	2
	.p2align 4,,11
	.type	_GLOBAL__sub_I__Z6charAtRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi, %function
_GLOBAL__sub_I__Z6charAtRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi:
.LFB1932:
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
.LFE1932:
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
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 11.3.0-1ubuntu1~22.04) 11.3.0"
	.section	.note.GNU-stack,"",@progbits
