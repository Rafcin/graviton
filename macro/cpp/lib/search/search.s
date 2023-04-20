	.arch armv8-a
	.file	"search.cpp"
	.text
	.align	2
	.global	_Z16highlight_searchmmi
	.type	_Z16highlight_searchmmi, %function
_Z16highlight_searchmmi:
.LFB1707:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -64
	.cfi_offset 20, -56
	adrp	x20, :got:stdscr
	ldr	x20, [x20, #:got_lo12:stdscr]
	stp	x23, x24, [sp, 48]
	.cfi_offset 23, -32
	.cfi_offset 24, -24
	mov	x24, x0
	mov	x23, x1
	mov	w1, 256
	ldr	x0, [x20]
	stp	x21, x22, [sp, 32]
	.cfi_offset 21, -48
	.cfi_offset 22, -40
	mov	w22, w2
	mov	x21, 0
	mov	x2, 0
	str	x25, [sp, 64]
	.cfi_offset 25, -16
	bl	wattr_on
.L2:
	ldr	x0, [x20]
	cmp	x21, x23
	bne	.L5
	ldp	x19, x20, [sp, 16]
	mov	x2, 0
	ldp	x21, x22, [sp, 32]
	mov	w1, 256
	ldp	x23, x24, [sp, 48]
	ldr	x25, [sp, 64]
	ldp	x29, x30, [sp], 80
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 25
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	b	wattr_off
.L5:
	.cfi_restore_state
	add	w25, w21, w24
	mov	w1, w22
	mov	w2, w25
	bl	wmove
	mov	w19, w0
	cmn	w0, #1
	beq	.L3
	ldr	x0, [x20]
	bl	winch
	mov	w19, w0
.L3:
	ldr	x0, [x20]
	mov	w2, w25
	mov	w1, w22
	bl	wmove
	cmn	w0, #1
	beq	.L4
	ldr	x0, [x20]
	and	w19, w19, 255
	orr	w1, w19, 256
	bl	waddch
.L4:
	add	x21, x21, 1
	b	.L2
	.cfi_endproc
.LFE1707:
	.size	_Z16highlight_searchmmi, .-_Z16highlight_searchmmi
	.align	2
	.global	_Z11search_textR10LinkedListRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS9_S9_RP4Node
	.type	_Z11search_textR10LinkedListRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS9_S9_RP4Node, %function
_Z11search_textR10LinkedListRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS9_S9_RP4Node:
.LFB1708:
	.cfi_startproc
	stp	x29, x30, [sp, -128]!
	.cfi_def_cfa_offset 128
	.cfi_offset 29, -128
	.cfi_offset 30, -120
	mov	x29, sp
	stp	x0, x5, [sp, 96]
	ldr	x0, [x1, 8]
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	stp	x25, x26, [sp, 64]
	stp	x27, x28, [sp, 80]
	.cfi_offset 19, -112
	.cfi_offset 20, -104
	.cfi_offset 21, -96
	.cfi_offset 22, -88
	.cfi_offset 23, -80
	.cfi_offset 24, -72
	.cfi_offset 25, -64
	.cfi_offset 26, -56
	.cfi_offset 27, -48
	.cfi_offset 28, -40
	str	x2, [sp, 112]
	cbz	x0, .L11
	ldr	x0, [sp, 96]
	adrp	x24, :got:LINES
	mov	x28, x1
	mov	x19, x3
	ldr	x27, [x24, #:got_lo12:LINES]
	mov	x21, x4
	ldr	x20, [x0]
	mov	x23, 0
	mov	w7, 1
	mov	x25, 3
.L13:
	cbnz	x20, .L20
.L11:
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	ldp	x29, x30, [sp], 128
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
.L20:
	.cfi_restore_state
	ldr	x26, [x24, #:got_lo12:LINES]
	mov	x2, 0
.L14:
	mov	x1, x28
	mov	x0, x20
	str	w7, [sp, 124]
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m
	ldr	w7, [sp, 124]
	mov	x22, x0
	cmn	x0, #1
	bne	.L19
	add	x23, x23, 1
	ldr	x20, [x20, 32]
	b	.L13
.L19:
	cbz	w7, .L16
	ldr	x0, [sp, 112]
	mov	w1, 3
	str	w22, [x0]
	ldr	w0, [x21]
	sub	w0, w1, w0
	add	w0, w0, w23
	str	w0, [x19]
	ldr	x0, [sp, 96]
	ldr	x1, [sp, 104]
	ldr	x0, [x0]
	str	x0, [x1]
	mov	w1, w23
	bl	_Z12list_advanceP4Nodei
	ldr	x1, [sp, 104]
	str	x0, [x1]
	ldr	w1, [x26]
	ldr	w0, [x19]
	sub	w2, w1, #1
	cmp	w0, w2
	blt	.L16
	sub	w1, w1, #2
	sub	w0, w0, w1
	ldr	w1, [x21]
	add	w0, w1, w0
	str	w0, [x21]
	ldr	w0, [x26]
	sub	w0, w0, #2
	str	w0, [x19]
.L16:
	ldr	w2, [x21]
	sub	x0, x25, w2, sxtw
	add	x0, x0, x23
	cmp	x0, 2
	bls	.L18
	ldr	w1, [x27]
	sub	w1, w1, #1
	cmp	x0, w1, sxtw
	bcs	.L18
	ldr	x1, [x28, 8]
	sub	w2, w25, w2
	add	w2, w2, w23
	mov	x0, x22
	bl	_Z16highlight_searchmmi
.L18:
	ldr	x2, [x28, 8]
	mov	w7, 0
	add	x2, x22, x2
	b	.L14
	.cfi_endproc
.LFE1708:
	.size	_Z11search_textR10LinkedListRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS9_S9_RP4Node, .-_Z11search_textR10LinkedListRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS9_S9_RP4Node
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"basic_string::replace"
.LC1:
	.string	"%s: __pos (which is %zu) > this->size() (which is %zu)"
	.text
	.align	2
	.global	_Z12replace_textR10LinkedListRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_
	.type	_Z12replace_textR10LinkedListRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_, %function
_Z12replace_textR10LinkedListRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_:
.LFB1709:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -32
	.cfi_offset 20, -24
	mov	x20, x1
	ldr	x1, [x1, 8]
	str	x21, [sp, 32]
	.cfi_offset 21, -16
	cbz	x1, .L23
	ldr	x19, [x0]
	mov	x21, x2
.L26:
	cbnz	x19, .L29
.L23:
	ldp	x19, x20, [sp, 16]
	ldr	x21, [sp, 32]
	ldp	x29, x30, [sp], 48
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
.L29:
	.cfi_restore_state
	mov	x1, x20
	mov	x0, x19
	mov	x2, 0
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m
	cmn	x0, #1
	beq	.L27
	ldr	x3, [x19, 8]
	ldp	x5, x4, [x21]
	ldr	x1, [x20, 8]
	cmp	x0, x3
	bls	.L28
	mov	x2, x0
	adrp	x1, .LC0
	adrp	x0, .LC1
	add	x1, x1, :lo12:.LC0
	add	x0, x0, :lo12:.LC1
	bl	_ZSt24__throw_out_of_range_fmtPKcz
.L28:
	sub	x2, x3, x0
	mov	x3, x5
	cmp	x2, x1
	csel	x2, x2, x1, ls
	mov	x1, x0
	mov	x0, x19
	ldp	x19, x20, [sp, 16]
	ldr	x21, [sp, 32]
	ldp	x29, x30, [sp], 48
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	b	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm
.L27:
	.cfi_restore_state
	ldr	x19, [x19, 32]
	b	.L26
	.cfi_endproc
.LFE1709:
	.size	_Z12replace_textR10LinkedListRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_, .-_Z12replace_textR10LinkedListRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_
	.section	.text.startup,"ax",@progbits
	.align	2
	.type	_GLOBAL__sub_I_search.cpp, %function
_GLOBAL__sub_I_search.cpp:
.LFB2061:
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
.LFE2061:
	.size	_GLOBAL__sub_I_search.cpp, .-_GLOBAL__sub_I_search.cpp
	.section	.init_array,"aw"
	.align	3
	.xword	_GLOBAL__sub_I_search.cpp
	.bss
	.set	.LANCHOR0,. + 0
	.type	_ZStL8__ioinit, %object
	.size	_ZStL8__ioinit, 1
_ZStL8__ioinit:
	.zero	1
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 11.3.0-1ubuntu1~22.04) 11.3.0"
	.section	.note.GNU-stack,"",@progbits
