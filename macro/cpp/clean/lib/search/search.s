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
	highlight_search_start:
		// Save x29 (frame pointer) and x30 (link register) on stack
		stp	x29, x30, [sp, -80]!
		// Set x29 to be the current stack pointer
		mov	x29, sp
		// Save x19 and x20 on the stack
		stp	x19, x20, [sp, 16]
		// Load the address of stdscr into x20
		adrp	x20, :got:stdscr
		ldr	x20, [x20, #:got_lo12:stdscr]
		// Save x23 and x24 on the stack
		stp	x23, x24, [sp, 48]
		// Move x0 to x24
		mov	x24, x0
		// Move x1 to x23
		mov	x23, x1
		// Move 256 to w1
		mov	w1, 256
		// Load the value at x20 into x0
		ldr	x0, [x20]
		// Save x21 and x22 on the stack
		stp	x21, x22, [sp, 32]
		// Move x2 to x22
		mov	w22, w2
		// Move 0 to x21
		mov	x21, 0
		// Move 0 to x2
		mov	x2, 0
		// Save x25 on the stack
		str	x25, [sp, 64]
		// Call function wattr_on
		bl	wattr_on
	.L2:
		// Load the value at x20 into x0
		ldr	x0, [x20]
		// Compare x21 with x23
		cmp	x21, x23
		// Branch if not equal to .L5
		bne	.L5
		// Load x19 and x20 from the stack
		ldp	x19, x20, [sp, 16]
		// Move 0 to x2
		mov	x2, 0
		// Load x21 and x22 from the stack
		ldp	x21, x22, [sp, 32]
		// Move 256 to w1
		mov	w1, 256
		// Load x23 and x24 from the stack
		ldp	x23, x24, [sp, 48]
		// Load x25 from the stack
		ldr	x25, [sp, 64]
		// Restore x29 (frame pointer) and x30 (link register) from the stack
		ldp	x29, x30, [sp], 80

		// Call function wattr_off
		b	wattr_off
	.L5:
		// Add w21 and w24 and store the result in w25
		add	w25, w21, w24
		// Move x22 to w1
		mov	w1, w22
		// Move x25 to w2
		mov	w2, w25
		// Call function wmove
		bl	wmove
		// Move return value to w19
		mov	w19, w0
		// Compare the return value with 1
		cmn	w0, #1
		// Branch if equal to .L3
		beq	.L3
		// Load the value at x20 into x0
		ldr	x0, [x20]
		// Call function winch
		bl	winch
		// Move return value to w19
		mov	w19, w0
	.L3:
		// Load the value at x20 into x0
		ldr	x0, [x20]
		// Move x25 to w2
		mov	w2, w25
		// Move x22 to w1
		mov	w1, w22
		// Call function wmove
		bl	wmove
		// Compare the return value with 1
		cmn	w0, #1
		// Branch if equal to .L4
		beq	.L4
		// Load the value at x20 into x0
		ldr	x0, [x20]
		// AND w19 with 255 and store the result in w19
		and	w19, w19, 255
		// ORR w19 with 256 and store the result in w1
		orr	w1, w19, 256
		// Call function waddch
		bl	waddch
	.L4:
		// Add 1 to x21
		add	x21, x21, 1
		// Branch to .L2
		b	.L2
	highlight_search_end:
		// Set the size of the function highlight_search
		.size	highlight_search, .-highlight_search
		
.align	2
.global	search_text
.type	search_text, %function
	search_text:
	search_text_start:
		// Save x29 (frame pointer) and x30 (link register) on stack
		stp	x29, x30, [sp, -128]!

		// Set x29 to be the current stack pointer
		mov	x29, sp
		// Save x0 and x5 on the stack
		stp	x0, x5, [sp, 96]
		// Load the value at x1+8 into x0
		ldr	x0, [x1, 8]
		// Save x19 and x20 on the stack
		stp	x19, x20, [sp, 16]
		// Save x21 and x22 on the stack
		stp	x21, x22, [sp, 32]
		// Save x23 and x24 on the stack
		stp	x23, x24, [sp, 48]
		// Save x25 and x26 on the stack
		stp	x25, x26, [sp, 64]
		// Save x27 and x28 on the stack
		stp	x27, x28, [sp, 80]

		// Store x2 on the stack at sp+112
		str	x2, [sp, 112]
		// Compare x0 with 0; If x0 == 0, branch to .L11
		cbz	x0, .L11
		// Load the value at sp+96 into x0
		ldr	x0, [sp, 96]
		// Load the address of LINES into x24
		adrp	x24, :got:LINES
		// Move x1 to x28
		mov	x28, x1
		// Move x3 to x19
		mov	x19, x3
		// Load the value at x24+:got_lo12:LINES into x27
		ldr	x27, [x24, #:got_lo12:LINES]
		// Move x4 to x21
		mov	x21, x4
		// Load the value at x0 into x20
		ldr	x20, [x0]
		// Move 0 to x23
		mov	x23, 0
		// Move 1 to w7
		mov	w7, 1
		// Move 3 to x25
		mov	x25, 3
	.L13:
		// Compare x20 with 0; If x20 != 0, branch to .L20
		cbnz	x20, .L20
	.L11:
		// Load x19 and x20 from the stack
		ldp	x19, x20, [sp, 16]
		// Load x21 and x22 from the stack
		ldp	x21, x22, [sp, 32]
		// Load x23 and x24 from the stack
		ldp	x23, x24, [sp, 48]
		// Load x25 and x26 from the stack
		ldp	x25, x26, [sp, 64]
		// Load x27 and x28 from the stack
		ldp	x27, x28, [sp, 80]
		// Restore x29 (frame pointer) and x30 (link register) from the stack
		ldp	x29, x30, [sp], 128

		// Return from the function
		ret
	.L20:
		// Load the value at x24+:got_lo12:LINES into x26
		ldr	x26, [x24, #:got_lo12:LINES]
		// Move 0 to x2
		mov	x2, 0
	.L14:
		// Move x28 to x1
		mov	x1, x28
		// Move x20 to x0
		mov	x0, x20
		// Store w7 on the stack at sp+124
		str	w7, [sp, 124]
		// Call function _ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m
		bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m
		// Load w7 from the stack at sp+124
		ldr	w7, [sp, 124]
		// Move x0 to x22
		mov	x22, x0
		// Compare x0 with 1
		cmn	x0, #1
		// If x0 != 1, branch to .L19
		bne	.L19
		add	x23, x23, 1
		// Load the value at x20+32 into x20
		ldr	x20, [x20, 32]
		// Branch to .L13
		b	.L13
	.L19:
		// If w7 != 0, branch to .L16
		cbz	w7, .L16
		// Load the value at x2 into x0
		ldr	x0, [sp, 112]
		// Move 3 to w1
		mov	w1, 3
		// Store w22 into memory location pointed to by x0
		str	w22, [x0]
		// Load the value at x21 into w0
		ldr	w0, [x21]
		// Subtract w1 from w0 and store the result in w0
		sub	w0, w1, w0
		// Add w0 and w23 and store the result in w0
		add	w0, w0, w23
		// Store w0 into memory location pointed to by x19
		str	w0, [x19]
		// Load the value at sp+96 into x0
		ldr	x0, [sp, 96]
		// Load the value at sp+104 into x1
		ldr	x1, [sp, 104]
		// Load the value at x0 into x0
		ldr	x0, [x0]
		// Store x0 into memory location pointed to by x1
		str	x0, [x1]
		// Move w23 to w1
		mov	w1, w23
		// Call function list_advance
		bl	list_advance
		// Load the value at sp+104 into x1
		ldr	x1, [sp, 104]
		// Store x0 into memory location pointed to by x1
		str	x0, [x1]
		// Load the value at x26 into w1
		ldr	w1, [x26]
		// Load the value at x19 into w0
		ldr	w0, [x19]
		// Subtract 1 from w1 and store the result in w2
		sub	w2, w1, #1
		// Compare w0 with w2
		cmp	w0, w2
		// Branch if less than to .L16
		blt	.L16
		// Subtract 1 from w1 and store the result in w1
		sub	w1, w1, #2
		// Subtract w1 from w0 and store the result in w0
		sub	w0, w0, w1
		// Load the value at x21 into w1
		ldr	w1, [x21]
		// Add w1 to w0 and store the result in w0
		add	w0, w1, w0
		// Store w0 into memory location pointed to by x21
		str	w0, [x21]
		// Load the value at x26 into w0
		ldr	w0, [x26]
		// Subtract 2 from w0 and store the result in w0
		sub	w0, w0, #2
		// Store w0 into memory location pointed to by x19
		str	w0, [x19]
	.L16:
		// Load the value at x21 into w2
		ldr	w2, [x21]
		// Subtract x25 from w2, sign-extend result, and store the result in x0
		sub	x0, x25, w2, sxtw
		// Add x0 and x23 and store the result in x0
		add	x0, x0, x23
		// Compare x0 with 2
		cmp	x0, 2
		// Branch if less than or equal to .L18
		bls	.L18
		// Load the value at x27 into w1
		ldr	w1, [x27]
		// Subtract 1 from w1 and store the result in w1
		sub	w1, w1, #1
		// Compare x0 with w1, sign-extend result
		cmp	x0, w1, sxtw
		// Branch if carry set to .L18
		bcs	.L18
		// Load the value at x28+8 into x1
		ldr	x1, [x28, 8]
		// Subtract w25 from w2 and store the result in w2
		sub	w2, w25, w2
		// Add w2 and w23 and store the result in w2
		add	w2, w2, w23
		// Move x22 to x0
		mov	x0, x22
		// Call function highlight_search
		bl	highlight_search
	.L18:
		// Load the value at x28+8 into x2
		ldr	x2, [x28, 8]
		// Move 0 to w7
		mov	w7, 0
		// Add x22 and x2 and store the result in x2
		add	x2, x22, x2
		// Branch to .L14
		b	.L14
	search_text_end:
		// Set the size of the function search_text
		.size	search_text, .-search_text

	.text
	.align	2
	.global	replace_text
	.type	replace_text, %function
		replace_text:
		replace_text_start:
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
		replace_text_end:
			.size	replace_text, .-replace_text
		