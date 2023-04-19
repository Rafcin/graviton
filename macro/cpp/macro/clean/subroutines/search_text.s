search_text:
.LFB1678:
	.cfi_startproc
	str	x30, [sp, -112]!	//,
	.cfi_def_cfa_offset 112
	.cfi_offset 30, -112
	str	x0, [sp, 56]	// lines, lines
	str	x1, [sp, 48]	// search_str, search_str
	str	x2, [sp, 40]	// cursor_x, cursor_x
	str	x3, [sp, 32]	// cursor_y, cursor_y
	str	x4, [sp, 24]	// scroll_offset, scroll_offset
	str	x5, [sp, 16]	// current_line, current_line
// main.cpp:262:     if (search_str.empty())
	ldr	x0, [sp, 48]	//, search_str
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5emptyEv		//
	and	w0, w0, 255	// retval.32_56, tmp135
// main.cpp:262:     if (search_str.empty())
	cmp	w0, 0	// retval.32_56,
	bne	.L80		//,
// main.cpp:265:     bool first_instance = true;
	mov	w0, 1	// tmp136,
	strb	w0, [sp, 111]	// tmp136, first_instance
// main.cpp:267:     Node *line_it = lines.head;
	ldr	x0, [sp, 56]	// tmp137, lines
	ldr	x0, [x0]	// tmp138, lines_58(D)->head
	str	x0, [sp, 96]	// tmp138, line_it
// main.cpp:268:     size_t line_idx = 0;
	str	xzr, [sp, 88]	//, line_idx
// main.cpp:269:     while (line_it)
	b	.L73		//
.L79:
// main.cpp:271:         std::string &line = line_it->line;
	ldr	x0, [sp, 96]	// tmp139, line_it
	str	x0, [sp, 72]	// tmp139, line
// main.cpp:272:         size_t found_pos = 0;
	str	xzr, [sp, 80]	//, found_pos
// main.cpp:274:         while ((found_pos = line.find(search_str, found_pos)) != std::string::npos)
	b	.L74		//
.L78:
// main.cpp:276:             if (first_instance)
	ldrb	w0, [sp, 111]	// tmp140, first_instance
	cmp	w0, 0	// tmp140,
	beq	.L75		//,
// main.cpp:278:                 cursor_x = found_pos;
	ldr	x0, [sp, 80]	// tmp141, found_pos
	mov	w1, w0	// _1, tmp141
	ldr	x0, [sp, 40]	// tmp142, cursor_x
	str	w1, [x0]	// _1, *cursor_x_68(D)
// main.cpp:279:                 cursor_y = 3 - scroll_offset + line_idx;
	ldr	x0, [sp, 88]	// tmp143, line_idx
	mov	w1, w0	// _2, tmp143
// main.cpp:279:                 cursor_y = 3 - scroll_offset + line_idx;
	ldr	x0, [sp, 24]	// tmp144, scroll_offset
	ldr	w0, [x0]	// _3, *scroll_offset_70(D)
// main.cpp:279:                 cursor_y = 3 - scroll_offset + line_idx;
	sub	w0, w1, w0	// _5, _2, _4
	add	w0, w0, 3	// _6, _5,
	mov	w1, w0	// _7, _6
// main.cpp:279:                 cursor_y = 3 - scroll_offset + line_idx;
	ldr	x0, [sp, 32]	// tmp145, cursor_y
	str	w1, [x0]	// _7, *cursor_y_71(D)
// main.cpp:280:                 current_line = lines.head;
	ldr	x0, [sp, 56]	// tmp146, lines
	ldr	x1, [x0]	// _8, lines_58(D)->head
// main.cpp:280:                 current_line = lines.head;
	ldr	x0, [sp, 16]	// tmp147, current_line
	str	x1, [x0]	// _8, *current_line_73(D)
// main.cpp:281:                 current_line = list_advance(current_line, line_idx);
	ldr	x0, [sp, 16]	// tmp148, current_line
	ldr	x0, [x0]	// _9, *current_line_73(D)
	ldr	x1, [sp, 88]	// tmp149, line_idx
	bl	list_advance		//
	mov	x1, x0	// _11,
