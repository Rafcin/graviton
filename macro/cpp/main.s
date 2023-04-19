	.arch armv8-a
	.file	"main.cpp"
// GNU C++11 (Ubuntu 11.3.0-1ubuntu1~22.04) version 11.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 11.3.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -std=c++11 -fomit-frame-pointer -fno-stack-protector -fPIC -fasynchronous-unwind-tables -fstack-clash-protection
	.text
	.section	.rodata
	.align	3
	.type	_ZStL19piecewise_construct, %object
	.size	_ZStL19piecewise_construct, 1
_ZStL19piecewise_construct:
	.zero	1
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,8
	.section	.text._ZN10LinkedListC2Ev,"axG",@progbits,_ZN10LinkedListC5Ev,comdat
	.align	2
	.weak	_ZN10LinkedListC2Ev
	.type	_ZN10LinkedListC2Ev, %function
_ZN10LinkedListC2Ev:
.LFB1657:
	.cfi_startproc
	sub	sp, sp, #16	//,,
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]	// this, this
// ./lib/linked_list/linked_list.h:15:     LinkedList() : head(NULL) {}
	ldr	x0, [sp, 8]	// tmp92, this
	str	xzr, [x0]	//, this_2(D)->head
// ./lib/linked_list/linked_list.h:15:     LinkedList() : head(NULL) {}
	nop	
	add	sp, sp, 16	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1657:
	.size	_ZN10LinkedListC2Ev, .-_ZN10LinkedListC2Ev
	.weak	_ZN10LinkedListC1Ev
	.set	_ZN10LinkedListC1Ev,_ZN10LinkedListC2Ev
	.global	CONTROLS
	.section	.rodata
	.align	3
.LC0:
	.string	"^X:Exit  ^O:Save  ^W:Search  ^T:Replace"
	.section	.data.rel.local,"aw"
	.align	3
	.type	CONTROLS, %object
	.size	CONTROLS, 8
CONTROLS:
	.xword	.LC0
	.section	.rodata
	.align	3
.LC1:
	.string	""
	.align	3
.LC2:
	.string	"Macro"
	.align	3
.LC3:
	.string	"%s"
	.align	3
.LC4:
	.string	"Search: "
	.align	3
.LC5:
	.string	"Search for: "
	.align	3
.LC6:
	.string	"Replace with: "
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1659:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1659
	stp	x19, x30, [sp, -416]!	//,,,
	.cfi_def_cfa_offset 416
	.cfi_offset 19, -416
	.cfi_offset 30, -408
	str	w0, [sp, 28]	// argc, argc
	str	x1, [sp, 16]	// argv, argv
.LEHB0:
// main.cpp:18:     initscr();
	bl	initscr		//
// main.cpp:19:     raw();
	bl	raw		//
