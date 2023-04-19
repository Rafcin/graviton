
	.type	_Z12handle_mouseiiRiS_S_R10LinkedList, %function
_Z12handle_mouseiiRiS_S_R10LinkedList:
.LFB1680:
	.cfi_startproc
	str	x30, [sp, -80]!	//,
	.cfi_def_cfa_offset 80
	.cfi_offset 30, -80
	str	w0, [sp, 60]	// x, x
	str	w1, [sp, 56]	// y, y
	str	x2, [sp, 48]	// cursor_x, cursor_x
	str	x3, [sp, 40]	// cursor_y, cursor_y
	str	x4, [sp, 32]	// scroll_offset, scroll_offset
	str	x5, [sp, 24]	// lines, lines
// main.cpp:273:     if (y == 1)
	ldr	w0, [sp, 56]	// tmp97, y
	cmp	w0, 1	// tmp97,
	beq	.L92		//,
// main.cpp:278:     int max_y = std::min(LINES - 3, static_cast<int>(list_size(lines)));
	adrp	x0, :got:LINES	// tmp99,
	ldr	x0, [x0, #:got_lo12:LINES]	// tmp98, tmp99,
	ldr	w0, [x0]	// LINES.39_1, LINES
	sub	w0, w0, #3	// _2, LINES.39_1,
	str	w0, [sp, 68]	// _2, D.45771
// main.cpp:278:     int max_y = std::min(LINES - 3, static_cast<int>(list_size(lines)));
	ldr	x0, [sp, 24]	//, lines
	bl	_Z9list_sizeR10LinkedList		//
// main.cpp:278:     int max_y = std::min(LINES - 3, static_cast<int>(list_size(lines)));
	str	w0, [sp, 72]	// _4, D.45772
// main.cpp:278:     int max_y = std::min(LINES - 3, static_cast<int>(list_size(lines)));
	add	x1, sp, 72	// tmp100,,
	add	x0, sp, 68	// tmp101,,
	bl	_ZSt3minIiERKT_S2_S2_		//
// main.cpp:278:     int max_y = std::min(LINES - 3, static_cast<int>(list_size(lines)));
	ldr	w0, [x0]	// tmp102, *_5
	str	w0, [sp, 76]	// tmp102, max_y
// main.cpp:279:     if (y >= 3 && y <= max_y)
	ldr	w0, [sp, 56]	// tmp103, y
	cmp	w0, 2	// tmp103,
	ble	.L91		//,
// main.cpp:279:     if (y >= 3 && y <= max_y)
	ldr	w1, [sp, 56]	// tmp104, y
	ldr	w0, [sp, 76]	// tmp105, max_y
	cmp	w1, w0	// tmp104, tmp105
	bgt	.L91		//,
// main.cpp:281:         cursor_x = x;
	ldr	x0, [sp, 48]	// tmp106, cursor_x
	ldr	w1, [sp, 60]	// tmp107, x
	str	w1, [x0]	// tmp107, *cursor_x_17(D)
// main.cpp:282:         cursor_y = y;
	ldr	x0, [sp, 40]	// tmp108, cursor_y
	ldr	w1, [sp, 56]	// tmp109, y
	str	w1, [x0]	// tmp109, *cursor_y_20(D)
	b	.L88		//
.L91:
// main.cpp:284:     else if (y > max_y)
	ldr	w1, [sp, 56]	// tmp110, y
	ldr	w0, [sp, 76]	// tmp111, max_y
	cmp	w1, w0	// tmp110, tmp111
	ble	.L88		//,
// main.cpp:286:         cursor_x = x;
	ldr	x0, [sp, 48]	// tmp112, cursor_x
	ldr	w1, [sp, 60]	// tmp113, x
	str	w1, [x0]	// tmp113, *cursor_x_17(D)
// main.cpp:287:         cursor_y = max_y;
	ldr	x0, [sp, 40]	// tmp114, cursor_y
	ldr	w1, [sp, 76]	// tmp115, max_y
	str	w1, [x0]	// tmp115, *cursor_y_20(D)
	b	.L88		//
.L92:
// main.cpp:275:         return;
	nop	
.L88:
// main.cpp:289: }
	ldr	x30, [sp], 80	//,
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1680:
	.size	_Z12handle_mouseiiRiS_S_R10LinkedList, .-_Z12handle_mouseiiRiS_S_R10LinkedList
	.section	.rodata
	.align	3
.LC3:
	.string	""
	.align	3
.LC4:
	.string	"Macro"
	.align	3
.LC5:
	.string	"Search: "
	.align	3
.LC6:
	.string	"Search for: "
	.align	3
.LC7:
	.string	"Replace with: "
	.text
	.align	2
	.global	main