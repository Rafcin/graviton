	.arch armv8-a
	.file	"text_editor.cpp"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Heap Memory Consumption: %zu bytes | Number of Nodes: %zu"
	.text
	.align	2
	.global	_Z19display_memory_infomm
	.type	_Z19display_memory_infomm, %function
_Z19display_memory_infomm:
.LFB1707:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x2, 0
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -32
	.cfi_offset 20, -24
	adrp	x19, :got:stdscr
	mov	x20, x0
	ldr	x19, [x19, #:got_lo12:stdscr]
	ldr	x0, [x19]
	str	x21, [sp, 32]
	.cfi_offset 21, -16
	mov	x21, x1
	mov	w1, 2097152
	bl	wattr_on
	mov	x4, x21
	mov	x3, x20
	mov	w1, 0
	adrp	x2, .LC0
	mov	w0, 1
	add	x2, x2, :lo12:.LC0
	bl	mvprintw
	ldr	x0, [x19]
	mov	x2, 0
	ldp	x19, x20, [sp, 16]
	mov	w1, 2097152
	ldr	x21, [sp, 32]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	b	wattr_off
	.cfi_endproc
.LFE1707:
	.size	_Z19display_memory_infomm, .-_Z19display_memory_infomm
	.section	.rodata.str1.1
.LC1:
	.string	"%s"
	.text
	.align	2
	.global	_Z14get_user_inputB5cxx11PKc
	.type	_Z14get_user_inputB5cxx11PKc, %function
_Z14get_user_inputB5cxx11PKc:
.LFB1708:
	.cfi_startproc
	stp	x29, x30, [sp, -320]!
	.cfi_def_cfa_offset 320
	.cfi_offset 29, -320
	.cfi_offset 30, -312
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -304
	.cfi_offset 20, -296
	mov	x20, x0
	adrp	x0, :got:__stack_chk_guard
	str	x21, [sp, 32]
	.cfi_offset 21, -288
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
	adrp	x2, .LC1
	ldr	x0, [x0, #:got_lo12:LINES]
	add	x2, x2, :lo12:.LC1
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
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1708:
	.size	_Z14get_user_inputB5cxx11PKc, .-_Z14get_user_inputB5cxx11PKc
	.align	2
	.global	_Z12handle_mouseiiRiS_S_R10LinkedList
	.type	_Z12handle_mouseiiRiS_S_R10LinkedList, %function
_Z12handle_mouseiiRiS_S_R10LinkedList:
.LFB1709:
	.cfi_startproc
	cmp	w1, 1
	beq	.L13
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -48
	.cfi_offset 20, -40
	mov	w20, w1
	adrp	x1, :got:LINES
	stp	x21, x22, [sp, 32]
	.cfi_offset 21, -32
	.cfi_offset 22, -24
	mov	x22, x2
	mov	x21, x3
	ldr	x1, [x1, #:got_lo12:LINES]
	ldr	w4, [x1]
	str	x23, [sp, 48]
	.cfi_offset 23, -16
	mov	w23, w0
	sub	w19, w4, #3
	mov	x0, x5
	bl	_Z9list_sizeR10LinkedList
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
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 23
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
.L10:
	.cfi_restore_state
	cmp	w20, w4
	ble	.L7
	str	w23, [x22]
	str	w4, [x21]
	b	.L7
.L13:
	.cfi_def_cfa_offset 0
	.cfi_restore 19
	.cfi_restore 20
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 23
	.cfi_restore 29
	.cfi_restore 30
	ret
	.cfi_endproc
.LFE1709:
	.size	_Z12handle_mouseiiRiS_S_R10LinkedList, .-_Z12handle_mouseiiRiS_S_R10LinkedList
	.section	.text.startup,"ax",@progbits
	.align	2
	.type	_GLOBAL__sub_I_text_editor.cpp, %function
_GLOBAL__sub_I_text_editor.cpp:
.LFB2068:
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
.LFE2068:
	.size	_GLOBAL__sub_I_text_editor.cpp, .-_GLOBAL__sub_I_text_editor.cpp
	.section	.init_array,"aw"
	.align	3
	.xword	_GLOBAL__sub_I_text_editor.cpp
	.bss
	.set	.LANCHOR0,. + 0
	.type	_ZStL8__ioinit, %object
	.size	_ZStL8__ioinit, 1
_ZStL8__ioinit:
	.zero	1
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 11.3.0-1ubuntu1~22.04) 11.3.0"
	.section	.note.GNU-stack,"",@progbits
