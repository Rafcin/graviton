handle_mouse:
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
// main.cpp:343:     if (y == 1) // If the mouse was clicked in the menu bar, ignore it
	ldr	w0, [sp, 56]	// tmp97, y
	cmp	w0, 1	// tmp97,
	beq	.L92		//,
// main.cpp:348:     int max_y = std::min(LINES - 3, static_cast<int>(list_size(lines))); // Calculate the maximum valid y-coordinate based on the number of lines in the text
	adrp	x0, :got:LINES	// tmp99,
	ldr	x0, [x0, #:got_lo12:LINES]	// tmp98, tmp99,
	ldr	w0, [x0]	// LINES.39_1, LINES
	sub	w0, w0, #3	// _2, LINES.39_1,
	str	w0, [sp, 68]	// _2, D.45857
// main.cpp:348:     int max_y = std::min(LINES - 3, static_cast<int>(list_size(lines))); // Calculate the maximum valid y-coordinate based on the number of lines in the text
	ldr	x0, [sp, 24]	//, lines
	bl	list_size		//
// main.cpp:348:     int max_y = std::min(LINES - 3, static_cast<int>(list_size(lines))); // Calculate the maximum valid y-coordinate based on the number of lines in the text
	str	w0, [sp, 72]	// _4, D.45858
// main.cpp:348:     int max_y = std::min(LINES - 3, static_cast<int>(list_size(lines))); // Calculate the maximum valid y-coordinate based on the number of lines in the text
	add	x1, sp, 72	// tmp100,,
	add	x0, sp, 68	// tmp101,,
	bl	int_const__std__min_int_		//
// main.cpp:348:     int max_y = std::min(LINES - 3, static_cast<int>(list_size(lines))); // Calculate the maximum valid y-coordinate based on the number of lines in the text
	ldr	w0, [x0]	// tmp102, *_5
	str	w0, [sp, 76]	// tmp102, max_y
// main.cpp:349:     if (y >= 3 && y <= max_y)                                            // If the mouse was clicked within the bounds of the text, update the cursor position accordingly
	ldr	w0, [sp, 56]	// tmp103, y
	cmp	w0, 2	// tmp103,
	ble	.L91		//,
// main.cpp:349:     if (y >= 3 && y <= max_y)                                            // If the mouse was clicked within the bounds of the text, update the cursor position accordingly
	ldr	w1, [sp, 56]	// tmp104, y
	ldr	w0, [sp, 76]	// tmp105, max_y
	cmp	w1, w0	// tmp104, tmp105
	bgt	.L91		//,
// main.cpp:351:         cursor_x = x;
	ldr	x0, [sp, 48]	// tmp106, cursor_x
	ldr	w1, [sp, 60]	// tmp107, x
	str	w1, [x0]	// tmp107, *cursor_x_18(D)
// main.cpp:352:         cursor_y = y;
	ldr	x0, [sp, 40]	// tmp108, cursor_y
	ldr	w1, [sp, 56]	// tmp109, y
	str	w1, [x0]	// tmp109, *cursor_y_21(D)
	b	.L88		//
.L91:
// main.cpp:354:     else if (y > max_y) // If the mouse was clicked below the last line of text, update the cursor to the last line of text
	ldr	w1, [sp, 56]	// tmp110, y
	ldr	w0, [sp, 76]	// tmp111, max_y
	cmp	w1, w0	// tmp110, tmp111
	ble	.L88		//,
// main.cpp:356:         cursor_x = x;
	ldr	x0, [sp, 48]	// tmp112, cursor_x
	ldr	w1, [sp, 60]	// tmp113, x
	str	w1, [x0]	// tmp113, *cursor_x_18(D)
// main.cpp:357:         cursor_y = max_y;
	ldr	x0, [sp, 40]	// tmp114, cursor_y
	ldr	w1, [sp, 76]	// tmp115, max_y
	str	w1, [x0]	// tmp115, *cursor_y_21(D)
	b	.L88		//
.L92:
// main.cpp:345:         return;
	nop	
.L88:
// main.cpp:359: }
	ldr	x30, [sp], 80	//,
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1680:
	.size	handle_mouse, .-handle_mouse
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
	.type	main, %function
main:
.LFB1681:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1681
	stp	x19, x30, [sp, -416]!	//,,,
	.cfi_def_cfa_offset 416
	.cfi_offset 19, -416
	.cfi_offset 30, -408
	str	w0, [sp, 28]	// argc, argc
	str	x1, [sp, 16]	// argv, argv
.LEHB13:
// main.cpp:369:     initscr();
	bl	initscr		//
// main.cpp:370:     raw();
	bl	raw		//
// main.cpp:371:     keypad(stdscr, TRUE);
	adrp	x0, :got:stdscr	// tmp275,
	ldr	x0, [x0, #:got_lo12:stdscr]	// tmp274, tmp275,
	ldr	x0, [x0]	// stdscr.40_1, stdscr
	mov	w1, 1	//,
	bl	keypad		//
// main.cpp:372:     noecho();
	bl	noecho		//
.LEHE13:
// main.cpp:374:     size_t memory = 0;
	str	xzr, [sp, 240]	//, memory
// main.cpp:375:     size_t nodes = 0;
	str	xzr, [sp, 232]	//, nodes
// main.cpp:378:     int cursor_x = 0;
	str	wzr, [sp, 228]	//, cursor_x
// main.cpp:379:     int cursor_y = 3;
	mov	w0, 3	// tmp276,
	str	w0, [sp, 224]	// tmp276, cursor_y
// main.cpp:381:     int scroll_offset = 0;
	str	wzr, [sp, 220]	//, scroll_offset
// main.cpp:383:     LinkedList lines;
	add	x0, sp, 208	// tmp277,,
	bl	LinkedList___ctor_		//
// main.cpp:384:     std::string filename;
	add	x0, sp, 176	// tmp278,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev		//
// main.cpp:387:     if (argc > 1)
	ldr	w0, [sp, 28]	// tmp279, argc
	cmp	w0, 1	// tmp279,
	ble	.L94		//,
// main.cpp:389:         filename = argv[1];
	ldr	x0, [sp, 16]	// tmp280, argv
	add	x0, x0, 8	// _2, tmp280,
	ldr	x1, [x0]	// _3, *_2
	add	x0, sp, 176	// tmp281,,
.LEHB14:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc		//
// main.cpp:390:         open_file(filename.c_str(), lines, memory, nodes);
	add	x0, sp, 176	// tmp282,,
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv		//
	mov	x4, x0	// _4,
	add	x2, sp, 232	// tmp283,,
	add	x1, sp, 240	// tmp284,,
	add	x0, sp, 208	// tmp285,,
	mov	x3, x2	//, tmp283
	mov	x2, x1	//, tmp284
	mov	x1, x0	//, tmp285
	mov	x0, x4	//, _4
	bl	open_file		//
.LEHE14:
.L94:
// main.cpp:393:     if (!lines.head)
	ldr	x0, [sp, 208]	// _5, lines.head
// main.cpp:393:     if (!lines.head)
	cmp	x0, 0	// _5,
	bne	.L95		//,
// main.cpp:395:         list_push_back(lines, "");
	add	x0, sp, 280	// tmp286,,
	bl	_ZNSaIcEC1Ev		//
	add	x0, sp, 280	// tmp287,,
	add	x3, sp, 248	// tmp288,,
	mov	x2, x0	//, tmp287
	adrp	x0, .LC3	// tmp289,
	add	x1, x0, :lo12:.LC3	//, tmp289,
	mov	x0, x3	//, tmp288
.LEHB15:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_		//
.LEHE15:
// main.cpp:395:         list_push_back(lines, "");
	add	x1, sp, 248	// tmp290,,
	add	x0, sp, 208	// tmp291,,
.LEHB16:
	bl	list_push_back		//
.LEHE16:
// main.cpp:395:         list_push_back(lines, "");
	add	x0, sp, 248	// tmp292,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev		//
	add	x0, sp, 280	// tmp293,,
	bl	_ZNSaIcED1Ev		//
// main.cpp:396:         nodes++;
	ldr	x0, [sp, 232]	// nodes.41_6, nodes
	add	x0, x0, 1	// _7, nodes.41_6,
	str	x0, [sp, 232]	// _7, nodes
.L95:
// main.cpp:399:     Node *current_line = lines.head;
	ldr	x0, [sp, 208]	// _8, lines.head
// main.cpp:399:     Node *current_line = lines.head;
	str	x0, [sp, 168]	// _8, current_line
// main.cpp:400:     std::string search_str;
	add	x0, sp, 136	// tmp294,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev		//
// main.cpp:401:     std::string replace_str;
	add	x0, sp, 104	// tmp295,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev		//
.LEHB17:
// main.cpp:404:     if (has_colors())
	bl	has_colors		//
	and	w0, w0, 255	// _235, tmp296
// main.cpp:404:     if (has_colors())
	cmp	w0, 0	// _235,
	beq	.L96		//,
// main.cpp:406:         start_color();
	bl	start_color		//
// main.cpp:407:         init_pair(1, COLOR_YELLOW, COLOR_BLACK);
	mov	w2, 0	//,
	mov	w1, 3	//,
	mov	w0, 1	//,
	bl	init_pair		//
.L96:
// main.cpp:411:     init_pair(1, COLOR_WHITE, COLOR_BLUE);
	mov	w2, 4	//,
	mov	w1, 7	//,
	mov	w0, 1	//,
	bl	init_pair		//
// main.cpp:412:     mousemask(ALL_MOUSE_EVENTS | REPORT_MOUSE_POSITION, NULL);
	mov	x1, 0	//,
	mov	w0, 536870911	//,
	bl	mousemask		//
.L130:
// main.cpp:416:         clear(); // Clear the screen
	bl	clear		//
// main.cpp:419:         attron(A_REVERSE);
	adrp	x0, :got:stdscr	// tmp298,
	ldr	x0, [x0, #:got_lo12:stdscr]	// tmp297, tmp298,
	ldr	x0, [x0]	// stdscr.43_9, stdscr
	mov	x2, 0	//,
	mov	w1, 262144	//,
	bl	wattr_on		//
// main.cpp:420:         mvprintw(0, 0, "Macro");
	adrp	x0, .LC4	// tmp299,
	add	x2, x0, :lo12:.LC4	//, tmp299,
	mov	w1, 0	//,
	mov	w0, 0	//,
	bl	mvprintw		//
// main.cpp:421:         attroff(A_REVERSE);
	adrp	x0, :got:stdscr	// tmp301,
	ldr	x0, [x0, #:got_lo12:stdscr]	// tmp300, tmp301,
	ldr	x0, [x0]	// stdscr.44_10, stdscr
	mov	x2, 0	//,
	mov	w1, 262144	//,
	bl	wattr_off		//
// main.cpp:423:         display_memory_info(memory, nodes); // Display memory usage
	ldr	x0, [sp, 240]	// memory.45_11, memory
	ldr	x1, [sp, 232]	// nodes.46_12, nodes
	bl	display_memory_info		//
// main.cpp:426:         int y = 3;
	mov	w0, 3	// tmp302,
	str	w0, [sp, 412]	// tmp302, y
// main.cpp:427:         Node *current = lines.head;
	ldr	x0, [sp, 208]	// tmp303, lines.head
	str	x0, [sp, 400]	// tmp303, current
// main.cpp:428:         int line_count = 0;
	str	wzr, [sp, 396]	//, line_count
// main.cpp:429:         while (current)
	b	.L97		//
.L99:
// main.cpp:431:             if (line_count >= scroll_offset && y < LINES - 1)
	ldr	w0, [sp, 220]	// scroll_offset.47_13, scroll_offset
// main.cpp:431:             if (line_count >= scroll_offset && y < LINES - 1)
	ldr	w1, [sp, 396]	// tmp304, line_count
	cmp	w1, w0	// tmp304, scroll_offset.47_13
	blt	.L98		//,
// main.cpp:431:             if (line_count >= scroll_offset && y < LINES - 1)
	adrp	x0, :got:LINES	// tmp306,
	ldr	x0, [x0, #:got_lo12:LINES]	// tmp305, tmp306,
	ldr	w0, [x0]	// LINES.48_14, LINES
	sub	w0, w0, #1	// _15, LINES.48_14,
// main.cpp:431:             if (line_count >= scroll_offset && y < LINES - 1)
	ldr	w1, [sp, 412]	// tmp307, y
	cmp	w1, w0	// tmp307, _15
	bge	.L98		//,
// main.cpp:433:                 mvprintw(y++, 0, "%s", current->line.c_str());
	ldr	w19, [sp, 412]	// y.49_16, y
	add	w0, w19, 1	// tmp308, y.49_16,
	str	w0, [sp, 412]	// tmp308, y
	ldr	x0, [sp, 400]	// _17, current
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv		//
	mov	x3, x0	//, _18
	adrp	x0, .LC2	// tmp309,
	add	x2, x0, :lo12:.LC2	//, tmp309,
	mov	w1, 0	//,
	mov	w0, w19	//, y.49_16
	bl	mvprintw		//
.L98:
// main.cpp:435:             line_count++;
	ldr	w0, [sp, 396]	// tmp311, line_count
	add	w0, w0, 1	// tmp310, tmp311,
	str	w0, [sp, 396]	// tmp310, line_count
// main.cpp:436:             current = current->next;
	ldr	x0, [sp, 400]	// tmp312, current
	ldr	x0, [x0, 32]	// tmp313, current_176->next
	str	x0, [sp, 400]	// tmp313, current
.L97:
// main.cpp:429:         while (current)
	ldr	x0, [sp, 400]	// tmp314, current
	cmp	x0, 0	// tmp314,
	bne	.L99		//,
// main.cpp:440:         search_text(lines, search_str, cursor_x, cursor_y, scroll_offset, current_line);
	add	x5, sp, 168	// tmp315,,
	add	x4, sp, 220	// tmp316,,
	add	x3, sp, 224	// tmp317,,
	add	x2, sp, 228	// tmp318,,
	add	x1, sp, 136	// tmp319,,
	add	x0, sp, 208	// tmp320,,
	bl	search_text		//
// main.cpp:443:         move(cursor_y, cursor_x);
	ldr	w0, [sp, 224]	// cursor_y.50_19, cursor_y
	ldr	w1, [sp, 228]	// cursor_x.51_20, cursor_x
	bl	move		//
// main.cpp:446:         attron(A_BOLD | A_REVERSE);
	adrp	x0, :got:stdscr	// tmp322,
	ldr	x0, [x0, #:got_lo12:stdscr]	// tmp321, tmp322,
	ldr	x0, [x0]	// stdscr.52_21, stdscr
	mov	x2, 0	//,
	mov	w1, 2359296	//,
	bl	wattr_on		//
// main.cpp:447:         mvprintw(LINES - 1, 0, CONTROLS);
	adrp	x0, :got:LINES	// tmp324,
	ldr	x0, [x0, #:got_lo12:LINES]	// tmp323, tmp324,
	ldr	w0, [x0]	// LINES.53_22, LINES
	sub	w3, w0, #1	// _23, LINES.53_22,
	adrp	x0, :got:CONTROLS	// tmp326,
	ldr	x0, [x0, #:got_lo12:CONTROLS]	// tmp325, tmp326,
	ldr	x0, [x0]	// CONTROLS.54_24, CONTROLS
	mov	x2, x0	//, CONTROLS.54_24
	mov	w1, 0	//,
	mov	w0, w3	//, _23
	bl	mvprintw		//
// main.cpp:448:         attroff(A_BOLD | A_REVERSE);
	adrp	x0, :got:stdscr	// tmp328,
	ldr	x0, [x0, #:got_lo12:stdscr]	// tmp327, tmp328,
	ldr	x0, [x0]	// stdscr.55_25, stdscr
	mov	x2, 0	//,
	mov	w1, 2359296	//,
	bl	wattr_off		//
// main.cpp:449:         move(cursor_y, cursor_x);
	ldr	w0, [sp, 224]	// cursor_y.56_26, cursor_y
	ldr	w1, [sp, 228]	// cursor_x.57_27, cursor_x
	bl	move		//
// main.cpp:451:         ch = getch(); // Wait for user input
	adrp	x0, :got:stdscr	// tmp330,
	ldr	x0, [x0, #:got_lo12:stdscr]	// tmp329, tmp330,
	ldr	x0, [x0]	// stdscr.58_28, stdscr
	bl	wgetch		//
	str	w0, [sp, 392]	// _256, ch
// main.cpp:453:         switch (ch)
	ldr	w0, [sp, 392]	// tmp331, ch
	cmp	w0, 409	// tmp331,
	beq	.L100		//,
	ldr	w0, [sp, 392]	// tmp332, ch
	cmp	w0, 409	// tmp332,
	bgt	.L101		//,
	ldr	w0, [sp, 392]	// tmp333, ch
	cmp	w0, 343	// tmp333,
	beq	.L102		//,
	ldr	w0, [sp, 392]	// tmp334, ch
	cmp	w0, 343	// tmp334,
	bgt	.L101		//,
	ldr	w0, [sp, 392]	// tmp335, ch
	cmp	w0, 330	// tmp335,
	beq	.L103		//,
	ldr	w0, [sp, 392]	// tmp336, ch
	cmp	w0, 330	// tmp336,
	bgt	.L101		//,
	ldr	w0, [sp, 392]	// tmp337, ch
	cmp	w0, 263	// tmp337,
	beq	.L104		//,
	ldr	w0, [sp, 392]	// tmp338, ch
	cmp	w0, 263	// tmp338,
	bgt	.L101		//,
	ldr	w0, [sp, 392]	// tmp339, ch
	cmp	w0, 261	// tmp339,
	beq	.L105		//,
	ldr	w0, [sp, 392]	// tmp340, ch
	cmp	w0, 261	// tmp340,
	bgt	.L101		//,
	ldr	w0, [sp, 392]	// tmp341, ch
	cmp	w0, 260	// tmp341,
	beq	.L106		//,
	ldr	w0, [sp, 392]	// tmp342, ch
	cmp	w0, 260	// tmp342,
	bgt	.L101		//,
	ldr	w0, [sp, 392]	// tmp343, ch
	cmp	w0, 259	// tmp343,
	beq	.L107		//,
	ldr	w0, [sp, 392]	// tmp344, ch
	cmp	w0, 259	// tmp344,
	bgt	.L101		//,
	ldr	w0, [sp, 392]	// tmp345, ch
	cmp	w0, 258	// tmp345,
	beq	.L108		//,
	ldr	w0, [sp, 392]	// tmp346, ch
	cmp	w0, 258	// tmp346,
	bgt	.L101		//,
	ldr	w0, [sp, 392]	// tmp347, ch
	cmp	w0, 127	// tmp347,
	beq	.L104		//,
	ldr	w0, [sp, 392]	// tmp348, ch
	cmp	w0, 127	// tmp348,
	bgt	.L101		//,
	ldr	w0, [sp, 392]	// tmp349, ch
	cmp	w0, 24	// tmp349,
	beq	.L109		//,
	ldr	w0, [sp, 392]	// tmp350, ch
	cmp	w0, 24	// tmp350,
	bgt	.L101		//,
	ldr	w0, [sp, 392]	// tmp351, ch
	cmp	w0, 23	// tmp351,
	beq	.L110		//,
	ldr	w0, [sp, 392]	// tmp352, ch
	cmp	w0, 23	// tmp352,
	bgt	.L101		//,
	ldr	w0, [sp, 392]	// tmp353, ch
	cmp	w0, 20	// tmp353,
	beq	.L111		//,
	ldr	w0, [sp, 392]	// tmp354, ch
	cmp	w0, 20	// tmp354,
	bgt	.L101		//,
	ldr	w0, [sp, 392]	// tmp355, ch
	cmp	w0, 10	// tmp355,
	beq	.L102		//,
	ldr	w0, [sp, 392]	// tmp356, ch
	cmp	w0, 15	// tmp356,
	beq	.L112		//,
	b	.L101		//
.L100:
// main.cpp:457:             if (getmouse(&event) == OK)
	add	x0, sp, 80	// tmp357,,
	bl	getmouse		//
// main.cpp:457:             if (getmouse(&event) == OK)
	cmp	w0, 0	// _29,
	cset	w0, eq	// tmp359,
	and	w0, w0, 255	// retval.59_260, tmp358
// main.cpp:457:             if (getmouse(&event) == OK)
	cmp	w0, 0	// retval.59_260,
	beq	.L142		//,
// main.cpp:459:                 handle_mouse(event.x, event.y, cursor_x, cursor_y, scroll_offset, lines);
	ldr	w0, [sp, 84]	// _30, event.x
	ldr	w1, [sp, 88]	// _31, event.y
	add	x5, sp, 208	// tmp360,,
	add	x4, sp, 220	// tmp361,,
	add	x3, sp, 224	// tmp362,,
	add	x2, sp, 228	// tmp363,,
	bl	handle_mouse		//
// main.cpp:460:                 move(cursor_y, cursor_x);
	ldr	w0, [sp, 224]	// cursor_y.60_32, cursor_y
	ldr	w1, [sp, 228]	// cursor_x.61_33, cursor_x
	bl	move		//
// main.cpp:462:             break;
	b	.L142		//
.L110:
// main.cpp:464:             attron(A_BOLD | A_REVERSE);
	adrp	x0, :got:stdscr	// tmp365,
	ldr	x0, [x0, #:got_lo12:stdscr]	// tmp364, tmp365,
	ldr	x0, [x0]	// stdscr.62_34, stdscr
	mov	x2, 0	//,
	mov	w1, 2359296	//,
	bl	wattr_on		//
// main.cpp:465:             search_str = get_user_input("Search: ");
	add	x0, sp, 288	// tmp366,,
	mov	x8, x0	//, tmp366
	adrp	x0, .LC5	// tmp367,
	add	x0, x0, :lo12:.LC5	//, tmp367,
	bl	get_user_input_abi_cxx11_		//
// main.cpp:465:             search_str = get_user_input("Search: ");
	add	x1, sp, 288	// tmp368,,
	add	x0, sp, 136	// tmp369,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_		//
// main.cpp:465:             search_str = get_user_input("Search: ");
	add	x0, sp, 288	// tmp370,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev		//
// main.cpp:466:             attroff(A_BOLD | A_REVERSE);
	adrp	x0, :got:stdscr	// tmp372,
	ldr	x0, [x0, #:got_lo12:stdscr]	// tmp371, tmp372,
	ldr	x0, [x0]	// stdscr.63_35, stdscr
	mov	x2, 0	//,
	mov	w1, 2359296	//,
	bl	wattr_off		//
// main.cpp:467:             search_text(lines, search_str, cursor_x, cursor_y, scroll_offset, current_line);
	add	x5, sp, 168	// tmp373,,
	add	x4, sp, 220	// tmp374,,
	add	x3, sp, 224	// tmp375,,
	add	x2, sp, 228	// tmp376,,
	add	x1, sp, 136	// tmp377,,
	add	x0, sp, 208	// tmp378,,
	bl	search_text		//
// main.cpp:468:             move(cursor_y, cursor_x);
	ldr	w0, [sp, 224]	// cursor_y.64_36, cursor_y
	ldr	w1, [sp, 228]	// cursor_x.65_37, cursor_x
	bl	move		//
// main.cpp:469:             refresh();
	bl	refresh		//
// main.cpp:470:             break;
	b	.L114		//
.L111:
// main.cpp:472:             attron(A_BOLD | A_REVERSE);
	adrp	x0, :got:stdscr	// tmp380,
	ldr	x0, [x0, #:got_lo12:stdscr]	// tmp379, tmp380,
	ldr	x0, [x0]	// stdscr.66_38, stdscr
	mov	x2, 0	//,
	mov	w1, 2359296	//,
	bl	wattr_on		//
// main.cpp:473:             search_str = get_user_input("Search for: ");
	add	x0, sp, 320	// tmp381,,
	mov	x8, x0	//, tmp381
	adrp	x0, .LC6	// tmp382,
	add	x0, x0, :lo12:.LC6	//, tmp382,
	bl	get_user_input_abi_cxx11_		//
// main.cpp:473:             search_str = get_user_input("Search for: ");
	add	x1, sp, 320	// tmp383,,
	add	x0, sp, 136	// tmp384,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_		//
// main.cpp:473:             search_str = get_user_input("Search for: ");
	add	x0, sp, 320	// tmp385,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev		//
// main.cpp:474:             replace_str = get_user_input("Replace with: ");
	add	x0, sp, 352	// tmp386,,
	mov	x8, x0	//, tmp386
	adrp	x0, .LC7	// tmp387,
	add	x0, x0, :lo12:.LC7	//, tmp387,
	bl	get_user_input_abi_cxx11_		//
// main.cpp:474:             replace_str = get_user_input("Replace with: ");
	add	x1, sp, 352	// tmp388,,
	add	x0, sp, 104	// tmp389,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_		//
// main.cpp:474:             replace_str = get_user_input("Replace with: ");
	add	x0, sp, 352	// tmp390,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev		//
// main.cpp:475:             attroff(A_BOLD | A_REVERSE);
	adrp	x0, :got:stdscr	// tmp392,
	ldr	x0, [x0, #:got_lo12:stdscr]	// tmp391, tmp392,
	ldr	x0, [x0]	// stdscr.67_39, stdscr
	mov	x2, 0	//,
	mov	w1, 2359296	//,
	bl	wattr_off		//
// main.cpp:476:             replace_text(lines, search_str, replace_str);
	add	x2, sp, 104	// tmp393,,
	add	x1, sp, 136	// tmp394,,
	add	x0, sp, 208	// tmp395,,
	bl	replace_text		//
// main.cpp:477:             refresh();
	bl	refresh		//
// main.cpp:478:             break;
	b	.L114		//
.L109:
// main.cpp:480:             list_clear(lines);
	add	x0, sp, 208	// tmp396,,
	bl	list_clear		//
// main.cpp:481:             endwin();
	bl	endwin		//
// main.cpp:482:             return 0;
	mov	w19, 0	// _306,
// main.cpp:595: }
	add	x0, sp, 104	// tmp397,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev		//
	add	x0, sp, 136	// tmp398,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev		//
	add	x0, sp, 176	// tmp399,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev		//
	mov	w0, w19	// <retval>, _306
	b	.L141		//
.L112:
// main.cpp:484:             save_file(filename.c_str(), lines);
	add	x0, sp, 176	// tmp400,,
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv		//
	mov	x2, x0	// _40,
	add	x0, sp, 208	// tmp401,,
	mov	x1, x0	//, tmp401
	mov	x0, x2	//, _40
	bl	save_file		//
// main.cpp:485:             break;
	b	.L114		//
.L103:
// main.cpp:487:             if (cursor_x < static_cast<int>(current_line->line.size()))
	ldr	x0, [sp, 168]	// current_line.69_41, current_line
// main.cpp:487:             if (cursor_x < static_cast<int>(current_line->line.size()))
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv		//
// main.cpp:487:             if (cursor_x < static_cast<int>(current_line->line.size()))
	mov	w1, w0	// _44, _43
	ldr	w0, [sp, 228]	// cursor_x.70_45, cursor_x
	cmp	w1, w0	// _44, cursor_x.70_45
	cset	w0, gt	// tmp403,
	and	w0, w0, 255	// retval.68_264, tmp402
// main.cpp:487:             if (cursor_x < static_cast<int>(current_line->line.size()))
	cmp	w0, 0	// retval.68_264,
	beq	.L116		//,
// main.cpp:489:                 current_line->line.erase(cursor_x, 1);
	ldr	x0, [sp, 168]	// current_line.71_46, current_line
// main.cpp:489:                 current_line->line.erase(cursor_x, 1);
	mov	x3, x0	// _47, current_line.71_46
	ldr	w0, [sp, 228]	// cursor_x.72_48, cursor_x
	sxtw	x0, w0	// _49, cursor_x.72_48
	mov	x2, 1	//,
	mov	x1, x0	//, _49
	mov	x0, x3	//, _47
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm		//
// main.cpp:497:             break;
	b	.L143		//
.L116:
// main.cpp:491:             else if (current_line->next)
	ldr	x0, [sp, 168]	// current_line.73_50, current_line
	ldr	x0, [x0, 32]	// _51, current_line.73_50->next
// main.cpp:491:             else if (current_line->next)
	cmp	x0, 0	// _51,
	beq	.L143		//,
// main.cpp:493:                 current_line->line.append(current_line->next->line);
	ldr	x0, [sp, 168]	// current_line.74_52, current_line
// main.cpp:493:                 current_line->line.append(current_line->next->line);
	mov	x2, x0	// _53, current_line.74_52
// main.cpp:493:                 current_line->line.append(current_line->next->line);
	ldr	x0, [sp, 168]	// current_line.75_54, current_line
	ldr	x0, [x0, 32]	// _55, current_line.75_54->next
// main.cpp:493:                 current_line->line.append(current_line->next->line);
	mov	x1, x0	//, _56
	mov	x0, x2	//, _53
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_		//
// main.cpp:494:                 list_erase_next(current_line);
	add	x0, sp, 168	// tmp404,,
	bl	list_erase_next		//
// main.cpp:495:                 nodes--;
	ldr	x0, [sp, 232]	// nodes.76_57, nodes
	sub	x0, x0, #1	// _58, nodes.76_57,
	str	x0, [sp, 232]	// _58, nodes
// main.cpp:497:             break;
	b	.L143		//
.L104:
// main.cpp:500:             if (cursor_x == 0 && cursor_y > 3)
	ldr	w0, [sp, 228]	// cursor_x.77_59, cursor_x
// main.cpp:500:             if (cursor_x == 0 && cursor_y > 3)
	cmp	w0, 0	// cursor_x.77_59,
	bne	.L118		//,
// main.cpp:500:             if (cursor_x == 0 && cursor_y > 3)
	ldr	w0, [sp, 224]	// cursor_y.78_60, cursor_y
// main.cpp:500:             if (cursor_x == 0 && cursor_y > 3)
	cmp	w0, 3	// cursor_y.78_60,
	ble	.L118		//,
// main.cpp:502:                 Node *prev = list_advance(lines.head, cursor_y - 4 + scroll_offset);
	ldr	x2, [sp, 208]	// _61, lines.head
// main.cpp:502:                 Node *prev = list_advance(lines.head, cursor_y - 4 + scroll_offset);
	ldr	w0, [sp, 224]	// cursor_y.79_62, cursor_y
	sub	w1, w0, #4	// _63, cursor_y.79_62,
// main.cpp:502:                 Node *prev = list_advance(lines.head, cursor_y - 4 + scroll_offset);
	ldr	w0, [sp, 220]	// scroll_offset.80_64, scroll_offset
	add	w0, w1, w0	// _65, _63, scroll_offset.80_64
	mov	w1, w0	//, _65
	mov	x0, x2	//, _61
	bl	list_advance		//
// main.cpp:502:                 Node *prev = list_advance(lines.head, cursor_y - 4 + scroll_offset);
	str	x0, [sp, 72]	// _66, prev
// main.cpp:503:                 prev->line.append(current_line->line);
	ldr	x0, [sp, 72]	// prev.81_67, prev
// main.cpp:503:                 prev->line.append(current_line->line);
	mov	x2, x0	// _68, prev.81_67
// main.cpp:503:                 prev->line.append(current_line->line);
	ldr	x0, [sp, 168]	// current_line.82_69, current_line
// main.cpp:503:                 prev->line.append(current_line->line);
	mov	x1, x0	//, _70
	mov	x0, x2	//, _68
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_		//
// main.cpp:504:                 list_erase_next(prev);
	add	x0, sp, 72	// tmp405,,
	bl	list_erase_next		//
// main.cpp:505:                 nodes--;
	ldr	x0, [sp, 232]	// nodes.83_71, nodes
	sub	x0, x0, #1	// _72, nodes.83_71,
	str	x0, [sp, 232]	// _72, nodes
// main.cpp:506:                 cursor_x = prev->line.length();
	ldr	x0, [sp, 72]	// prev.84_73, prev
// main.cpp:506:                 cursor_x = prev->line.length();
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv		//
// main.cpp:506:                 cursor_x = prev->line.length();
	str	w0, [sp, 228]	// _76, cursor_x
// main.cpp:507:                 cursor_y--;
	ldr	w0, [sp, 224]	// cursor_y.85_77, cursor_y
	sub	w0, w0, #1	// _78, cursor_y.85_77,
	str	w0, [sp, 224]	// _78, cursor_y
// main.cpp:508:             }
	nop	
// main.cpp:514:             break;
	b	.L144		//
.L118:
// main.cpp:509:             else if (cursor_x > 0)
	ldr	w0, [sp, 228]	// cursor_x.86_79, cursor_x
// main.cpp:509:             else if (cursor_x > 0)
	cmp	w0, 0	// cursor_x.86_79,
	ble	.L144		//,
// main.cpp:511:                 current_line->line.erase(cursor_x - 1, 1);
	ldr	x0, [sp, 168]	// current_line.87_80, current_line
// main.cpp:511:                 current_line->line.erase(cursor_x - 1, 1);
	mov	x3, x0	// _81, current_line.87_80
// main.cpp:511:                 current_line->line.erase(cursor_x - 1, 1);
	ldr	w0, [sp, 228]	// cursor_x.88_82, cursor_x
	sub	w0, w0, #1	// _83, cursor_x.88_82,
// main.cpp:511:                 current_line->line.erase(cursor_x - 1, 1);
	sxtw	x0, w0	// _84, _83
	mov	x2, 1	//,
	mov	x1, x0	//, _84
	mov	x0, x3	//, _81
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm		//
// main.cpp:512:                 cursor_x--;
	ldr	w0, [sp, 228]	// cursor_x.89_85, cursor_x
	sub	w0, w0, #1	// _86, cursor_x.89_85,
	str	w0, [sp, 228]	// _86, cursor_x
// main.cpp:514:             break;
	b	.L144		//
.L102:
// main.cpp:518:             memory += sizeof(Node);
	ldr	x0, [sp, 240]	// memory.90_87, memory
	add	x0, x0, 40	// _88, memory.90_87,
	str	x0, [sp, 240]	// _88, memory
// main.cpp:519:             nodes++;
	ldr	x0, [sp, 232]	// nodes.91_89, nodes
	add	x0, x0, 1	// _90, nodes.91_89,
	str	x0, [sp, 232]	// _90, nodes
// main.cpp:520:             std::string new_line = current_line->line.substr(cursor_x);
	ldr	x0, [sp, 168]	// current_line.92_91, current_line
// main.cpp:520:             std::string new_line = current_line->line.substr(cursor_x);
	mov	x3, x0	// _92, current_line.92_91
	ldr	w0, [sp, 228]	// cursor_x.93_93, cursor_x
	sxtw	x0, w0	// _94, cursor_x.93_93
	add	x1, sp, 40	// tmp406,,
	mov	x8, x1	//, tmp406
	mov	x2, -1	//,
	mov	x1, x0	//, _94
	mov	x0, x3	//, _92
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm		//
.LEHE17:
// main.cpp:521:             current_line->line.erase(cursor_x);
	ldr	x0, [sp, 168]	// current_line.94_95, current_line
// main.cpp:521:             current_line->line.erase(cursor_x);
	mov	x3, x0	// _96, current_line.94_95
	ldr	w0, [sp, 228]	// cursor_x.95_97, cursor_x
	sxtw	x0, w0	// _98, cursor_x.95_97
	mov	x2, -1	//,
	mov	x1, x0	//, _98
	mov	x0, x3	//, _96
.LEHB18:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm		//
// main.cpp:522:             Node *new_node = make_node(new_line);
	add	x0, sp, 40	// tmp407,,
	bl	make_node		//
.LEHE18:
	str	x0, [sp, 384]	// _349, new_node
// main.cpp:523:             new_node->next = current_line->next;
	ldr	x0, [sp, 168]	// current_line.96_99, current_line
	ldr	x1, [x0, 32]	// _100, current_line.96_99->next
// main.cpp:523:             new_node->next = current_line->next;
	ldr	x0, [sp, 384]	// tmp408, new_node
	str	x1, [x0, 32]	// _100, new_node_350->next
// main.cpp:524:             current_line->next = new_node;
	ldr	x0, [sp, 168]	// current_line.97_101, current_line
// main.cpp:524:             current_line->next = new_node;
	ldr	x1, [sp, 384]	// tmp409, new_node
	str	x1, [x0, 32]	// tmp409, current_line.97_101->next
// main.cpp:526:             cursor_x = 0;
	str	wzr, [sp, 228]	//, cursor_x
// main.cpp:527:             cursor_y++;
	ldr	w0, [sp, 224]	// cursor_y.98_102, cursor_y
	add	w0, w0, 1	// _103, cursor_y.98_102,
	str	w0, [sp, 224]	// _103, cursor_y
// main.cpp:528:             if (cursor_y >= LINES - 1)
	adrp	x0, :got:LINES	// tmp411,
	ldr	x0, [x0, #:got_lo12:LINES]	// tmp410, tmp411,
	ldr	w0, [x0]	// LINES.99_104, LINES
	sub	w1, w0, #1	// _105, LINES.99_104,
// main.cpp:528:             if (cursor_y >= LINES - 1)
	ldr	w0, [sp, 224]	// cursor_y.100_106, cursor_y
// main.cpp:528:             if (cursor_y >= LINES - 1)
	cmp	w1, w0	// _105, cursor_y.100_106
	bgt	.L120		//,
// main.cpp:530:                 cursor_y--;
	ldr	w0, [sp, 224]	// cursor_y.101_107, cursor_y
	sub	w0, w0, #1	// _108, cursor_y.101_107,
	str	w0, [sp, 224]	// _108, cursor_y
// main.cpp:531:                 scroll_offset++;
	ldr	w0, [sp, 220]	// scroll_offset.102_109, scroll_offset
	add	w0, w0, 1	// _110, scroll_offset.102_109,
	str	w0, [sp, 220]	// _110, scroll_offset
.L120:
// main.cpp:533:             current_line = new_node;
	ldr	x0, [sp, 384]	// tmp412, new_node
	str	x0, [sp, 168]	// tmp412, current_line
// main.cpp:534:             break;
	nop	
// main.cpp:535:         }
	add	x0, sp, 40	// tmp413,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev		//
	b	.L130		//
.L107:
// main.cpp:537:             if (cursor_y > 3)
	ldr	w0, [sp, 224]	// cursor_y.103_111, cursor_y
// main.cpp:537:             if (cursor_y > 3)
	cmp	w0, 3	// cursor_y.103_111,
	ble	.L121		//,
// main.cpp:539:                 cursor_y--;
	ldr	w0, [sp, 224]	// cursor_y.104_112, cursor_y
	sub	w0, w0, #1	// _113, cursor_y.104_112,
	str	w0, [sp, 224]	// _113, cursor_y
	b	.L122		//
.L121:
// main.cpp:541:             else if (scroll_offset > 0)
	ldr	w0, [sp, 220]	// scroll_offset.105_114, scroll_offset
// main.cpp:541:             else if (scroll_offset > 0)
	cmp	w0, 0	// scroll_offset.105_114,
	ble	.L122		//,
// main.cpp:543:                 scroll_offset--;
	ldr	w0, [sp, 220]	// scroll_offset.106_115, scroll_offset
	sub	w0, w0, #1	// _116, scroll_offset.106_115,
	str	w0, [sp, 220]	// _116, scroll_offset
.L122:
// main.cpp:545:             current_line = list_advance(lines.head, cursor_y - 3 + scroll_offset);
	ldr	x2, [sp, 208]	// _117, lines.head
// main.cpp:545:             current_line = list_advance(lines.head, cursor_y - 3 + scroll_offset);
	ldr	w0, [sp, 224]	// cursor_y.107_118, cursor_y
	sub	w1, w0, #3	// _119, cursor_y.107_118,
// main.cpp:545:             current_line = list_advance(lines.head, cursor_y - 3 + scroll_offset);
	ldr	w0, [sp, 220]	// scroll_offset.108_120, scroll_offset
	add	w0, w1, w0	// _121, _119, scroll_offset.108_120
	mov	w1, w0	//, _121
	mov	x0, x2	//, _117
.LEHB19:
	bl	list_advance		//
// main.cpp:545:             current_line = list_advance(lines.head, cursor_y - 3 + scroll_offset);
	str	x0, [sp, 168]	// _122, current_line
// main.cpp:546:             break;
	b	.L114		//
.L108:
// main.cpp:548:             if (cursor_y < LINES - 2 && current_line->next)
	adrp	x0, :got:LINES	// tmp415,
	ldr	x0, [x0, #:got_lo12:LINES]	// tmp414, tmp415,
	ldr	w0, [x0]	// LINES.109_123, LINES
	sub	w1, w0, #2	// _124, LINES.109_123,
// main.cpp:548:             if (cursor_y < LINES - 2 && current_line->next)
	ldr	w0, [sp, 224]	// cursor_y.110_125, cursor_y
// main.cpp:548:             if (cursor_y < LINES - 2 && current_line->next)
	cmp	w1, w0	// _124, cursor_y.110_125
	ble	.L123		//,
// main.cpp:548:             if (cursor_y < LINES - 2 && current_line->next)
	ldr	x0, [sp, 168]	// current_line.111_126, current_line
	ldr	x0, [x0, 32]	// _127, current_line.111_126->next
// main.cpp:548:             if (cursor_y < LINES - 2 && current_line->next)
	cmp	x0, 0	// _127,
	beq	.L123		//,
// main.cpp:550:                 cursor_y++;
	ldr	w0, [sp, 224]	// cursor_y.112_128, cursor_y
	add	w0, w0, 1	// _129, cursor_y.112_128,
	str	w0, [sp, 224]	// _129, cursor_y
// main.cpp:551:                 current_line = current_line->next;
	ldr	x0, [sp, 168]	// current_line.113_130, current_line
	ldr	x0, [x0, 32]	// _131, current_line.113_130->next
// main.cpp:551:                 current_line = current_line->next;
	str	x0, [sp, 168]	// _131, current_line
// main.cpp:558:             break;
	b	.L145		//
.L123:
// main.cpp:553:             else if (current_line->next)
	ldr	x0, [sp, 168]	// current_line.114_132, current_line
	ldr	x0, [x0, 32]	// _133, current_line.114_132->next
// main.cpp:553:             else if (current_line->next)
	cmp	x0, 0	// _133,
	beq	.L145		//,
// main.cpp:555:                 scroll_offset++;
	ldr	w0, [sp, 220]	// scroll_offset.115_134, scroll_offset
	add	w0, w0, 1	// _135, scroll_offset.115_134,
	str	w0, [sp, 220]	// _135, scroll_offset
// main.cpp:556:                 current_line = current_line->next;
	ldr	x0, [sp, 168]	// current_line.116_136, current_line
	ldr	x0, [x0, 32]	// _137, current_line.116_136->next
// main.cpp:556:                 current_line = current_line->next;
	str	x0, [sp, 168]	// _137, current_line
// main.cpp:558:             break;
	b	.L145		//
.L106:
// main.cpp:560:             if (cursor_x > 0)
	ldr	w0, [sp, 228]	// cursor_x.117_138, cursor_x
// main.cpp:560:             if (cursor_x > 0)
	cmp	w0, 0	// cursor_x.117_138,
	ble	.L125		//,
// main.cpp:562:                 cursor_x--;
	ldr	w0, [sp, 228]	// cursor_x.118_139, cursor_x
	sub	w0, w0, #1	// _140, cursor_x.118_139,
	str	w0, [sp, 228]	// _140, cursor_x
// main.cpp:570:             break;
	b	.L146		//
.L125:
// main.cpp:564:             else if (cursor_y > 3)
	ldr	w0, [sp, 224]	// cursor_y.119_141, cursor_y
// main.cpp:564:             else if (cursor_y > 3)
	cmp	w0, 3	// cursor_y.119_141,
	ble	.L146		//,
// main.cpp:566:                 cursor_y--;
	ldr	w0, [sp, 224]	// cursor_y.120_142, cursor_y
	sub	w0, w0, #1	// _143, cursor_y.120_142,
	str	w0, [sp, 224]	// _143, cursor_y
// main.cpp:567:                 current_line = list_advance(lines.head, cursor_y - 3 + scroll_offset);
	ldr	x2, [sp, 208]	// _144, lines.head
// main.cpp:567:                 current_line = list_advance(lines.head, cursor_y - 3 + scroll_offset);
	ldr	w0, [sp, 224]	// cursor_y.121_145, cursor_y
	sub	w1, w0, #3	// _146, cursor_y.121_145,
// main.cpp:567:                 current_line = list_advance(lines.head, cursor_y - 3 + scroll_offset);
	ldr	w0, [sp, 220]	// scroll_offset.122_147, scroll_offset
	add	w0, w1, w0	// _148, _146, scroll_offset.122_147
	mov	w1, w0	//, _148
	mov	x0, x2	//, _144
	bl	list_advance		//
// main.cpp:567:                 current_line = list_advance(lines.head, cursor_y - 3 + scroll_offset);
	str	x0, [sp, 168]	// _149, current_line
// main.cpp:568:                 cursor_x = current_line->line.size();
	ldr	x0, [sp, 168]	// current_line.123_150, current_line
// main.cpp:568:                 cursor_x = current_line->line.size();
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv		//
// main.cpp:568:                 cursor_x = current_line->line.size();
	str	w0, [sp, 228]	// _153, cursor_x
// main.cpp:570:             break;
	b	.L146		//
.L105:
// main.cpp:572:             if (cursor_x < static_cast<int>(current_line->line.size()))
	ldr	x0, [sp, 168]	// current_line.125_154, current_line
// main.cpp:572:             if (cursor_x < static_cast<int>(current_line->line.size()))
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv		//
// main.cpp:572:             if (cursor_x < static_cast<int>(current_line->line.size()))
	mov	w1, w0	// _157, _156
	ldr	w0, [sp, 228]	// cursor_x.126_158, cursor_x
	cmp	w1, w0	// _157, cursor_x.126_158
	cset	w0, gt	// tmp417,
	and	w0, w0, 255	// retval.124_270, tmp416
// main.cpp:572:             if (cursor_x < static_cast<int>(current_line->line.size()))
	cmp	w0, 0	// retval.124_270,
	beq	.L127		//,
// main.cpp:574:                 cursor_x++;
	ldr	w0, [sp, 228]	// cursor_x.127_159, cursor_x
	add	w0, w0, 1	// _160, cursor_x.127_159,
	str	w0, [sp, 228]	// _160, cursor_x
// main.cpp:582:             break;
	b	.L147		//
.L127:
// main.cpp:576:             else if (current_line->next)
	ldr	x0, [sp, 168]	// current_line.128_161, current_line
	ldr	x0, [x0, 32]	// _162, current_line.128_161->next
// main.cpp:576:             else if (current_line->next)
	cmp	x0, 0	// _162,
	beq	.L147		//,
// main.cpp:578:                 cursor_y++;
	ldr	w0, [sp, 224]	// cursor_y.129_163, cursor_y
	add	w0, w0, 1	// _164, cursor_y.129_163,
	str	w0, [sp, 224]	// _164, cursor_y
// main.cpp:579:                 cursor_x = 0;
	str	wzr, [sp, 228]	//, cursor_x
// main.cpp:580:                 current_line = current_line->next;
	ldr	x0, [sp, 168]	// current_line.130_165, current_line
	ldr	x0, [x0, 32]	// _166, current_line.130_165->next
// main.cpp:580:                 current_line = current_line->next;
	str	x0, [sp, 168]	// _166, current_line
// main.cpp:582:             break;
	b	.L147		//
.L101:
// main.cpp:584:             if (ch >= 32 && ch <= 126)
	ldr	w0, [sp, 392]	// tmp418, ch
	cmp	w0, 31	// tmp418,
	ble	.L148		//,
// main.cpp:584:             if (ch >= 32 && ch <= 126)
	ldr	w0, [sp, 392]	// tmp419, ch
	cmp	w0, 126	// tmp419,
	bgt	.L148		//,
// main.cpp:586:                 current_line->line.insert(cursor_x, 1, static_cast<char>(ch));
	ldr	x0, [sp, 168]	// current_line.131_167, current_line
// main.cpp:586:                 current_line->line.insert(cursor_x, 1, static_cast<char>(ch));
	mov	x4, x0	// _168, current_line.131_167
	ldr	w0, [sp, 228]	// cursor_x.132_169, cursor_x
	sxtw	x0, w0	// _170, cursor_x.132_169
	ldr	w1, [sp, 392]	// tmp420, ch
	and	w1, w1, 255	// _171, tmp420
	mov	w3, w1	//, _171
	mov	x2, 1	//,
	mov	x1, x0	//, _170
	mov	x0, x4	//, _168
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmmc		//
.LEHE19:
// main.cpp:587:                 cursor_x++;
	ldr	w0, [sp, 228]	// cursor_x.133_172, cursor_x
	add	w0, w0, 1	// _173, cursor_x.133_172,
	str	w0, [sp, 228]	// _173, cursor_x
// main.cpp:589:             break;
	b	.L148		//
.L142:
// main.cpp:462:             break;
	nop	
	b	.L130		//
.L143:
// main.cpp:497:             break;
	nop	
	b	.L130		//
.L144:
// main.cpp:514:             break;
	nop	
	b	.L130		//
.L145:
// main.cpp:558:             break;
	nop	
	b	.L130		//
.L146:
// main.cpp:570:             break;
	nop	
	b	.L130		//
.L147:
// main.cpp:582:             break;
	nop	
	b	.L130		//
.L148:
// main.cpp:589:             break;
	nop	
.L114:
// main.cpp:591:     }
	b	.L130		//
.L138:
// main.cpp:395:         list_push_back(lines, "");
	mov	x19, x0	// tmp424,
	add	x0, sp, 248	// tmp422,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev		//
	b	.L132		//
.L137:
	mov	x19, x0	// tmp423,
.L132:
// main.cpp:395:         list_push_back(lines, "");
	add	x0, sp, 280	// tmp427,,
	bl	_ZNSaIcED1Ev		//
	b	.L133		//
.L140:
// main.cpp:535:         }
	mov	x19, x0	// tmp432,
	add	x0, sp, 40	// tmp430,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev		//
	b	.L135		//
.L139:
// main.cpp:595: }
	mov	x19, x0	// tmp431,
.L135:
	add	x0, sp, 104	// tmp435,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev		//
	add	x0, sp, 136	// tmp438,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev		//
	b	.L133		//
.L136:
	mov	x19, x0	// tmp428,
.L133:
	add	x0, sp, 176	// tmp439,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev		//
	mov	x0, x19	// D.49678, tmp428
.LEHB20:
	bl	_Unwind_Resume		//
.LEHE20:
.L141:
	ldp	x19, x30, [sp], 416	//,,,
	.cfi_restore 30
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1681:
	.section	.gcc_except_table
.LLSDA1681:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1681-.LLSDACSB1681
.LLSDACSB1681:
	.uleb128 .LEHB13-.LFB1681
	.uleb128 .LEHE13-.LEHB13
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB14-.LFB1681
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L136-.LFB1681
	.uleb128 0
	.uleb128 .LEHB15-.LFB1681
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L137-.LFB1681
	.uleb128 0
	.uleb128 .LEHB16-.LFB1681
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L138-.LFB1681
	.uleb128 0
	.uleb128 .LEHB17-.LFB1681
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L139-.LFB1681
	.uleb128 0
	.uleb128 .LEHB18-.LFB1681
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L140-.LFB1681
	.uleb128 0
	.uleb128 .LEHB19-.LFB1681
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L139-.LFB1681
	.uleb128 0
	.uleb128 .LEHB20-.LFB1681
	.uleb128 .LEHE20-.LEHB20
	.uleb128 0
	.uleb128 0
.LLSDACSE1681:
	.text
	.size	main, .-main
	.section	.text.int_const__std__min_int_,"axG",@progbits,int_const__std__min_int_,comdat
	.align	2
	.weak	int_const__std__min_int_
	.type	int_const__std__min_int_, %function