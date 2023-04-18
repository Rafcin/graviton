
	.type	LinkedList::push_back(const std::basic_string<char>&), %function
LinkedList::push_back(const std::basic_string<char>&):
.LFB1668:
	.cfi_startproc
	str	x30, [sp, -48]!	//,
	.cfi_def_cfa_offset 48
	.cfi_offset 30, -48
	str	x0, [sp, 24]	// list, list
	str	x1, [sp, 16]	// line, line
// main.cpp:60:     Node *new_node = make_node(line);
	ldr	x0, [sp, 16]	//, line
	bl	make_node(const std::basic_string<char>&)		//
	str	x0, [sp, 32]	// _8, new_node
// main.cpp:61:     if (!list.head)
	ldr	x0, [sp, 24]	// tmp97, list
	ldr	x0, [x0]	// _1, list_10(D)->head
// main.cpp:61:     if (!list.head)
	cmp	x0, 0	// _1,
	bne	.L16		//,
// main.cpp:63:         list.head = new_node;
	ldr	x0, [sp, 24]	// tmp98, list
	ldr	x1, [sp, 32]	// tmp99, new_node
	str	x1, [x0]	// tmp99, list_10(D)->head
	b	.L17		//
.L16:
// main.cpp:67:         Node *last = list.head;
	ldr	x0, [sp, 24]	// tmp100, list
	ldr	x0, [x0]	// tmp101, list_10(D)->head
	str	x0, [sp, 40]	// tmp101, last
// main.cpp:68:         while (last->next)
	b	.L18		//
.L19:
// main.cpp:70:             last = last->next;
	ldr	x0, [sp, 40]	// tmp102, last
	ldr	x0, [x0, 32]	// tmp103, last_3->next
	str	x0, [sp, 40]	// tmp103, last
.L18:
// main.cpp:68:         while (last->next)
	ldr	x0, [sp, 40]	// tmp104, last
	ldr	x0, [x0, 32]	// _2, last_3->next
	cmp	x0, 0	// _2,
	bne	.L19		//,
// main.cpp:72:         last->next = new_node;
	ldr	x0, [sp, 40]	// tmp105, last
	ldr	x1, [sp, 32]	// tmp106, new_node
	str	x1, [x0, 32]	// tmp106, last_3->next
.L17:
// main.cpp:74:     return new_node;
	ldr	x0, [sp, 32]	// _15, new_node
// main.cpp:75: }
	ldr	x30, [sp], 48	//,
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1668:
	.size	LinkedList::push_back(const std::basic_string<char>&), .-LinkedList::push_back(const std::basic_string<char>&)
	.align	2
	.global	LinkedList::erase_next(Node*)