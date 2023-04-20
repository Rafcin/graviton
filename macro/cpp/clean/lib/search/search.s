.text
bs_str: 
	.string "basic_string::replace"
pos_str: 
	.string "%s: __pos (which is %zu) > this->size() (which is %zu)"

.text
.align	2
.global	highlight_search
.type	highlight_search, %function
	highlight_search:
	.LFB1707:
		stp	x29, x30, [sp, -80]!
		mov	x29, sp
		stp	x19, x20, [sp, 16]
		adrp	x20, :got:stdscr
		ldr	x20, [x20, #:got_lo12:stdscr]
		stp	x23, x24, [sp, 48]
		mov	x24, x0
		mov	x23, x1
		mov	w1, 256
		ldr	x0, [x20]
		stp	x21, x22, [sp, 32]
		mov	w22, w2
		mov	x21, 0
		mov	x2, 0
		str	x25, [sp, 64]
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

		b	wattr_off
	.L5:
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
	.LFE1707:
		.size	highlight_search, .-highlight_search
		
.align	2
.global	search_text
.type	search_text, %function
	search_text:
	.LFB1708:
		stp	x29, x30, [sp, -128]!

		mov	x29, sp
		stp	x0, x5, [sp, 96]
		ldr	x0, [x1, 8]
		stp	x19, x20, [sp, 16]
		stp	x21, x22, [sp, 32]
		stp	x23, x24, [sp, 48]
		stp	x25, x26, [sp, 64]
		stp	x27, x28, [sp, 80]

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

		ret
	.L20:
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
		bl	list_advance
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
		bl	highlight_search
	.L18:
		ldr	x2, [x28, 8]
		mov	w7, 0
		add	x2, x22, x2
		b	.L14
	.LFE1708:
		.size	search_text, .-search_text

.text
.align	2
.global	replace_text
.type	replace_text, %function
	replace_text:
	.LFB1709:
		stp	x29, x30, [sp, -48]!
		mov	x29, sp
		stp	x19, x20, [sp, 16]
		mov	x20, x1
		ldr	x1, [x1, 8]
		str	x21, [sp, 32]
		cbz	x1, .L23
		ldr	x19, [x0]
		mov	x21, x2
	.L26:
		cbnz	x19, .L29
	.L23:
		ldp	x19, x20, [sp, 16]
		ldr	x21, [sp, 32]
		ldp	x29, x30, [sp], 48
		ret
	.L29:
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
		adrp	x1, bs_str
		adrp	x0, pos_str
		add	x1, x1, :lo12:bs_str
		add	x0, x0, :lo12:pos_str
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
		b	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm
	.L27:
		ldr	x19, [x19, 32]
		b	.L26
	.LFE1709:
		.size	replace_text, .-replace_text
	