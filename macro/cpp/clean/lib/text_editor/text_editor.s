.text
dmi_label: 
	.string	"Heap Memory Consumption - %zu bytes | Number of Nodes - %zu"
fmt_label: 
	.string	"%s"

.text
.align	2
.global	display_memory_info
.type	display_memory_info, %function
	display_memory_info:
	.LFB1707:
		stp	x29, x30, [sp, -48]!
		mov	x2, 0
		mov	x29, sp
		stp	x19, x20, [sp, 16]
		adrp	x19, :got:stdscr
		mov	x20, x0
		ldr	x19, [x19, #:got_lo12:stdscr]
		ldr	x0, [x19]
		str	x21, [sp, 32]
		mov	x21, x1
		mov	w1, 2097152
		bl	wattr_on
		mov	x4, x21
		mov	x3, x20
		mov	w1, 0
		adrp	x2, dmi_label
		mov	w0, 1
		add	x2, x2, :lo12:dmi_label
		bl	mvprintw
		ldr	x0, [x19]
		mov	x2, 0
		ldp	x19, x20, [sp, 16]
		mov	w1, 2097152
		ldr	x21, [sp, 32]
		ldp	x29, x30, [sp], 48
		b	wattr_off
	.LFE1707:
		.size	display_memory_info, .-display_memory_info
	
.text
.align	2
.global	get_user_input
.type	get_user_input, %function
	get_user_input:
	.LFB1708:
		stp	x29, x30, [sp, -320]!
		mov	x29, sp
		stp	x19, x20, [sp, 16]
		mov	x20, x0
		adrp	x0, :got:__stack_chk_guard
		str	x21, [sp, 32]
		mov	x19, x8
		ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
		ldr	x1, [x0]
		str	x1, [sp, 312]
		mov	x1, 0
		bl	nocbreak
		bl	echo
		mov	w0, 1
		bl	curs_set
		adrp	x0, :got:LINES
		mov	x3, x20
		mov	w1, 0
		adrp	x2, fmt_label
		ldr	x0, [x0, #:got_lo12:LINES]
		add	x2, x2, :lo12:fmt_label
		add	x20, sp, 56
		ldr	w0, [x0]
		sub	w0, w0, #1
		bl	mvprintw
		adrp	x0, :got:stdscr
		mov	x1, x20
		mov	w2, -1
		ldr	x0, [x0, #:got_lo12:stdscr]
		ldr	x0, [x0]
		bl	wgetnstr
		mov	w0, 0
		bl	curs_set
		bl	noecho
		bl	cbreak
		add	x0, x19, 16
		str	x0, [x19]
		mov	x0, x20
		bl	strlen
		str	x0, [sp, 48]
		add	x21, x20, x0
		cmp	x0, 15
		bls	.L4
		add	x1, sp, 48
		mov	x0, x19
		mov	x2, 0
		bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm
		str	x0, [x19]
		ldr	x0, [sp, 48]
		str	x0, [x19, 16]
	.L4:
		ldr	x0, [x19]
		mov	x2, x21
		mov	x1, x20
		bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_
		ldr	x1, [x19]
		ldr	x0, [sp, 48]
		str	x0, [x19, 8]
		strb	wzr, [x1, x0]
		adrp	x0, :got:__stack_chk_guard
		ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
		ldr	x2, [sp, 312]
		ldr	x1, [x0]
		subs	x2, x2, x1
		mov	x1, 0
		beq	.L5
		bl	__stack_chk_fail
	.L5:
		mov	x0, x19
		ldp	x19, x20, [sp, 16]
		ldr	x21, [sp, 32]
		ldp	x29, x30, [sp], 320

		ret
	.LFE1708:
		.size	get_user_input, .-get_user_input

.align	2
.global	handle_mouse
.type	handle_mouse, %function
	handle_mouse:
	.LFB1709:
		cmp	w1, 1
		beq	.L13
		stp	x29, x30, [sp, -64]!
		mov	x29, sp
		stp	x19, x20, [sp, 16]
		mov	w20, w1
		adrp	x1, :got:LINES
		stp	x21, x22, [sp, 32]
		mov	x22, x2
		mov	x21, x3
		ldr	x1, [x1, #:got_lo12:LINES]
		ldr	w4, [x1]
		str	x23, [sp, 48]
		mov	w23, w0
		sub	w19, w4, #3
		mov	x0, x5
		bl	list_size
		cmp	w19, w0
		csel	w4, w19, w0, lt
		cmp	w20, 2
		ccmp	w20, w4, 0, gt
		bgt	.L10
		str	w23, [x22]
		str	w20, [x21]
	.L7:
		ldp	x19, x20, [sp, 16]
		ldp	x21, x22, [sp, 32]
		ldr	x23, [sp, 48]
		ldp	x29, x30, [sp], 64

		ret
	.L10:
		cmp	w20, w4
		ble	.L7
		str	w23, [x22]
		str	w4, [x21]
		b	.L7
	.L13:
		ret
	.LFE1709:
		.size	handle_mouse, .-handle_mouse
