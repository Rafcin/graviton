list_push_back:
.LFB1668:
	.cfi_startproc
	str	x30, [sp, -48]!	//,
	.cfi_def_cfa_offset 48
	.cfi_offset 30, -48
	str	x0, [sp, 24]	// list, list
	str	x1, [sp, 16]	// line, line
// main.cpp:77:     Node *new_node = make_node(line); // Allocate memory for the new node and initialize it with the given text line
	ldr	x0, [sp, 16]	//, line
	bl	make_node		//
	str	x0, [sp, 32]	// _8, new_node
// main.cpp:78:     if (!list.head)
	ldr	x0, [sp, 24]	// tmp97, list
	ldr	x0, [x0]	// _1, list_10(D)->head
// main.cpp:78:     if (!list.head)
	cmp	x0, 0	// _1,
	bne	.L16		//,
// main.cpp:80:         list.head = new_node; // If the list is empty, set the new node as the head
	ldr	x0, [sp, 24]	// tmp98, list
	ldr	x1, [sp, 32]	// tmp99, new_node
	str	x1, [x0]	// tmp99, list_10(D)->head
	b	.L17		//
.L16:
// main.cpp:84:         Node *last = list.head;
	ldr	x0, [sp, 24]	// tmp100, list
	ldr	x0, [x0]	// tmp101, list_10(D)->head
	str	x0, [sp, 40]	// tmp101, last
// main.cpp:85:         while (last->next)
	b	.L18		//
.L19:
// main.cpp:87:             last = last->next; // Traverse the list to find the last node
	ldr	x0, [sp, 40]	// tmp102, last
	ldr	x0, [x0, 32]	// tmp103, last_3->next
	str	x0, [sp, 40]	// tmp103, last
.L18:
// main.cpp:85:         while (last->next)
	ldr	x0, [sp, 40]	// tmp104, last
	ldr	x0, [x0, 32]	// _2, last_3->next
	cmp	x0, 0	// _2,
	bne	.L19		//,
// main.cpp:89:         last->next = new_node; // Set the next pointer of the last node to the new node
	ldr	x0, [sp, 40]	// tmp105, last
	ldr	x1, [sp, 32]	// tmp106, new_node
	str	x1, [x0, 32]	// tmp106, last_3->next
.L17:
// main.cpp:91:     return new_node;
	ldr	x0, [sp, 32]	// _15, new_node
// main.cpp:92: }
	ldr	x30, [sp], 48	//,
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1668:
	.size	list_push_back, .-list_push_back
	.align	2
	.global	list_erase_next
	.type	list_erase_next, %function