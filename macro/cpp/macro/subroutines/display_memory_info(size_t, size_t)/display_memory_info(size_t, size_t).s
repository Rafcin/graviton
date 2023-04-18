
	.type	display_memory_info(size_t, size_t), %function
display_memory_info(size_t, size_t):
.LFB1667:
	.cfi_startproc
	str	x30, [sp, -32]!	//,
	.cfi_def_cfa_offset 32
	.cfi_offset 30, -32
	str	x0, [sp, 24]	// memory, memory
	str	x1, [sp, 16]	// nodes, nodes
// main.cpp:51:     attron(A_BOLD);
	adrp	x0, :got:stdscr	// tmp95,
	ldr	x0, [x0, #:got_lo12:stdscr]	// tmp94, tmp95,
	ldr	x0, [x0]	// stdscr.6_1, stdscr
	mov	x2, 0	//,
	mov	w1, 2097152	//,
	bl	wattr_on		//
// main.cpp:52:     mvprintw(1, 0, "Heap Memory Consumption: %zu bytes | Number of Nodes: %zu", memory, nodes);
	ldr	x4, [sp, 16]	//, nodes
	ldr	x3, [sp, 24]	//, memory
	adrp	x0, .LC1	// tmp96,
	add	x2, x0, :lo12:.LC1	//, tmp96,
	mov	w1, 0	//,
	mov	w0, 1	//,
	bl	mvprintw		//
// main.cpp:53:     attroff(A_BOLD);
	adrp	x0, :got:stdscr	// tmp98,
	ldr	x0, [x0, #:got_lo12:stdscr]	// tmp97, tmp98,
	ldr	x0, [x0]	// stdscr.7_2, stdscr
	mov	x2, 0	//,
	mov	w1, 2097152	//,
	bl	wattr_off		//
// main.cpp:54: }
	nop	
	ldr	x30, [sp], 32	//,
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1667:
	.size	display_memory_info(size_t, size_t), .-display_memory_info(size_t, size_t)
	.align	2
	.global	LinkedList::push_back(const std::basic_string<char>&)