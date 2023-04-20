	.arch armv8-a
	.file	"main.cpp"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%s: __pos (which is %zu) > this->size() (which is %zu)"
	.text
	.align	2
	.type	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.isra.0, %function
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.isra.0:
.LFB2096:
	.cfi_startproc
	mov	x3, x0
	mov	x0, x1
	cmp	x1, x3
	bls	.L2
	stp	x29, x30, [sp, -16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x1, x2
	mov	x2, x0
	mov	x29, sp
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	_ZSt24__throw_out_of_range_fmtPKcz
.L2:
	.cfi_def_cfa_offset 0
	.cfi_restore 29
	.cfi_restore 30
	ret
	.cfi_endproc
.LFE2096:
	.size	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.isra.0, .-_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.isra.0
	.align	2
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0, %function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0:
.LFB2097:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x2, x1
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -16
	.cfi_offset 20, -8
	mov	x19, x1
	mov	x20, x0
	ldr	x1, [x2], 16
	ldr	x0, [x0]
	cmp	x1, x2
	bne	.L7
	cmp	x20, x19
	beq	.L8
	ldr	x2, [x19, 8]
	cbz	x2, .L9
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm
.L9:
	ldr	x1, [x20]
	ldr	x0, [x19, 8]
	str	x0, [x20, 8]
	strb	wzr, [x1, x0]
.L8:
	ldr	x0, [x19]
	str	xzr, [x19, 8]
	strb	wzr, [x0]
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 32
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
.L7:
	.cfi_restore_state
	add	x4, x20, 16
	cmp	x0, x4
	beq	.L12
	ldr	x3, [x20, 16]
.L10:
	str	x1, [x20]
	ldr	x1, [x19, 8]
	str	x1, [x20, 8]
	ldr	x1, [x19, 16]
	str	x1, [x20, 16]
	cbz	x0, .L11
	str	x0, [x19]
	str	x3, [x19, 16]
	b	.L8
.L12:
	mov	x0, 0
	b	.L10
.L11:
	str	x2, [x19]
	b	.L8
	.cfi_endproc
.LFE2097:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	.section	.rodata.str1.1
.LC1:
	.string	""
.LC2:
	.string	"%s"
.LC3:
	.string	"basic_string::erase"
.LC4:
	.string	"basic_string::insert"
	.section	.text.startup,"ax",@progbits
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1707:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1707
	stp	x29, x30, [sp, -384]!
	.cfi_def_cfa_offset 384
	.cfi_offset 29, -384
	.cfi_offset 30, -376
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -368
	.cfi_offset 20, -360
	mov	w20, w0
	adrp	x0, :got:__stack_chk_guard
	stp	x21, x22, [sp, 32]
	.cfi_offset 21, -352
	.cfi_offset 22, -344
	mov	x21, x1
	adrp	x19, :got:stdscr
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	stp	x23, x24, [sp, 48]
	.cfi_offset 23, -336
	.cfi_offset 24, -328
	add	x23, sp, 184
	stp	x25, x26, [sp, 64]
	stp	x27, x28, [sp, 80]
	.cfi_offset 25, -320
	.cfi_offset 26, -312
	.cfi_offset 27, -304
	.cfi_offset 28, -296
	ldr	x1, [x0]
	str	x1, [sp, 376]
	mov	x1, 0
.LEHB0:
	bl	initscr
	bl	raw
	ldr	x0, [x19, #:got_lo12:stdscr]
	mov	w1, 1
	ldr	x0, [x0]
	bl	keypad
	bl	noecho
.LEHE0:
	str	wzr, [sp, 124]
	mov	w0, 3
	stp	wzr, w0, [sp, 116]
	add	x0, sp, 200
	stp	xzr, xzr, [sp, 128]
	cmp	w20, 1
	str	xzr, [sp, 144]
	add	x20, sp, 144
	str	x0, [sp, 184]
	str	xzr, [sp, 192]
	strb	wzr, [sp, 200]
	bgt	.L18
.L20:
	adrp	x2, .LC1
	add	x2, x2, :lo12:.LC1
	add	x0, sp, 360
	mov	x1, x2
	str	x0, [sp, 344]
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_
	ldr	x0, [sp, 344]
	str	xzr, [sp, 352]
	add	x21, sp, 344
	mov	x1, x21
	strb	wzr, [x0]
	mov	x0, x20
.LEHB1:
	bl	_Z14list_push_backR10LinkedListRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.LEHE1:
	b	.L107
.L18:
	ldr	x21, [x21, 8]
	mov	x0, x21
	bl	strlen
	mov	x3, x21
	mov	x4, x0
	mov	x2, 0
	mov	x0, x23
	mov	x1, 0
.LEHB2:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm
	ldr	x0, [sp, 184]
	add	x3, sp, 136
	add	x2, sp, 128
	mov	x1, x20
	bl	_Z9open_filePKcR10LinkedListRmS3_
.LEHE2:
	ldr	x0, [sp, 144]
	cbz	x0, .L20
.L21:
	ldr	x0, [sp, 144]
	str	x0, [sp, 152]
	add	x0, sp, 232
	str	x0, [sp, 216]
	add	x0, sp, 264
	str	xzr, [sp, 224]
	strb	wzr, [sp, 232]
	str	x0, [sp, 248]
	str	xzr, [sp, 256]
	strb	wzr, [sp, 264]
.LEHB3:
	bl	has_colors
	b	.L108
.L107:
	mov	x0, x21
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	ldr	x0, [sp, 136]
	add	x0, x0, 1
	str	x0, [sp, 136]
	b	.L21
.L108:
	tst	w0, 255
	beq	.L22
	bl	start_color
	mov	w2, 0
	mov	w1, 3
	mov	w0, 1
	bl	init_pair
.L22:
	mov	w2, 4
	mov	w1, 7
	mov	w0, 1
	bl	init_pair
	mov	x1, 0
	mov	w0, 536870911
	bl	mousemask
	adrp	x0, :got:NAME
	adrp	x22, :got:LINES
	ldr	x0, [x0, #:got_lo12:NAME]
	str	x0, [sp, 96]
	ldr	x0, [x22, #:got_lo12:LINES]
	str	x0, [sp, 104]
.L56:
	bl	clear
	ldr	x0, [x19, #:got_lo12:stdscr]
	mov	x2, 0
	mov	w1, 262144
	ldr	x0, [x0]
	bl	wattr_on
	ldr	x0, [sp, 96]
	mov	w1, 0
	ldr	x2, [x0]
	mov	w0, 0
	bl	mvprintw
	ldr	x0, [x19, #:got_lo12:stdscr]
	mov	x2, 0
	mov	w1, 262144
	ldr	x0, [x0]
	bl	wattr_off
	ldp	x0, x1, [sp, 128]
	bl	_Z19display_memory_infomm
	ldr	x21, [sp, 144]
	adrp	x25, .LC2
	add	x25, x25, :lo12:.LC2
	mov	w24, 0
	mov	w0, 3
.L23:
	cbnz	x21, .L25
	add	x24, sp, 152
	add	x27, sp, 124
	add	x26, sp, 120
	add	x25, sp, 116
	add	x21, sp, 216
	mov	x5, x24
	mov	x4, x27
	mov	x3, x26
	mov	x2, x25
	mov	x1, x21
	mov	x0, x20
	bl	_Z11search_textR10LinkedListRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS9_S9_RP4Node
	b	.L109
.L25:
	ldr	w1, [sp, 124]
	cmp	w1, w24
	bgt	.L24
	ldr	x1, [sp, 104]
	ldr	w1, [x1]
	sub	w1, w1, #1
	cmp	w1, w0
	ble	.L24
	ldr	x3, [x21]
	add	w26, w0, 1
	mov	x2, x25
	mov	w1, 0
	bl	mvprintw
	mov	w0, w26
.L24:
	add	w24, w24, 1
	ldr	x21, [x21, 32]
	b	.L23
.L109:
	ldp	w1, w0, [sp, 116]
	bl	move
	ldr	x0, [x19, #:got_lo12:stdscr]
	mov	x2, 0
	mov	w1, 2359296
	ldr	x0, [x0]
	bl	wattr_on
	adrp	x1, :got:CONTROLS
	ldr	x0, [x22, #:got_lo12:LINES]
	ldr	x1, [x1, #:got_lo12:CONTROLS]
	ldr	w0, [x0]
	ldr	x2, [x1]
	sub	w0, w0, #1
	mov	w1, 0
	bl	mvprintw
	ldr	x0, [x19, #:got_lo12:stdscr]
	mov	x2, 0
	mov	w1, 2359296
	ldr	x0, [x0]
	bl	wattr_off
	ldp	w1, w0, [sp, 116]
	bl	move
	ldr	x0, [x19, #:got_lo12:stdscr]
	ldr	x0, [x0]
	bl	wgetch
	mov	w28, w0
	cmp	w0, 263
	bgt	.L26
	cmp	w0, 257
	bgt	.L27
	cmp	w0, 24
	bgt	.L28
	cmp	w0, 9
	bgt	.L29
.L30:
	mov	w0, w28
	bl	isprint
	cbz	w0, .L56
	ldr	x21, [sp, 152]
	adrp	x2, .LC4
	ldrsw	x1, [sp, 116]
	and	w28, w28, 255
	add	x2, x2, :lo12:.LC4
	ldr	x0, [x21, 8]
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.isra.0
	b	.L110
.L27:
	sub	w1, w0, #258
	cmp	w1, 5
	bhi	.L30
	adrp	x0, .L32
	add	x0, x0, :lo12:.L32
	ldrh	w0, [x0,w1,uxtw #1]
	adr	x1, .Lrtx32
	add	x0, x1, w0, sxth #2
	br	x0
.Lrtx32:
	.section	.rodata
	.align	0
	.align	2
.L32:
	.2byte	(.L36 - .Lrtx32) / 4
	.2byte	(.L35 - .Lrtx32) / 4
	.2byte	(.L34 - .Lrtx32) / 4
	.2byte	(.L33 - .Lrtx32) / 4
	.2byte	(.L30 - .Lrtx32) / 4
	.2byte	(.L31 - .Lrtx32) / 4
	.section	.text.startup
.L29:
	sub	w1, w0, #10
	cmp	w1, 14
	bhi	.L30
	adrp	x0, .L38
	add	x0, x0, :lo12:.L38
	ldrh	w0, [x0,w1,uxtw #1]
	adr	x1, .Lrtx38
	add	x0, x1, w0, sxth #2
	br	x0
.Lrtx38:
	.section	.rodata
	.align	0
	.align	2
.L38:
	.2byte	(.L42 - .Lrtx38) / 4
	.2byte	(.L30 - .Lrtx38) / 4
	.2byte	(.L30 - .Lrtx38) / 4
	.2byte	(.L30 - .Lrtx38) / 4
	.2byte	(.L30 - .Lrtx38) / 4
	.2byte	(.L41 - .Lrtx38) / 4
	.2byte	(.L30 - .Lrtx38) / 4
	.2byte	(.L30 - .Lrtx38) / 4
	.2byte	(.L30 - .Lrtx38) / 4
	.2byte	(.L30 - .Lrtx38) / 4
	.2byte	(.L40 - .Lrtx38) / 4
	.2byte	(.L30 - .Lrtx38) / 4
	.2byte	(.L30 - .Lrtx38) / 4
	.2byte	(.L39 - .Lrtx38) / 4
	.2byte	(.L37 - .Lrtx38) / 4
	.section	.text.startup
.L28:
	cmp	w0, 127
	bne	.L30
.L31:
	ldr	w21, [sp, 116]
	cmp	w21, 0
	cbnz	w21, .L49
	ldr	w1, [sp, 120]
	cmp	w1, 3
	ble	.L56
	ldr	w0, [sp, 124]
	sub	w1, w1, #4
	add	w1, w1, w0
	ldr	x0, [sp, 144]
	bl	_Z12list_advanceP4Nodei
	b	.L111
.L26:
	cmp	w0, 343
	beq	.L42
	cmp	w0, 409
	beq	.L43
	cmp	w0, 330
	bne	.L30
	ldr	x25, [sp, 152]
	ldr	w21, [sp, 116]
	ldr	x0, [x25, 8]
	cmp	w21, w0
	bge	.L48
	sxtw	x21, w21
	adrp	x2, .LC3
	mov	x1, x21
	add	x2, x2, :lo12:.LC3
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.isra.0
	b	.L112
.L43:
	add	x0, sp, 160
	bl	getmouse
	cbnz	w0, .L56
	ldp	w0, w1, [sp, 164]
	mov	x5, x20
	mov	x4, x27
	mov	x3, x26
	mov	x2, x25
	bl	_Z12handle_mouseiiRiS_S_R10LinkedList
	ldp	w1, w0, [sp, 116]
	bl	move
	b	.L56
.L39:
	ldr	x0, [x19, #:got_lo12:stdscr]
	mov	x2, 0
	mov	w1, 2359296
	ldr	x0, [x0]
	bl	wattr_on
	adrp	x0, :got:SEARCH
	add	x28, sp, 280
	mov	x8, x28
	ldr	x0, [x0, #:got_lo12:SEARCH]
	ldr	x0, [x0]
	bl	_Z14get_user_inputB5cxx11PKc
	mov	x1, x28
	mov	x0, x21
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	mov	x0, x28
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	ldr	x0, [x19, #:got_lo12:stdscr]
	mov	x2, 0
	mov	w1, 2359296
	ldr	x0, [x0]
	bl	wattr_off
	mov	x5, x24
	mov	x4, x27
	mov	x3, x26
	mov	x2, x25
	mov	x1, x21
	mov	x0, x20
	bl	_Z11search_textR10LinkedListRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS9_S9_RP4Node
	ldp	w1, w0, [sp, 116]
	bl	move
	b	.L101
.L40:
	ldr	x0, [x19, #:got_lo12:stdscr]
	mov	x2, 0
	mov	w1, 2359296
	ldr	x0, [x0]
	bl	wattr_on
	adrp	x0, :got:SEARCHFOR
	add	x24, sp, 312
	mov	x8, x24
	ldr	x0, [x0, #:got_lo12:SEARCHFOR]
	ldr	x0, [x0]
	bl	_Z14get_user_inputB5cxx11PKc
	mov	x1, x24
	mov	x0, x21
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	add	x25, sp, 344
	mov	x0, x24
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	adrp	x0, :got:REPLACEWITH
	mov	x8, x25
	ldr	x0, [x0, #:got_lo12:REPLACEWITH]
	ldr	x0, [x0]
	bl	_Z14get_user_inputB5cxx11PKc
	mov	x1, x25
	add	x24, sp, 248
	mov	x0, x24
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.isra.0
	mov	x0, x25
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	ldr	x0, [x19, #:got_lo12:stdscr]
	mov	x2, 0
	mov	w1, 2359296
	ldr	x0, [x0]
	bl	wattr_off
	mov	x2, x24
	mov	x1, x21
	mov	x0, x20
	bl	_Z12replace_textR10LinkedListRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_
.L101:
	bl	refresh
	b	.L56
.L37:
	mov	x0, x20
	bl	_Z10list_clearR10LinkedList
	bl	endwin
	add	x0, sp, 248
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	mov	x0, x21
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	mov	x0, x23
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 376]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L61
	bl	__stack_chk_fail
.L41:
	ldr	x0, [sp, 184]
	mov	x1, x20
	bl	_Z9save_filePKcRK10LinkedList
	b	.L56
.L112:
	ldr	x2, [x25, 8]
	mov	x1, x21
	mov	x0, x25
	subs	x2, x2, x21
	csinc	x2, x2, xzr, eq
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm
	b	.L56
.L48:
	ldr	x0, [x25, 32]
	cbz	x0, .L56
	ldp	x1, x2, [x0]
	mov	x0, x25
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm
	mov	x0, x24
	bl	_Z15list_erase_nextRP4Node
	ldr	x0, [sp, 136]
	sub	x0, x0, #1
	str	x0, [sp, 136]
	b	.L56
.L111:
	ldr	x1, [sp, 152]
	ldr	x2, [x1, 8]
	ldr	x1, [x1]
	str	x0, [sp, 160]
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm
	add	x0, sp, 160
	bl	_Z15list_erase_nextRP4Node
	ldr	x0, [sp, 136]
	sub	x0, x0, #1
	str	x0, [sp, 136]
	ldr	x0, [sp, 160]
	ldr	x0, [x0, 8]
	str	w0, [sp, 116]
	ldr	w0, [sp, 120]
	sub	w0, w0, #1
	str	w0, [sp, 120]
	b	.L56
.L49:
	ble	.L56
	ldr	x24, [sp, 152]
	sub	w21, w21, #1
	adrp	x2, .LC3
	add	x2, x2, :lo12:.LC3
	sxtw	x21, w21
	ldr	x0, [x24, 8]
	mov	x1, x21
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.isra.0
	ldr	x2, [x24, 8]
	mov	x1, x21
	mov	x0, x24
	subs	x2, x2, x21
	csinc	x2, x2, xzr, eq
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm
	ldr	w0, [sp, 116]
.L102:
	sub	w0, w0, #1
.L105:
	str	w0, [sp, 116]
	b	.L56
.L42:
	adrp	x0, :got:NODE_MEMORY_SIZE
	add	x21, sp, 344
	mov	x8, x21
	mov	x2, -1
	ldr	x0, [x0, #:got_lo12:NODE_MEMORY_SIZE]
	ldrsw	x1, [x0]
	ldr	x0, [sp, 128]
	add	x0, x0, x1
	str	x0, [sp, 128]
	ldr	x0, [sp, 136]
	ldrsw	x1, [sp, 116]
	add	x0, x0, 1
	str	x0, [sp, 136]
	ldr	x0, [sp, 152]
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm
.LEHE3:
	ldr	x25, [sp, 152]
	adrp	x2, .LC3
	ldrsw	x24, [sp, 116]
	add	x2, x2, :lo12:.LC3
	ldr	x0, [x25, 8]
	mov	x1, x24
.LEHB4:
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.isra.0
	ldr	x0, [x25]
	str	x24, [x25, 8]
	strb	wzr, [x0, x24]
	mov	x0, x21
	bl	_Z9make_nodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.LEHE4:
	ldr	x1, [sp, 152]
	ldr	x2, [x1, 32]
	str	x2, [x0, 32]
	str	x0, [x1, 32]
	ldr	x1, [x22, #:got_lo12:LINES]
	ldr	w2, [sp, 120]
	ldr	w1, [x1]
	add	w3, w2, 1
	stp	wzr, w3, [sp, 116]
	sub	w1, w1, #1
	cmp	w3, w1
	blt	.L50
	ldr	w1, [sp, 124]
	add	w1, w1, 1
	stp	w2, w1, [sp, 120]
.L50:
	str	x0, [sp, 152]
	mov	x0, x21
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	b	.L56
.L35:
	ldp	w1, w0, [sp, 120]
	cmp	w1, 3
	ble	.L51
	sub	w1, w1, #1
	str	w1, [sp, 120]
.L52:
	ldp	w0, w1, [sp, 120]
	sub	w0, w0, #3
	add	w1, w0, w1
	ldr	x0, [sp, 144]
.LEHB5:
	bl	_Z12list_advanceP4Nodei
	b	.L103
.L51:
	cmp	w0, 0
	ble	.L52
	sub	w0, w0, #1
	str	w0, [sp, 124]
	b	.L52
.L36:
	ldr	x2, [x22, #:got_lo12:LINES]
	ldr	x0, [sp, 152]
	ldr	w2, [x2]
	ldr	w1, [sp, 120]
	sub	w2, w2, #2
	ldr	x0, [x0, 32]
	cmp	w2, w1
	ble	.L53
	cbz	x0, .L56
	add	w1, w1, 1
	str	w1, [sp, 120]
.L103:
	str	x0, [sp, 152]
	b	.L56
.L53:
	cbz	x0, .L56
	ldr	w1, [sp, 124]
	add	w1, w1, 1
	str	w1, [sp, 124]
	b	.L103
.L34:
	ldr	w0, [sp, 116]
	cmp	w0, 0
	bgt	.L102
	ldr	w1, [sp, 120]
	cmp	w1, 3
	ble	.L56
	sub	w0, w1, #1
	str	w0, [sp, 120]
	ldr	w0, [sp, 124]
	sub	w1, w1, #4
	add	w1, w1, w0
	ldr	x0, [sp, 144]
	bl	_Z12list_advanceP4Nodei
	str	x0, [sp, 152]
	ldr	x0, [x0, 8]
	b	.L105
.L33:
	ldr	x1, [sp, 152]
	ldr	w0, [sp, 116]
	ldr	x2, [x1, 8]
	cmp	w0, w2
	bge	.L55
.L104:
	add	w0, w0, 1
	b	.L105
.L55:
	ldr	x1, [x1, 32]
	cbz	x1, .L56
	ldr	w0, [sp, 120]
	str	x1, [sp, 152]
	add	w0, w0, 1
	stp	wzr, w0, [sp, 116]
	b	.L56
.L110:
	mov	x1, x0
	mov	w4, w28
	mov	x0, x21
	mov	x3, 1
	mov	x2, 0
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc
.LEHE5:
	ldr	w0, [sp, 116]
	b	.L104
.L63:
	mov	x19, x0
	mov	x0, x21
.L106:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
.L58:
	mov	x0, x23
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	mov	x0, x19
.LEHB6:
	bl	_Unwind_Resume
.LEHE6:
.L65:
	mov	x19, x0
	mov	x0, x21
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
.L60:
	add	x0, sp, 248
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	add	x0, sp, 216
	b	.L106
.L64:
	mov	x19, x0
	b	.L60
.L62:
	mov	x19, x0
	b	.L58
.L61:
	mov	w0, 0
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	ldp	x29, x30, [sp], 384
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
	.uleb128 .L63-.LFB1707
	.uleb128 0
	.uleb128 .LEHB2-.LFB1707
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L62-.LFB1707
	.uleb128 0
	.uleb128 .LEHB3-.LFB1707
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L64-.LFB1707
	.uleb128 0
	.uleb128 .LEHB4-.LFB1707
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L65-.LFB1707
	.uleb128 0
	.uleb128 .LEHB5-.LFB1707
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L64-.LFB1707
	.uleb128 0
	.uleb128 .LEHB6-.LFB1707
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
.LLSDACSE1707:
	.section	.text.startup
	.size	main, .-main
	.align	2
	.type	_GLOBAL__sub_I_main.cpp, %function
_GLOBAL__sub_I_main.cpp:
.LFB2094:
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
.LFE2094:
	.size	_GLOBAL__sub_I_main.cpp, .-_GLOBAL__sub_I_main.cpp
	.section	.init_array,"aw"
	.align	3
	.xword	_GLOBAL__sub_I_main.cpp
	.global	NODE_MEMORY_SIZE
	.global	REPLACEWITH
	.section	.rodata.str1.1
.LC5:
	.string	"Replace with: "
	.global	SEARCHFOR
.LC6:
	.string	"Search for: "
	.global	SEARCH
.LC7:
	.string	"Search: "
	.global	NAME
.LC8:
	.string	"WordPerfect-Resurrected"
	.global	CONTROLS
.LC9:
	.string	"^X:Exit  ^O:Save  ^W:Search  ^T:Replace"
	.data
	.align	2
	.type	NODE_MEMORY_SIZE, %object
	.size	NODE_MEMORY_SIZE, 4
NODE_MEMORY_SIZE:
	.word	40
	.bss
	.set	.LANCHOR0,. + 0
	.type	_ZStL8__ioinit, %object
	.size	_ZStL8__ioinit, 1
_ZStL8__ioinit:
	.zero	1
	.section	.data.rel.local,"aw"
	.align	3
	.type	REPLACEWITH, %object
	.size	REPLACEWITH, 8
REPLACEWITH:
	.xword	.LC5
	.type	SEARCHFOR, %object
	.size	SEARCHFOR, 8
SEARCHFOR:
	.xword	.LC6
	.type	SEARCH, %object
	.size	SEARCH, 8
SEARCH:
	.xword	.LC7
	.type	NAME, %object
	.size	NAME, 8
NAME:
	.xword	.LC8
	.type	CONTROLS, %object
	.size	CONTROLS, 8
CONTROLS:
	.xword	.LC9
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
