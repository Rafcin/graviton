
	.type	_Z14get_user_inputB5cxx11PKc, %function
_Z14get_user_inputB5cxx11PKc:
.LFB1676:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1676
	stp	x19, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 19, -304
	.cfi_offset 30, -296
	mov	x19, x8	// <retval>,
	str	x0, [sp, 24]	// prompt, prompt
.LEHB10:
// main.cpp:171:     nocbreak();
	bl	nocbreak		//
// main.cpp:172:     echo();
	bl	echo		//
// main.cpp:173:     curs_set(TRUE);
	mov	w0, 1	//,
	bl	curs_set		//
// main.cpp:176:     mvprintw(LINES - 1, 0, "%s", prompt);
	adrp	x0, :got:LINES	// tmp98,
	ldr	x0, [x0, #:got_lo12:LINES]	// tmp97, tmp98,
	ldr	w0, [x0]	// LINES.16_1, LINES
	sub	w4, w0, #1	// _2, LINES.16_1,
	ldr	x3, [sp, 24]	//, prompt
	adrp	x0, .LC2	// tmp99,
	add	x2, x0, :lo12:.LC2	//, tmp99,
	mov	w1, 0	//,
	mov	w0, w4	//, _2
	bl	mvprintw		//
// main.cpp:177:     getstr(input);
	adrp	x0, :got:stdscr	// tmp101,
	ldr	x0, [x0, #:got_lo12:stdscr]	// tmp100, tmp101,
	ldr	x0, [x0]	// stdscr.17_3, stdscr
	add	x1, sp, 40	// tmp102,,
	mov	w2, -1	//,
	bl	wgetnstr		//
// main.cpp:179:     curs_set(FALSE);
	mov	w0, 0	//,
	bl	curs_set		//
// main.cpp:180:     noecho();
	bl	noecho		//
// main.cpp:181:     cbreak();
	bl	cbreak		//
.LEHE10:
// main.cpp:183:     return std::string(input);
	add	x0, sp, 296	// tmp103,,
	bl	_ZNSaIcEC1Ev		//
	add	x1, sp, 296	// tmp104,,
	add	x0, sp, 40	// tmp105,,
	mov	x2, x1	//, tmp104
	mov	x1, x0	//, tmp105
	mov	x0, x19	//, <retval>
.LEHB11:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_		//
.LEHE11:
	add	x0, sp, 296	// tmp106,,
	bl	_ZNSaIcED1Ev		//
	b	.L63		//
.L62:
	mov	x19, x0	// tmp109,
	add	x0, sp, 296	// tmp108,,
	bl	_ZNSaIcED1Ev		//
	mov	x0, x19	// D.49581, tmp109
.LEHB12:
	bl	_Unwind_Resume		//
.LEHE12:
.L63:
// main.cpp:184: }
	mov	x0, x19	//, <retval>
	ldp	x19, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1676:
	.section	.gcc_except_table
.LLSDA1676:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1676-.LLSDACSB1676
.LLSDACSB1676:
	.uleb128 .LEHB10-.LFB1676
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB11-.LFB1676
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L62-.LFB1676
	.uleb128 0
	.uleb128 .LEHB12-.LFB1676
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
.LLSDACSE1676:
	.text
	.size	_Z14get_user_inputB5cxx11PKc, .-_Z14get_user_inputB5cxx11PKc
	.align	2
	.global	_Z16highlight_searchmmi