// main.cpp:281:                 current_line = list_advance(current_line, line_idx);
	ldr	x0, [sp, 16]	// tmp150, current_line
	str	x1, [x0]	// _11, *current_line_73(D)
// main.cpp:283:                 if (cursor_y >= LINES - 1)
	ldr	x0, [sp, 32]	// tmp151, cursor_y
	ldr	w1, [x0]	// _12, *cursor_y_71(D)
// main.cpp:283:                 if (cursor_y >= LINES - 1)
	adrp	x0, :got:LINES	// tmp153,
	ldr	x0, [x0, #:got_lo12:LINES]	// tmp152, tmp153,
	ldr	w0, [x0]	// LINES.33_13, LINES
	sub	w0, w0, #1	// _14, LINES.33_13,
// main.cpp:283:                 if (cursor_y >= LINES - 1)
	cmp	w1, w0	// _12, _14
	blt	.L76		//,
// main.cpp:285:                     scroll_offset += cursor_y - (LINES - 2);
	ldr	x0, [sp, 24]	// tmp154, scroll_offset
	ldr	w1, [x0]	// _15, *scroll_offset_70(D)
// main.cpp:285:                     scroll_offset += cursor_y - (LINES - 2);
	ldr	x0, [sp, 32]	// tmp155, cursor_y
	ldr	w2, [x0]	// _16, *cursor_y_71(D)
// main.cpp:285:                     scroll_offset += cursor_y - (LINES - 2);
	adrp	x0, :got:LINES	// tmp157,
	ldr	x0, [x0, #:got_lo12:LINES]	// tmp156, tmp157,
	ldr	w0, [x0]	// LINES.34_17, LINES
	sub	w0, w0, #2	// _18, LINES.34_17,
// main.cpp:285:                     scroll_offset += cursor_y - (LINES - 2);
	sub	w0, w2, w0	// _19, _16, _18
// main.cpp:285:                     scroll_offset += cursor_y - (LINES - 2);
	add	w1, w1, w0	// _20, _15, _19
	ldr	x0, [sp, 24]	// tmp158, scroll_offset
	str	w1, [x0]	// _20, *scroll_offset_70(D)
// main.cpp:286:                     cursor_y = LINES - 2;
	adrp	x0, :got:LINES	// tmp160,
	ldr	x0, [x0, #:got_lo12:LINES]	// tmp159, tmp160,
	ldr	w0, [x0]	// LINES.35_21, LINES
	sub	w1, w0, #2	// _22, LINES.35_21,
// main.cpp:286:                     cursor_y = LINES - 2;
	ldr	x0, [sp, 32]	// tmp161, cursor_y
	str	w1, [x0]	// _22, *cursor_y_71(D)
.L76:
// main.cpp:289:                 first_instance = false;
	strb	wzr, [sp, 111]	//, first_instance
.L75:
// main.cpp:292:             if (3 + line_idx - scroll_offset >= 3 && 3 + line_idx - scroll_offset < LINES - 1)
	ldr	x0, [sp, 24]	// tmp162, scroll_offset
	ldr	w0, [x0]	// _23, *scroll_offset_70(D)
	sxtw	x0, w0	// _24, _23
// main.cpp:292:             if (3 + line_idx - scroll_offset >= 3 && 3 + line_idx - scroll_offset < LINES - 1)
	ldr	x1, [sp, 88]	// tmp163, line_idx
	sub	x0, x1, x0	// _25, tmp163, _24
	add	x0, x0, 3	// _26, _25,
// main.cpp:292:             if (3 + line_idx - scroll_offset >= 3 && 3 + line_idx - scroll_offset < LINES - 1)
	cmp	x0, 2	// _26,
	bls	.L77		//,
// main.cpp:292:             if (3 + line_idx - scroll_offset >= 3 && 3 + line_idx - scroll_offset < LINES - 1)
	ldr	x0, [sp, 24]	// tmp164, scroll_offset
	ldr	w0, [x0]	// _27, *scroll_offset_70(D)
	sxtw	x0, w0	// _28, _27
// main.cpp:292:             if (3 + line_idx - scroll_offset >= 3 && 3 + line_idx - scroll_offset < LINES - 1)
	ldr	x1, [sp, 88]	// tmp165, line_idx
	sub	x0, x1, x0	// _29, tmp165, _28
	add	x1, x0, 3	// _30, _29,
// main.cpp:292:             if (3 + line_idx - scroll_offset >= 3 && 3 + line_idx - scroll_offset < LINES - 1)
	adrp	x0, :got:LINES	// tmp167,
	ldr	x0, [x0, #:got_lo12:LINES]	// tmp166, tmp167,
	ldr	w0, [x0]	// LINES.36_31, LINES
	sub	w0, w0, #1	// _32, LINES.36_31,
	sxtw	x0, w0	// _33, _32
// main.cpp:292:             if (3 + line_idx - scroll_offset >= 3 && 3 + line_idx - scroll_offset < LINES - 1)
	cmp	x1, x0	// _30, _33
	bcs	.L77		//,
// main.cpp:294:                 highlight_search(found_pos, search_str.length(), 3 + line_idx - scroll_offset); // Highlight the search result on the screen
	ldr	x0, [sp, 48]	//, search_str
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv		//
	mov	x1, x0	// _34,
// main.cpp:294:                 highlight_search(found_pos, search_str.length(), 3 + line_idx - scroll_offset); // Highlight the search result on the screen
	ldr	x0, [sp, 88]	// tmp168, line_idx
	mov	w2, w0	// _35, tmp168
// main.cpp:294:                 highlight_search(found_pos, search_str.length(), 3 + line_idx - scroll_offset); // Highlight the search result on the screen
	ldr	x0, [sp, 24]	// tmp169, scroll_offset
	ldr	w0, [x0]	// _36, *scroll_offset_70(D)
// main.cpp:294:                 highlight_search(found_pos, search_str.length(), 3 + line_idx - scroll_offset); // Highlight the search result on the screen
	sub	w0, w2, w0	// _38, _35, _37
	add	w0, w0, 3	// _39, _38,
// main.cpp:294:                 highlight_search(found_pos, search_str.length(), 3 + line_idx - scroll_offset); // Highlight the search result on the screen
	mov	w2, w0	//, _40
	ldr	x0, [sp, 80]	//, found_pos
	bl	highlight_search		//
.L77:
// main.cpp:297:             found_pos += search_str.length();
	ldr	x0, [sp, 48]	//, search_str
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv		//
	mov	x1, x0	// _84,
// main.cpp:297:             found_pos += search_str.length();
	ldr	x0, [sp, 80]	// tmp171, found_pos
	add	x0, x0, x1	// tmp170, tmp171, _84
	str	x0, [sp, 80]	// tmp170, found_pos
.L74:
// main.cpp:274:         while ((found_pos = line.find(search_str, found_pos)) != std::string::npos)
	ldr	x2, [sp, 80]	//, found_pos
	ldr	x1, [sp, 48]	//, search_str
	ldr	x0, [sp, 72]	//, line
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m		//
	str	x0, [sp, 80]	//, found_pos
// main.cpp:274:         while ((found_pos = line.find(search_str, found_pos)) != std::string::npos)
	ldr	x0, [sp, 80]	// tmp173, found_pos
	cmn	x0, #1	// tmp173,
	cset	w0, ne	// tmp174,
	and	w0, w0, 255	// retval.37_65, tmp172
	cmp	w0, 0	// retval.37_65,
	bne	.L78		//,
// main.cpp:300:         ++line_idx;
	ldr	x0, [sp, 88]	// tmp176, line_idx
	add	x0, x0, 1	// tmp175, tmp176,
	str	x0, [sp, 88]	// tmp175, line_idx
// main.cpp:301:         line_it = line_it->next;
	ldr	x0, [sp, 96]	// tmp177, line_it
	ldr	x0, [x0, 32]	// tmp178, line_it_44->next
	str	x0, [sp, 96]	// tmp178, line_it
.L73:
// main.cpp:269:     while (line_it)
	ldr	x0, [sp, 96]	// tmp179, line_it
	cmp	x0, 0	// tmp179,
	bne	.L79		//,
	b	.L70		//
.L80:
// main.cpp:263:         return;
	nop	
.L70:
// main.cpp:303: }
	ldr	x30, [sp], 112	//,
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1678:
	.size	search_text, .-search_text
	.align	2
	.global	replace_text
	.type	replace_text, %function