// main.cpp:20:     keypad(stdscr, TRUE);
	adrp	x0, :got:stdscr	// tmp275,
	ldr	x0, [x0, #:got_lo12:stdscr]	// tmp274, tmp275,
	ldr	x0, [x0]	// stdscr.0_1, stdscr
	mov	w1, 1	//,
	bl	keypad		//
// main.cpp:21:     noecho();
	bl	noecho		//
.LEHE0:
// main.cpp:23:     size_t memory = 0;
	str	xzr, [sp, 240]	//, memory
// main.cpp:24:     size_t nodes = 0;
	str	xzr, [sp, 232]	//, nodes
// main.cpp:27:     int cursor_x = 0;
	str	wzr, [sp, 228]	//, cursor_x
// main.cpp:28:     int cursor_y = 3;
	mov	w0, 3	// tmp276,
	str	w0, [sp, 224]	// tmp276, cursor_y
// main.cpp:30:     int scroll_offset = 0;
	str	wzr, [sp, 220]	//, scroll_offset
// main.cpp:32:     LinkedList lines;
	add	x0, sp, 208	// tmp277,,
	bl	_ZN10LinkedListC1Ev		//
// main.cpp:33:     std::string filename;
	add	x0, sp, 176	// tmp278,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev		//
// main.cpp:36:     if (argc > 1)
	ldr	w0, [sp, 28]	// tmp279, argc
	cmp	w0, 1	// tmp279,
	ble	.L3		//,
// main.cpp:38:         filename = argv[1];
	ldr	x0, [sp, 16]	// tmp280, argv
	add	x0, x0, 8	// _2, tmp280,
	ldr	x1, [x0]	// _3, *_2
	add	x0, sp, 176	// tmp281,,
.LEHB1:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc		//
// main.cpp:39:         open_file(filename.c_str(), lines, memory, nodes);
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
	bl	_Z9open_filePKcR10LinkedListRmS3_		//
.LEHE1:
.L3:
// main.cpp:42:     if (!lines.head)
	ldr	x0, [sp, 208]	// _5, lines.head
// main.cpp:42:     if (!lines.head)
	cmp	x0, 0	// _5,
	bne	.L4		//,
// main.cpp:44:         list_push_back(lines, "");
	add	x0, sp, 280	// tmp286,,
	bl	_ZNSaIcEC1Ev		//
	add	x0, sp, 280	// tmp287,,
	add	x3, sp, 248	// tmp288,,
	mov	x2, x0	//, tmp287
	adrp	x0, .LC1	// tmp289,
	add	x1, x0, :lo12:.LC1	//, tmp289,
	mov	x0, x3	//, tmp288
.LEHB2:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_		//
.LEHE2:
// main.cpp:44:         list_push_back(lines, "");
	add	x1, sp, 248	// tmp290,,
	add	x0, sp, 208	// tmp291,,
.LEHB3:
	bl	_Z14list_push_backR10LinkedListRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE		//
.LEHE3:
// main.cpp:44:         list_push_back(lines, "");
	add	x0, sp, 248	// tmp292,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev		//
	add	x0, sp, 280	// tmp293,,
	bl	_ZNSaIcED1Ev		//
// main.cpp:45:         nodes++;
	ldr	x0, [sp, 232]	// nodes.1_6, nodes
	add	x0, x0, 1	// _7, nodes.1_6,
	str	x0, [sp, 232]	// _7, nodes
.L4:
// main.cpp:48:     Node *current_line = lines.head;
	ldr	x0, [sp, 208]	// _8, lines.head
// main.cpp:48:     Node *current_line = lines.head;
	str	x0, [sp, 168]	// _8, current_line
// main.cpp:49:     std::string search_str;
	add	x0, sp, 136	// tmp294,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev		//
// main.cpp:50:     std::string replace_str;
	add	x0, sp, 104	// tmp295,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev		//
.LEHB4:
// main.cpp:53:     if (has_colors())
	bl	has_colors		//
	and	w0, w0, 255	// _235, tmp296
// main.cpp:53:     if (has_colors())
	cmp	w0, 0	// _235,
	beq	.L5		//,
// main.cpp:55:         start_color();
	bl	start_color		//
// main.cpp:56:         init_pair(1, COLOR_YELLOW, COLOR_BLACK);
	mov	w2, 0	//,
	mov	w1, 3	//,
	mov	w0, 1	//,
	bl	init_pair		//
.L5:
// main.cpp:60:     init_pair(1, COLOR_WHITE, COLOR_BLUE);
	mov	w2, 4	//,
	mov	w1, 7	//,
	mov	w0, 1	//,
	bl	init_pair		//
// main.cpp:61:     mousemask(ALL_MOUSE_EVENTS | REPORT_MOUSE_POSITION, NULL);
	mov	x1, 0	//,
	mov	w0, 536870911	//,
	bl	mousemask		//
.L39:
// main.cpp:65:         clear(); // Clear the screen
	bl	clear		//
// main.cpp:68:         attron(A_REVERSE);
	adrp	x0, :got:stdscr	// tmp298,
	ldr	x0, [x0, #:got_lo12:stdscr]	// tmp297, tmp298,
	ldr	x0, [x0]	// stdscr.3_9, stdscr
	mov	x2, 0	//,
	mov	w1, 262144	//,
	bl	wattr_on		//
// main.cpp:69:         mvprintw(0, 0, "Macro");
	adrp	x0, .LC2	// tmp299,
	add	x2, x0, :lo12:.LC2	//, tmp299,
	mov	w1, 0	//,
	mov	w0, 0	//,
	bl	mvprintw		//
// main.cpp:70:         attroff(A_REVERSE);
	adrp	x0, :got:stdscr	// tmp301,
	ldr	x0, [x0, #:got_lo12:stdscr]	// tmp300, tmp301,
	ldr	x0, [x0]	// stdscr.4_10, stdscr
	mov	x2, 0	//,
	mov	w1, 262144	//,
	bl	wattr_off		//
// main.cpp:72:         display_memory_info(memory, nodes); // Display memory usage
	ldr	x0, [sp, 240]	// memory.5_11, memory
	ldr	x1, [sp, 232]	// nodes.6_12, nodes
	bl	_Z19display_memory_infomm		//
// main.cpp:75:         int y = 3;
	mov	w0, 3	// tmp302,
	str	w0, [sp, 412]	// tmp302, y
// main.cpp:76:         Node *current = lines.head;
	ldr	x0, [sp, 208]	// tmp303, lines.head
	str	x0, [sp, 400]	// tmp303, current
// main.cpp:77:         int line_count = 0;
	str	wzr, [sp, 396]	//, line_count
// main.cpp:78:         while (current)
	b	.L6		//
.L8:
// main.cpp:80:             if (line_count >= scroll_offset && y < LINES - 1)
	ldr	w0, [sp, 220]	// scroll_offset.7_13, scroll_offset
// main.cpp:80:             if (line_count >= scroll_offset && y < LINES - 1)
	ldr	w1, [sp, 396]	// tmp304, line_count
	cmp	w1, w0	// tmp304, scroll_offset.7_13
	blt	.L7		//,
// main.cpp:80:             if (line_count >= scroll_offset && y < LINES - 1)
	adrp	x0, :got:LINES	// tmp306,
	ldr	x0, [x0, #:got_lo12:LINES]	// tmp305, tmp306,
	ldr	w0, [x0]	// LINES.8_14, LINES
	sub	w0, w0, #1	// _15, LINES.8_14,
// main.cpp:80:             if (line_count >= scroll_offset && y < LINES - 1)
	ldr	w1, [sp, 412]	// tmp307, y
	cmp	w1, w0	// tmp307, _15
	bge	.L7		//,
// main.cpp:82:                 mvprintw(y++, 0, "%s", current->line.c_str());
	ldr	w19, [sp, 412]	// y.9_16, y
	add	w0, w19, 1	// tmp308, y.9_16,
	str	w0, [sp, 412]	// tmp308, y
	ldr	x0, [sp, 400]	// _17, current
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv		//
	mov	x3, x0	//, _18
	adrp	x0, .LC3	// tmp309,
	add	x2, x0, :lo12:.LC3	//, tmp309,
	mov	w1, 0	//,
	mov	w0, w19	//, y.9_16
	bl	mvprintw		//
.L7:
// main.cpp:84:             line_count++;
	ldr	w0, [sp, 396]	// tmp311, line_count
	add	w0, w0, 1	// tmp310, tmp311,
	str	w0, [sp, 396]	// tmp310, line_count
// main.cpp:85:             current = current->next;
	ldr	x0, [sp, 400]	// tmp312, current
	ldr	x0, [x0, 32]	// tmp313, current_176->next
	str	x0, [sp, 400]	// tmp313, current
.L6:
// main.cpp:78:         while (current)
	ldr	x0, [sp, 400]	// tmp314, current
	cmp	x0, 0	// tmp314,
	bne	.L8		//,
// main.cpp:89:         search_text(lines, search_str, cursor_x, cursor_y, scroll_offset, current_line);
	add	x5, sp, 168	// tmp315,,
	add	x4, sp, 220	// tmp316,,
	add	x3, sp, 224	// tmp317,,
	add	x2, sp, 228	// tmp318,,
	add	x1, sp, 136	// tmp319,,
	add	x0, sp, 208	// tmp320,,
	bl	_Z11search_textR10LinkedListRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS9_S9_RP4Node		//
// main.cpp:92:         move(cursor_y, cursor_x);
	ldr	w0, [sp, 224]	// cursor_y.10_19, cursor_y
	ldr	w1, [sp, 228]	// cursor_x.11_20, cursor_x
	bl	move		//
// main.cpp:95:         attron(A_BOLD | A_REVERSE);
	adrp	x0, :got:stdscr	// tmp322,
	ldr	x0, [x0, #:got_lo12:stdscr]	// tmp321, tmp322,
	ldr	x0, [x0]	// stdscr.12_21, stdscr
	mov	x2, 0	//,
	mov	w1, 2359296	//,
	bl	wattr_on		//
// main.cpp:96:         mvprintw(LINES - 1, 0, CONTROLS);
	adrp	x0, :got:LINES	// tmp324,
	ldr	x0, [x0, #:got_lo12:LINES]	// tmp323, tmp324,
	ldr	w0, [x0]	// LINES.13_22, LINES
	sub	w3, w0, #1	// _23, LINES.13_22,
	adrp	x0, :got:CONTROLS	// tmp326,
	ldr	x0, [x0, #:got_lo12:CONTROLS]	// tmp325, tmp326,
	ldr	x0, [x0]	// CONTROLS.14_24, CONTROLS
	mov	x2, x0	//, CONTROLS.14_24
	mov	w1, 0	//,
	mov	w0, w3	//, _23
	bl	mvprintw		//
// main.cpp:97:         attroff(A_BOLD | A_REVERSE);
	adrp	x0, :got:stdscr	// tmp328,
	ldr	x0, [x0, #:got_lo12:stdscr]	// tmp327, tmp328,
	ldr	x0, [x0]	// stdscr.15_25, stdscr
	mov	x2, 0	//,
	mov	w1, 2359296	//,
	bl	wattr_off		//
// main.cpp:98:         move(cursor_y, cursor_x);
	ldr	w0, [sp, 224]	// cursor_y.16_26, cursor_y
	ldr	w1, [sp, 228]	// cursor_x.17_27, cursor_x
	bl	move		//
// main.cpp:100:         ch = getch(); // Wait for user input
	adrp	x0, :got:stdscr	// tmp330,
	ldr	x0, [x0, #:got_lo12:stdscr]	// tmp329, tmp330,
	ldr	x0, [x0]	// stdscr.18_28, stdscr
	bl	wgetch		//
	str	w0, [sp, 392]	// _256, ch
// main.cpp:102:         switch (ch)
	ldr	w0, [sp, 392]	// tmp331, ch
	cmp	w0, 409	// tmp331,
	beq	.L9		//,
	ldr	w0, [sp, 392]	// tmp332, ch
	cmp	w0, 409	// tmp332,
	bgt	.L10		//,
	ldr	w0, [sp, 392]	// tmp333, ch
	cmp	w0, 343	// tmp333,
	beq	.L11		//,
	ldr	w0, [sp, 392]	// tmp334, ch
	cmp	w0, 343	// tmp334,
	bgt	.L10		//,
	ldr	w0, [sp, 392]	// tmp335, ch
	cmp	w0, 330	// tmp335,
	beq	.L12		//,
	ldr	w0, [sp, 392]	// tmp336, ch
	cmp	w0, 330	// tmp336,
	bgt	.L10		//,
	ldr	w0, [sp, 392]	// tmp337, ch
	cmp	w0, 263	// tmp337,
	beq	.L13		//,
	ldr	w0, [sp, 392]	// tmp338, ch
	cmp	w0, 263	// tmp338,
	bgt	.L10		//,
	ldr	w0, [sp, 392]	// tmp339, ch
	cmp	w0, 261	// tmp339,
	beq	.L14		//,
	ldr	w0, [sp, 392]	// tmp340, ch
	cmp	w0, 261	// tmp340,
	bgt	.L10		//,
	ldr	w0, [sp, 392]	// tmp341, ch
	cmp	w0, 260	// tmp341,
	beq	.L15		//,
	ldr	w0, [sp, 392]	// tmp342, ch
	cmp	w0, 260	// tmp342,
	bgt	.L10		//,
	ldr	w0, [sp, 392]	// tmp343, ch
	cmp	w0, 259	// tmp343,
	beq	.L16		//,
	ldr	w0, [sp, 392]	// tmp344, ch
	cmp	w0, 259	// tmp344,
	bgt	.L10		//,
	ldr	w0, [sp, 392]	// tmp345, ch
	cmp	w0, 258	// tmp345,
	beq	.L17		//,
	ldr	w0, [sp, 392]	// tmp346, ch
	cmp	w0, 258	// tmp346,
	bgt	.L10		//,
	ldr	w0, [sp, 392]	// tmp347, ch
	cmp	w0, 127	// tmp347,
	beq	.L13		//,
	ldr	w0, [sp, 392]	// tmp348, ch
	cmp	w0, 127	// tmp348,
	bgt	.L10		//,
	ldr	w0, [sp, 392]	// tmp349, ch
	cmp	w0, 24	// tmp349,
	beq	.L18		//,
	ldr	w0, [sp, 392]	// tmp350, ch
	cmp	w0, 24	// tmp350,
	bgt	.L10		//,
	ldr	w0, [sp, 392]	// tmp351, ch
	cmp	w0, 23	// tmp351,
	beq	.L19		//,
	ldr	w0, [sp, 392]	// tmp352, ch
	cmp	w0, 23	// tmp352,
	bgt	.L10		//,
	ldr	w0, [sp, 392]	// tmp353, ch
	cmp	w0, 20	// tmp353,
	beq	.L20		//,
	ldr	w0, [sp, 392]	// tmp354, ch
	cmp	w0, 20	// tmp354,
	bgt	.L10		//,
	ldr	w0, [sp, 392]	// tmp355, ch
	cmp	w0, 10	// tmp355,
	beq	.L11		//,
	ldr	w0, [sp, 392]	// tmp356, ch
	cmp	w0, 15	// tmp356,
	beq	.L21		//,
	b	.L10		//
.L9:
// main.cpp:106:             if (getmouse(&event) == OK)
	add	x0, sp, 80	// tmp357,,
	bl	getmouse		//
// main.cpp:106:             if (getmouse(&event) == OK)
	cmp	w0, 0	// _29,
	cset	w0, eq	// tmp359,
	and	w0, w0, 255	// retval.19_260, tmp358
// main.cpp:106:             if (getmouse(&event) == OK)
	cmp	w0, 0	// retval.19_260,
	beq	.L51		//,
// main.cpp:108:                 handle_mouse(event.x, event.y, cursor_x, cursor_y, scroll_offset, lines);
	ldr	w0, [sp, 84]	// _30, event.x
	ldr	w1, [sp, 88]	// _31, event.y
	add	x5, sp, 208	// tmp360,,
	add	x4, sp, 220	// tmp361,,
	add	x3, sp, 224	// tmp362,,
	add	x2, sp, 228	// tmp363,,
	bl	_Z12handle_mouseiiRiS_S_R10LinkedList		//
// main.cpp:109:                 move(cursor_y, cursor_x);
	ldr	w0, [sp, 224]	// cursor_y.20_32, cursor_y
	ldr	w1, [sp, 228]	// cursor_x.21_33, cursor_x
	bl	move		//
// main.cpp:111:             break;
	b	.L51		//
.L19:
// main.cpp:113:             attron(A_BOLD | A_REVERSE);
	adrp	x0, :got:stdscr	// tmp365,
	ldr	x0, [x0, #:got_lo12:stdscr]	// tmp364, tmp365,
	ldr	x0, [x0]	// stdscr.22_34, stdscr
	mov	x2, 0	//,
	mov	w1, 2359296	//,
	bl	wattr_on		//
// main.cpp:114:             search_str = get_user_input("Search: ");
	add	x0, sp, 288	// tmp366,,
	mov	x8, x0	//, tmp366
	adrp	x0, .LC4	// tmp367,
	add	x0, x0, :lo12:.LC4	//, tmp367,
	bl	_Z14get_user_inputB5cxx11PKc		//
// main.cpp:114:             search_str = get_user_input("Search: ");
	add	x1, sp, 288	// tmp368,,
	add	x0, sp, 136	// tmp369,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_		//
// main.cpp:114:             search_str = get_user_input("Search: ");
	add	x0, sp, 288	// tmp370,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev		//
// main.cpp:115:             attroff(A_BOLD | A_REVERSE);
	adrp	x0, :got:stdscr	// tmp372,
	ldr	x0, [x0, #:got_lo12:stdscr]	// tmp371, tmp372,
	ldr	x0, [x0]	// stdscr.23_35, stdscr
	mov	x2, 0	//,
	mov	w1, 2359296	//,
	bl	wattr_off		//
// main.cpp:116:             search_text(lines, search_str, cursor_x, cursor_y, scroll_offset, current_line);
	add	x5, sp, 168	// tmp373,,
	add	x4, sp, 220	// tmp374,,
	add	x3, sp, 224	// tmp375,,
	add	x2, sp, 228	// tmp376,,
	add	x1, sp, 136	// tmp377,,
	add	x0, sp, 208	// tmp378,,
	bl	_Z11search_textR10LinkedListRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS9_S9_RP4Node		//
// main.cpp:117:             move(cursor_y, cursor_x);
	ldr	w0, [sp, 224]	// cursor_y.24_36, cursor_y
	ldr	w1, [sp, 228]	// cursor_x.25_37, cursor_x
	bl	move		//
// main.cpp:118:             refresh();
	bl	refresh		//
// main.cpp:119:             break;
	b	.L23		//
.L20:
// main.cpp:121:             attron(A_BOLD | A_REVERSE);
	adrp	x0, :got:stdscr	// tmp380,
	ldr	x0, [x0, #:got_lo12:stdscr]	// tmp379, tmp380,
	ldr	x0, [x0]	// stdscr.26_38, stdscr
	mov	x2, 0	//,
	mov	w1, 2359296	//,
	bl	wattr_on		//
// main.cpp:122:             search_str = get_user_input("Search for: ");
	add	x0, sp, 320	// tmp381,,
	mov	x8, x0	//, tmp381
	adrp	x0, .LC5	// tmp382,
	add	x0, x0, :lo12:.LC5	//, tmp382,
	bl	_Z14get_user_inputB5cxx11PKc		//
// main.cpp:122:             search_str = get_user_input("Search for: ");
	add	x1, sp, 320	// tmp383,,
	add	x0, sp, 136	// tmp384,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_		//
// main.cpp:122:             search_str = get_user_input("Search for: ");
	add	x0, sp, 320	// tmp385,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev		//
// main.cpp:123:             replace_str = get_user_input("Replace with: ");
	add	x0, sp, 352	// tmp386,,
	mov	x8, x0	//, tmp386
	adrp	x0, .LC6	// tmp387,
	add	x0, x0, :lo12:.LC6	//, tmp387,
	bl	_Z14get_user_inputB5cxx11PKc		//
// main.cpp:123:             replace_str = get_user_input("Replace with: ");
	add	x1, sp, 352	// tmp388,,
	add	x0, sp, 104	// tmp389,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_		//
// main.cpp:123:             replace_str = get_user_input("Replace with: ");
	add	x0, sp, 352	// tmp390,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev		//
// main.cpp:124:             attroff(A_BOLD | A_REVERSE);
	adrp	x0, :got:stdscr	// tmp392,
	ldr	x0, [x0, #:got_lo12:stdscr]	// tmp391, tmp392,
	ldr	x0, [x0]	// stdscr.27_39, stdscr
	mov	x2, 0	//,
	mov	w1, 2359296	//,
	bl	wattr_off		//
// main.cpp:125:             replace_text(lines, search_str, replace_str);
	add	x2, sp, 104	// tmp393,,
	add	x1, sp, 136	// tmp394,,
	add	x0, sp, 208	// tmp395,,
	bl	_Z12replace_textR10LinkedListRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_		//
// main.cpp:126:             refresh();
	bl	refresh		//
// main.cpp:127:             break;
	b	.L23		//
.L18:
// main.cpp:129:             list_clear(lines);
	add	x0, sp, 208	// tmp396,,
	bl	_Z10list_clearR10LinkedList		//
// main.cpp:130:             endwin();
	bl	endwin		//
// main.cpp:131:             return 0;
	mov	w19, 0	// _306,
// main.cpp:244: }
	add	x0, sp, 104	// tmp397,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev		//
	add	x0, sp, 136	// tmp398,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev		//
	add	x0, sp, 176	// tmp399,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev		//
	mov	w0, w19	// <retval>, _306
	b	.L50		//
.L21:
// main.cpp:133:             save_file(filename.c_str(), lines);
	add	x0, sp, 176	// tmp400,,
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv		//
	mov	x2, x0	// _40,
	add	x0, sp, 208	// tmp401,,
	mov	x1, x0	//, tmp401
	mov	x0, x2	//, _40
	bl	_Z9save_filePKcRK10LinkedList		//
// main.cpp:134:             break;
	b	.L23		//
.L12:
// main.cpp:136:             if (cursor_x < static_cast<int>(current_line->line.size()))
	ldr	x0, [sp, 168]	// current_line.29_41, current_line
// main.cpp:136:             if (cursor_x < static_cast<int>(current_line->line.size()))
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv		//
// main.cpp:136:             if (cursor_x < static_cast<int>(current_line->line.size()))
	mov	w1, w0	// _44, _43
	ldr	w0, [sp, 228]	// cursor_x.30_45, cursor_x
	cmp	w1, w0	// _44, cursor_x.30_45
	cset	w0, gt	// tmp403,
	and	w0, w0, 255	// retval.28_264, tmp402
// main.cpp:136:             if (cursor_x < static_cast<int>(current_line->line.size()))
	cmp	w0, 0	// retval.28_264,
	beq	.L25		//,
// main.cpp:138:                 current_line->line.erase(cursor_x, 1);
	ldr	x0, [sp, 168]	// current_line.31_46, current_line
// main.cpp:138:                 current_line->line.erase(cursor_x, 1);
	mov	x3, x0	// _47, current_line.31_46
	ldr	w0, [sp, 228]	// cursor_x.32_48, cursor_x
	sxtw	x0, w0	// _49, cursor_x.32_48
	mov	x2, 1	//,
	mov	x1, x0	//, _49
	mov	x0, x3	//, _47
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm		//
// main.cpp:146:             break;
	b	.L52		//
.L25:
// main.cpp:140:             else if (current_line->next)
	ldr	x0, [sp, 168]	// current_line.33_50, current_line
	ldr	x0, [x0, 32]	// _51, current_line.33_50->next
// main.cpp:140:             else if (current_line->next)
	cmp	x0, 0	// _51,
	beq	.L52		//,
// main.cpp:142:                 current_line->line.append(current_line->next->line);
	ldr	x0, [sp, 168]	// current_line.34_52, current_line
// main.cpp:142:                 current_line->line.append(current_line->next->line);
	mov	x2, x0	// _53, current_line.34_52
// main.cpp:142:                 current_line->line.append(current_line->next->line);
	ldr	x0, [sp, 168]	// current_line.35_54, current_line
	ldr	x0, [x0, 32]	// _55, current_line.35_54->next
// main.cpp:142:                 current_line->line.append(current_line->next->line);
	mov	x1, x0	//, _56
	mov	x0, x2	//, _53
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_		//
// main.cpp:143:                 list_erase_next(current_line);
	add	x0, sp, 168	// tmp404,,
	bl	_Z15list_erase_nextRP4Node		//
// main.cpp:144:                 nodes--;
	ldr	x0, [sp, 232]	// nodes.36_57, nodes
	sub	x0, x0, #1	// _58, nodes.36_57,
	str	x0, [sp, 232]	// _58, nodes
// main.cpp:146:             break;
	b	.L52		//
.L13:
// main.cpp:149:             if (cursor_x == 0 && cursor_y > 3)
	ldr	w0, [sp, 228]	// cursor_x.37_59, cursor_x
// main.cpp:149:             if (cursor_x == 0 && cursor_y > 3)
	cmp	w0, 0	// cursor_x.37_59,
	bne	.L27		//,
// main.cpp:149:             if (cursor_x == 0 && cursor_y > 3)
	ldr	w0, [sp, 224]	// cursor_y.38_60, cursor_y
// main.cpp:149:             if (cursor_x == 0 && cursor_y > 3)
	cmp	w0, 3	// cursor_y.38_60,
	ble	.L27		//,
// main.cpp:151:                 Node *prev = list_advance(lines.head, cursor_y - 4 + scroll_offset);
	ldr	x2, [sp, 208]	// _61, lines.head
// main.cpp:151:                 Node *prev = list_advance(lines.head, cursor_y - 4 + scroll_offset);
	ldr	w0, [sp, 224]	// cursor_y.39_62, cursor_y
	sub	w1, w0, #4	// _63, cursor_y.39_62,
// main.cpp:151:                 Node *prev = list_advance(lines.head, cursor_y - 4 + scroll_offset);
	ldr	w0, [sp, 220]	// scroll_offset.40_64, scroll_offset
	add	w0, w1, w0	// _65, _63, scroll_offset.40_64
	mov	w1, w0	//, _65
	mov	x0, x2	//, _61
	bl	_Z12list_advanceP4Nodei		//
// main.cpp:151:                 Node *prev = list_advance(lines.head, cursor_y - 4 + scroll_offset);
	str	x0, [sp, 72]	// _66, prev
// main.cpp:152:                 prev->line.append(current_line->line);
	ldr	x0, [sp, 72]	// prev.41_67, prev
// main.cpp:152:                 prev->line.append(current_line->line);
	mov	x2, x0	// _68, prev.41_67
// main.cpp:152:                 prev->line.append(current_line->line);
	ldr	x0, [sp, 168]	// current_line.42_69, current_line
// main.cpp:152:                 prev->line.append(current_line->line);
	mov	x1, x0	//, _70
	mov	x0, x2	//, _68
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_		//
// main.cpp:153:                 list_erase_next(prev);
	add	x0, sp, 72	// tmp405,,
	bl	_Z15list_erase_nextRP4Node		//
// main.cpp:154:                 nodes--;
	ldr	x0, [sp, 232]	// nodes.43_71, nodes
	sub	x0, x0, #1	// _72, nodes.43_71,
	str	x0, [sp, 232]	// _72, nodes
// main.cpp:155:                 cursor_x = prev->line.length();
	ldr	x0, [sp, 72]	// prev.44_73, prev
// main.cpp:155:                 cursor_x = prev->line.length();
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv		//
// main.cpp:155:                 cursor_x = prev->line.length();
	str	w0, [sp, 228]	// _76, cursor_x
// main.cpp:156:                 cursor_y--;
	ldr	w0, [sp, 224]	// cursor_y.45_77, cursor_y
	sub	w0, w0, #1	// _78, cursor_y.45_77,
	str	w0, [sp, 224]	// _78, cursor_y
// main.cpp:157:             }
	nop	
// main.cpp:163:             break;
	b	.L53		//
.L27:
// main.cpp:158:             else if (cursor_x > 0)
	ldr	w0, [sp, 228]	// cursor_x.46_79, cursor_x
// main.cpp:158:             else if (cursor_x > 0)
	cmp	w0, 0	// cursor_x.46_79,
	ble	.L53		//,
// main.cpp:160:                 current_line->line.erase(cursor_x - 1, 1);
	ldr	x0, [sp, 168]	// current_line.47_80, current_line
// main.cpp:160:                 current_line->line.erase(cursor_x - 1, 1);
	mov	x3, x0	// _81, current_line.47_80
// main.cpp:160:                 current_line->line.erase(cursor_x - 1, 1);
	ldr	w0, [sp, 228]	// cursor_x.48_82, cursor_x
	sub	w0, w0, #1	// _83, cursor_x.48_82,
// main.cpp:160:                 current_line->line.erase(cursor_x - 1, 1);
	sxtw	x0, w0	// _84, _83
	mov	x2, 1	//,
	mov	x1, x0	//, _84
	mov	x0, x3	//, _81
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm		//
// main.cpp:161:                 cursor_x--;
	ldr	w0, [sp, 228]	// cursor_x.49_85, cursor_x
	sub	w0, w0, #1	// _86, cursor_x.49_85,
	str	w0, [sp, 228]	// _86, cursor_x
// main.cpp:163:             break;
	b	.L53		//
.L11:
// main.cpp:167:             memory += sizeof(Node);
	ldr	x0, [sp, 240]	// memory.50_87, memory
	add	x0, x0, 40	// _88, memory.50_87,
	str	x0, [sp, 240]	// _88, memory
// main.cpp:168:             nodes++;
	ldr	x0, [sp, 232]	// nodes.51_89, nodes
	add	x0, x0, 1	// _90, nodes.51_89,
	str	x0, [sp, 232]	// _90, nodes
// main.cpp:169:             std::string new_line = current_line->line.substr(cursor_x);
	ldr	x0, [sp, 168]	// current_line.52_91, current_line
// main.cpp:169:             std::string new_line = current_line->line.substr(cursor_x);
	mov	x3, x0	// _92, current_line.52_91
	ldr	w0, [sp, 228]	// cursor_x.53_93, cursor_x
	sxtw	x0, w0	// _94, cursor_x.53_93
	add	x1, sp, 40	// tmp406,,
	mov	x8, x1	//, tmp406
	mov	x2, -1	//,
	mov	x1, x0	//, _94
	mov	x0, x3	//, _92
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm		//
.LEHE4:
// main.cpp:170:             current_line->line.erase(cursor_x);
	ldr	x0, [sp, 168]	// current_line.54_95, current_line
// main.cpp:170:             current_line->line.erase(cursor_x);
	mov	x3, x0	// _96, current_line.54_95
	ldr	w0, [sp, 228]	// cursor_x.55_97, cursor_x
	sxtw	x0, w0	// _98, cursor_x.55_97
	mov	x2, -1	//,
	mov	x1, x0	//, _98
	mov	x0, x3	//, _96
.LEHB5:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm		//
// main.cpp:171:             Node *new_node = make_node(new_line);
	add	x0, sp, 40	// tmp407,,
	bl	_Z9make_nodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE		//
.LEHE5:
	str	x0, [sp, 384]	// _349, new_node
// main.cpp:172:             new_node->next = current_line->next;
	ldr	x0, [sp, 168]	// current_line.56_99, current_line
	ldr	x1, [x0, 32]	// _100, current_line.56_99->next
// main.cpp:172:             new_node->next = current_line->next;
	ldr	x0, [sp, 384]	// tmp408, new_node
	str	x1, [x0, 32]	// _100, new_node_350->next
// main.cpp:173:             current_line->next = new_node;
	ldr	x0, [sp, 168]	// current_line.57_101, current_line
// main.cpp:173:             current_line->next = new_node;
	ldr	x1, [sp, 384]	// tmp409, new_node
	str	x1, [x0, 32]	// tmp409, current_line.57_101->next
// main.cpp:175:             cursor_x = 0;
	str	wzr, [sp, 228]	//, cursor_x
// main.cpp:176:             cursor_y++;
	ldr	w0, [sp, 224]	// cursor_y.58_102, cursor_y
	add	w0, w0, 1	// _103, cursor_y.58_102,
	str	w0, [sp, 224]	// _103, cursor_y
// main.cpp:177:             if (cursor_y >= LINES - 1)
	adrp	x0, :got:LINES	// tmp411,
	ldr	x0, [x0, #:got_lo12:LINES]	// tmp410, tmp411,
	ldr	w0, [x0]	// LINES.59_104, LINES
	sub	w1, w0, #1	// _105, LINES.59_104,
// main.cpp:177:             if (cursor_y >= LINES - 1)
	ldr	w0, [sp, 224]	// cursor_y.60_106, cursor_y
// main.cpp:177:             if (cursor_y >= LINES - 1)
	cmp	w1, w0	// _105, cursor_y.60_106
	bgt	.L29		//,
// main.cpp:179:                 cursor_y--;
	ldr	w0, [sp, 224]	// cursor_y.61_107, cursor_y
	sub	w0, w0, #1	// _108, cursor_y.61_107,
	str	w0, [sp, 224]	// _108, cursor_y
// main.cpp:180:                 scroll_offset++;
	ldr	w0, [sp, 220]	// scroll_offset.62_109, scroll_offset
	add	w0, w0, 1	// _110, scroll_offset.62_109,
	str	w0, [sp, 220]	// _110, scroll_offset
.L29:
// main.cpp:182:             current_line = new_node;
	ldr	x0, [sp, 384]	// tmp412, new_node
	str	x0, [sp, 168]	// tmp412, current_line
// main.cpp:183:             break;
	nop	
// main.cpp:184:         }
	add	x0, sp, 40	// tmp413,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev		//
	b	.L39		//
.L16:
// main.cpp:186:             if (cursor_y > 3)
	ldr	w0, [sp, 224]	// cursor_y.63_111, cursor_y
// main.cpp:186:             if (cursor_y > 3)
	cmp	w0, 3	// cursor_y.63_111,
	ble	.L30		//,
// main.cpp:188:                 cursor_y--;
	ldr	w0, [sp, 224]	// cursor_y.64_112, cursor_y
	sub	w0, w0, #1	// _113, cursor_y.64_112,
	str	w0, [sp, 224]	// _113, cursor_y
	b	.L31		//
.L30:
// main.cpp:190:             else if (scroll_offset > 0)
	ldr	w0, [sp, 220]	// scroll_offset.65_114, scroll_offset
// main.cpp:190:             else if (scroll_offset > 0)
	cmp	w0, 0	// scroll_offset.65_114,
	ble	.L31		//,
// main.cpp:192:                 scroll_offset--;
	ldr	w0, [sp, 220]	// scroll_offset.66_115, scroll_offset
	sub	w0, w0, #1	// _116, scroll_offset.66_115,
	str	w0, [sp, 220]	// _116, scroll_offset
.L31:
// main.cpp:194:             current_line = list_advance(lines.head, cursor_y - 3 + scroll_offset);
	ldr	x2, [sp, 208]	// _117, lines.head
// main.cpp:194:             current_line = list_advance(lines.head, cursor_y - 3 + scroll_offset);
	ldr	w0, [sp, 224]	// cursor_y.67_118, cursor_y
	sub	w1, w0, #3	// _119, cursor_y.67_118,
// main.cpp:194:             current_line = list_advance(lines.head, cursor_y - 3 + scroll_offset);
	ldr	w0, [sp, 220]	// scroll_offset.68_120, scroll_offset
	add	w0, w1, w0	// _121, _119, scroll_offset.68_120
	mov	w1, w0	//, _121
	mov	x0, x2	//, _117
.LEHB6:
	bl	_Z12list_advanceP4Nodei		//
// main.cpp:194:             current_line = list_advance(lines.head, cursor_y - 3 + scroll_offset);
	str	x0, [sp, 168]	// _122, current_line
// main.cpp:195:             break;
	b	.L23		//
.L17:
// main.cpp:197:             if (cursor_y < LINES - 2 && current_line->next)
	adrp	x0, :got:LINES	// tmp415,
	ldr	x0, [x0, #:got_lo12:LINES]	// tmp414, tmp415,
	ldr	w0, [x0]	// LINES.69_123, LINES
	sub	w1, w0, #2	// _124, LINES.69_123,
// main.cpp:197:             if (cursor_y < LINES - 2 && current_line->next)
	ldr	w0, [sp, 224]	// cursor_y.70_125, cursor_y
// main.cpp:197:             if (cursor_y < LINES - 2 && current_line->next)
	cmp	w1, w0	// _124, cursor_y.70_125
	ble	.L32		//,
// main.cpp:197:             if (cursor_y < LINES - 2 && current_line->next)
	ldr	x0, [sp, 168]	// current_line.71_126, current_line
	ldr	x0, [x0, 32]	// _127, current_line.71_126->next
// main.cpp:197:             if (cursor_y < LINES - 2 && current_line->next)
	cmp	x0, 0	// _127,
	beq	.L32		//,
// main.cpp:199:                 cursor_y++;
	ldr	w0, [sp, 224]	// cursor_y.72_128, cursor_y
	add	w0, w0, 1	// _129, cursor_y.72_128,
	str	w0, [sp, 224]	// _129, cursor_y
// main.cpp:200:                 current_line = current_line->next;
	ldr	x0, [sp, 168]	// current_line.73_130, current_line
	ldr	x0, [x0, 32]	// _131, current_line.73_130->next
// main.cpp:200:                 current_line = current_line->next;
	str	x0, [sp, 168]	// _131, current_line
// main.cpp:207:             break;
	b	.L54		//
.L32:
// main.cpp:202:             else if (current_line->next)
	ldr	x0, [sp, 168]	// current_line.74_132, current_line
	ldr	x0, [x0, 32]	// _133, current_line.74_132->next
// main.cpp:202:             else if (current_line->next)
	cmp	x0, 0	// _133,
	beq	.L54		//,
// main.cpp:204:                 scroll_offset++;
	ldr	w0, [sp, 220]	// scroll_offset.75_134, scroll_offset
	add	w0, w0, 1	// _135, scroll_offset.75_134,
	str	w0, [sp, 220]	// _135, scroll_offset
// main.cpp:205:                 current_line = current_line->next;
	ldr	x0, [sp, 168]	// current_line.76_136, current_line
	ldr	x0, [x0, 32]	// _137, current_line.76_136->next
// main.cpp:205:                 current_line = current_line->next;
	str	x0, [sp, 168]	// _137, current_line
// main.cpp:207:             break;
	b	.L54		//
.L15:
// main.cpp:209:             if (cursor_x > 0)
	ldr	w0, [sp, 228]	// cursor_x.77_138, cursor_x
// main.cpp:209:             if (cursor_x > 0)
	cmp	w0, 0	// cursor_x.77_138,
	ble	.L34		//,
// main.cpp:211:                 cursor_x--;
	ldr	w0, [sp, 228]	// cursor_x.78_139, cursor_x
	sub	w0, w0, #1	// _140, cursor_x.78_139,
	str	w0, [sp, 228]	// _140, cursor_x
// main.cpp:219:             break;
	b	.L55		//
.L34:
// main.cpp:213:             else if (cursor_y > 3)
	ldr	w0, [sp, 224]	// cursor_y.79_141, cursor_y
// main.cpp:213:             else if (cursor_y > 3)
	cmp	w0, 3	// cursor_y.79_141,
	ble	.L55		//,
// main.cpp:215:                 cursor_y--;
	ldr	w0, [sp, 224]	// cursor_y.80_142, cursor_y
	sub	w0, w0, #1	// _143, cursor_y.80_142,
	str	w0, [sp, 224]	// _143, cursor_y
// main.cpp:216:                 current_line = list_advance(lines.head, cursor_y - 3 + scroll_offset);
	ldr	x2, [sp, 208]	// _144, lines.head
// main.cpp:216:                 current_line = list_advance(lines.head, cursor_y - 3 + scroll_offset);
	ldr	w0, [sp, 224]	// cursor_y.81_145, cursor_y
	sub	w1, w0, #3	// _146, cursor_y.81_145,
// main.cpp:216:                 current_line = list_advance(lines.head, cursor_y - 3 + scroll_offset);
	ldr	w0, [sp, 220]	// scroll_offset.82_147, scroll_offset
	add	w0, w1, w0	// _148, _146, scroll_offset.82_147
	mov	w1, w0	//, _148
	mov	x0, x2	//, _144
	bl	_Z12list_advanceP4Nodei		//
// main.cpp:216:                 current_line = list_advance(lines.head, cursor_y - 3 + scroll_offset);
	str	x0, [sp, 168]	// _149, current_line
// main.cpp:217:                 cursor_x = current_line->line.size();
	ldr	x0, [sp, 168]	// current_line.83_150, current_line
// main.cpp:217:                 cursor_x = current_line->line.size();
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv		//
// main.cpp:217:                 cursor_x = current_line->line.size();
	str	w0, [sp, 228]	// _153, cursor_x
// main.cpp:219:             break;
	b	.L55		//
.L14:
// main.cpp:221:             if (cursor_x < static_cast<int>(current_line->line.size()))
	ldr	x0, [sp, 168]	// current_line.85_154, current_line
// main.cpp:221:             if (cursor_x < static_cast<int>(current_line->line.size()))
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv		//
// main.cpp:221:             if (cursor_x < static_cast<int>(current_line->line.size()))
	mov	w1, w0	// _157, _156
	ldr	w0, [sp, 228]	// cursor_x.86_158, cursor_x
	cmp	w1, w0	// _157, cursor_x.86_158
	cset	w0, gt	// tmp417,
	and	w0, w0, 255	// retval.84_270, tmp416
// main.cpp:221:             if (cursor_x < static_cast<int>(current_line->line.size()))
	cmp	w0, 0	// retval.84_270,
	beq	.L36		//,
// main.cpp:223:                 cursor_x++;
	ldr	w0, [sp, 228]	// cursor_x.87_159, cursor_x
	add	w0, w0, 1	// _160, cursor_x.87_159,
	str	w0, [sp, 228]	// _160, cursor_x
// main.cpp:231:             break;
	b	.L56		//
.L36:
// main.cpp:225:             else if (current_line->next)
	ldr	x0, [sp, 168]	// current_line.88_161, current_line
	ldr	x0, [x0, 32]	// _162, current_line.88_161->next
// main.cpp:225:             else if (current_line->next)
	cmp	x0, 0	// _162,
	beq	.L56		//,
// main.cpp:227:                 cursor_y++;
	ldr	w0, [sp, 224]	// cursor_y.89_163, cursor_y
	add	w0, w0, 1	// _164, cursor_y.89_163,
	str	w0, [sp, 224]	// _164, cursor_y
// main.cpp:228:                 cursor_x = 0;
	str	wzr, [sp, 228]	//, cursor_x
// main.cpp:229:                 current_line = current_line->next;
	ldr	x0, [sp, 168]	// current_line.90_165, current_line
	ldr	x0, [x0, 32]	// _166, current_line.90_165->next
// main.cpp:229:                 current_line = current_line->next;
	str	x0, [sp, 168]	// _166, current_line
// main.cpp:231:             break;
	b	.L56		//
.L10:
// main.cpp:233:             if (ch >= 32 && ch <= 126)
	ldr	w0, [sp, 392]	// tmp418, ch
	cmp	w0, 31	// tmp418,
	ble	.L57		//,
// main.cpp:233:             if (ch >= 32 && ch <= 126)
	ldr	w0, [sp, 392]	// tmp419, ch
	cmp	w0, 126	// tmp419,
	bgt	.L57		//,
// main.cpp:235:                 current_line->line.insert(cursor_x, 1, static_cast<char>(ch));
	ldr	x0, [sp, 168]	// current_line.91_167, current_line
// main.cpp:235:                 current_line->line.insert(cursor_x, 1, static_cast<char>(ch));
	mov	x4, x0	// _168, current_line.91_167
	ldr	w0, [sp, 228]	// cursor_x.92_169, cursor_x
	sxtw	x0, w0	// _170, cursor_x.92_169
	ldr	w1, [sp, 392]	// tmp420, ch
	and	w1, w1, 255	// _171, tmp420
	mov	w3, w1	//, _171
	mov	x2, 1	//,
	mov	x1, x0	//, _170
	mov	x0, x4	//, _168
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmmc		//
.LEHE6:
// main.cpp:236:                 cursor_x++;
	ldr	w0, [sp, 228]	// cursor_x.93_172, cursor_x
	add	w0, w0, 1	// _173, cursor_x.93_172,
	str	w0, [sp, 228]	// _173, cursor_x
// main.cpp:238:             break;
	b	.L57		//
.L51:
// main.cpp:111:             break;
	nop	
	b	.L39		//
.L52:
// main.cpp:146:             break;
	nop	
	b	.L39		//
.L53:
// main.cpp:163:             break;
	nop	
	b	.L39		//
.L54:
// main.cpp:207:             break;
	nop	
	b	.L39		//
.L55:
// main.cpp:219:             break;
	nop	
	b	.L39		//
.L56:
// main.cpp:231:             break;
	nop	
	b	.L39		//
.L57:
// main.cpp:238:             break;
	nop	
.L23:
// main.cpp:240:     }
	b	.L39		//
.L47:
// main.cpp:44:         list_push_back(lines, "");
	mov	x19, x0	// tmp424,
	add	x0, sp, 248	// tmp422,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev		//
	b	.L41		//
.L46:
	mov	x19, x0	// tmp423,
.L41:
// main.cpp:44:         list_push_back(lines, "");
	add	x0, sp, 280	// tmp427,,
	bl	_ZNSaIcED1Ev		//
	b	.L42		//
.L49:
// main.cpp:184:         }
	mov	x19, x0	// tmp432,
	add	x0, sp, 40	// tmp430,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev		//
	b	.L44		//
.L48:
// main.cpp:244: }
	mov	x19, x0	// tmp431,
.L44:
	add	x0, sp, 104	// tmp435,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev		//
	add	x0, sp, 136	// tmp438,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev		//
	b	.L42		//
.L45:
	mov	x19, x0	// tmp428,
.L42:
	add	x0, sp, 176	// tmp439,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev		//
	mov	x0, x19	// D.49145, tmp428
.LEHB7:
	bl	_Unwind_Resume		//
.LEHE7:
.L50:
	ldp	x19, x30, [sp], 416	//,,,
	.cfi_restore 30
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1659:
	.global	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA1659:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1659-.LLSDACSB1659
.LLSDACSB1659:
	.uleb128 .LEHB0-.LFB1659
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB1659
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L45-.LFB1659
	.uleb128 0
	.uleb128 .LEHB2-.LFB1659
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L46-.LFB1659
	.uleb128 0
	.uleb128 .LEHB3-.LFB1659
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L47-.LFB1659
	.uleb128 0
	.uleb128 .LEHB4-.LFB1659
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L48-.LFB1659
	.uleb128 0
	.uleb128 .LEHB5-.LFB1659
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L49-.LFB1659
	.uleb128 0
	.uleb128 .LEHB6-.LFB1659
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L48-.LFB1659
	.uleb128 0
	.uleb128 .LEHB7-.LFB1659
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
.LLSDACSE1659:
	.text
	.size	main, .-main
	.align	2
	.type	_Z41__static_initialization_and_destruction_0ii, %function
_Z41__static_initialization_and_destruction_0ii:
.LFB2045:
	.cfi_startproc
	str	x30, [sp, -32]!	//,
	.cfi_def_cfa_offset 32
	.cfi_offset 30, -32
	str	w0, [sp, 28]	// __initialize_p, __initialize_p
	str	w1, [sp, 24]	// __priority, __priority
// main.cpp:244: }
	ldr	w0, [sp, 28]	// tmp92, __initialize_p
	cmp	w0, 1	// tmp92,
	bne	.L60		//,
// main.cpp:244: }
	ldr	w1, [sp, 24]	// tmp93, __priority
	mov	w0, 65535	// tmp94,
	cmp	w1, w0	// tmp93, tmp94
	bne	.L60		//,
// /usr/include/c++/11/iostream:74:   static ios_base::Init __ioinit;
	adrp	x0, _ZStL8__ioinit	// tmp95,
	add	x0, x0, :lo12:_ZStL8__ioinit	//, tmp95,
	bl	_ZNSt8ios_base4InitC1Ev		//
	adrp	x0, __dso_handle	// tmp96,
	add	x2, x0, :lo12:__dso_handle	//, tmp96,
	adrp	x0, _ZStL8__ioinit	// tmp97,
	add	x1, x0, :lo12:_ZStL8__ioinit	//, tmp97,
	adrp	x0, :got:_ZNSt8ios_base4InitD1Ev	// tmp98,
	ldr	x0, [x0, #:got_lo12:_ZNSt8ios_base4InitD1Ev]	//, tmp98,
	bl	__cxa_atexit		//
.L60:
// main.cpp:244: }
	nop	
	ldr	x30, [sp], 32	//,
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2045:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.align	2
	.type	_GLOBAL__sub_I_main.cpp, %function
_GLOBAL__sub_I_main.cpp:
.LFB2046:
	.cfi_startproc
	str	x30, [sp, -16]!	//,
	.cfi_def_cfa_offset 16
	.cfi_offset 30, -16
// main.cpp:244: }
	mov	w1, 65535	//,
	mov	w0, 1	//,
	bl	_Z41__static_initialization_and_destruction_0ii		//
	ldr	x30, [sp], 16	//,
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2046:
	.size	_GLOBAL__sub_I_main.cpp, .-_GLOBAL__sub_I_main.cpp
	.section	.init_array,"aw"
	.align	3
	.xword	_GLOBAL__sub_I_main.cpp
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
