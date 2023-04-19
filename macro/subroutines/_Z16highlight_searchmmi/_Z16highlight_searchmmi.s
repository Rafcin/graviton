
	.type	_Z16highlight_searchmmi, %function
_Z16highlight_searchmmi:
.LFB1677:
	.cfi_startproc
	str	x30, [sp, -64]!	//,
	.cfi_def_cfa_offset 64
	.cfi_offset 30, -64
	str	x0, [sp, 40]	// found_pos, found_pos
	str	x1, [sp, 32]	// search_length, search_length
	str	w2, [sp, 28]	// y, y
// main.cpp:190:     attron(COLOR_PAIR(1));
	adrp	x0, :got:stdscr	// tmp111,
	ldr	x0, [x0, #:got_lo12:stdscr]	// tmp110, tmp111,
	ldr	x0, [x0]	// stdscr.25_1, stdscr
	mov	x2, 0	//,
	mov	w1, 256	//,
	bl	wattr_on		//
// main.cpp:191:     for (size_t i = 0; i < search_length; i++)
	str	xzr, [sp, 56]	//, i
// main.cpp:191:     for (size_t i = 0; i < search_length; i++)
	b	.L65		//
.L69:
// main.cpp:193:         chtype original_char = mvinch(y, found_pos + i);
	adrp	x0, :got:stdscr	// tmp113,
	ldr	x0, [x0, #:got_lo12:stdscr]	// tmp112, tmp113,
	ldr	x0, [x0]	// stdscr.27_2, stdscr
	ldr	x1, [sp, 40]	// tmp114, found_pos
	mov	w2, w1	// _3, tmp114
	ldr	x1, [sp, 56]	// tmp115, i
	add	w1, w2, w1	// _5, _3, _4
	mov	w2, w1	//, _6
	ldr	w1, [sp, 28]	//, y
	bl	wmove		//
	cmn	w0, #1	// _7,
	beq	.L66		//,
// main.cpp:193:         chtype original_char = mvinch(y, found_pos + i);
	adrp	x0, :got:stdscr	// tmp117,
	ldr	x0, [x0, #:got_lo12:stdscr]	// tmp116, tmp117,
	ldr	x0, [x0]	// stdscr.28_8, stdscr
	bl	winch		//
	b	.L67		//
.L66:
// main.cpp:193:         chtype original_char = mvinch(y, found_pos + i);
	mov	w0, -1	// _34,
.L67:
// main.cpp:193:         chtype original_char = mvinch(y, found_pos + i);
	str	w0, [sp, 52]	// _34, original_char
// main.cpp:194:         chtype new_char = (original_char & A_CHARTEXT) | (COLOR_PAIR(1));
	ldr	w0, [sp, 52]	// tmp118, original_char
	and	w0, w0, 255	// _9, tmp118,
// main.cpp:194:         chtype new_char = (original_char & A_CHARTEXT) | (COLOR_PAIR(1));
	orr	w0, w0, 256	// tmp119, _9,
	str	w0, [sp, 48]	// tmp119, new_char
// main.cpp:195:         mvaddch(y, found_pos + i, new_char);
	adrp	x0, :got:stdscr	// tmp121,
	ldr	x0, [x0, #:got_lo12:stdscr]	// tmp120, tmp121,
	ldr	x0, [x0]	// stdscr.29_10, stdscr
	ldr	x1, [sp, 40]	// tmp122, found_pos
	mov	w2, w1	// _11, tmp122
	ldr	x1, [sp, 56]	// tmp123, i
	add	w1, w2, w1	// _13, _11, _12
	mov	w2, w1	//, _14
	ldr	w1, [sp, 28]	//, y
	bl	wmove		//
	cmn	w0, #1	// _15,
	beq	.L68		//,
// main.cpp:195:         mvaddch(y, found_pos + i, new_char);
	adrp	x0, :got:stdscr	// tmp125,
	ldr	x0, [x0, #:got_lo12:stdscr]	// tmp124, tmp125,
	ldr	x0, [x0]	// stdscr.30_16, stdscr
	ldr	w1, [sp, 48]	//, new_char
	bl	waddch		//
.L68:
// main.cpp:191:     for (size_t i = 0; i < search_length; i++)
	ldr	x0, [sp, 56]	// tmp127, i
	add	x0, x0, 1	// tmp126, tmp127,
	str	x0, [sp, 56]	// tmp126, i
.L65:
// main.cpp:191:     for (size_t i = 0; i < search_length; i++)
	ldr	x1, [sp, 56]	// tmp128, i
	ldr	x0, [sp, 32]	// tmp129, search_length
	cmp	x1, x0	// tmp128, tmp129
	bcc	.L69		//,
// main.cpp:197:     attroff(COLOR_PAIR(1));
	adrp	x0, :got:stdscr	// tmp131,
	ldr	x0, [x0, #:got_lo12:stdscr]	// tmp130, tmp131,
	ldr	x0, [x0]	// stdscr.31_17, stdscr
	mov	x2, 0	//,
	mov	w1, 256	//,
	bl	wattr_off		//
// main.cpp:198: }
	nop	
	ldr	x30, [sp], 64	//,
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1677:
	.size	_Z16highlight_searchmmi, .-_Z16highlight_searchmmi
	.align	2
	.global	_Z11search_textR10LinkedListRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS9_S9_RP4Node