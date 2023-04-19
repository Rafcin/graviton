list_clear:
.LFB1670:
	.cfi_startproc
	str	x30, [sp, -48]!	//,
	.cfi_def_cfa_offset 48
	.cfi_offset 30, -48
	str	x0, [sp, 24]	// list, list
// main.cpp:116:     Node *current = list.head;
	ldr	x0, [sp, 24]	// tmp92, list
	ldr	x0, [x0]	// tmp93, list_4(D)->head
	str	x0, [sp, 40]	// tmp93, current
// main.cpp:117:     while (current)
	b	.L25		//
.L26:
// main.cpp:119:         Node *tmp = current->next; // Store a pointer to the next node
	ldr	x0, [sp, 40]	// tmp94, current
	ldr	x0, [x0, 32]	// tmp95, current_1->next
	str	x0, [sp, 32]	// tmp95, tmp
// main.cpp:120:         destroy_node(current);     // Deallocate the memory used by the current node
	ldr	x0, [sp, 40]	//, current
	bl	destroy_node		//
// main.cpp:121:         current = tmp;             // Move to the next node
	ldr	x0, [sp, 32]	// tmp96, tmp
	str	x0, [sp, 40]	// tmp96, current
.L25:
// main.cpp:117:     while (current)
	ldr	x0, [sp, 40]	// tmp97, current
	cmp	x0, 0	// tmp97,
	bne	.L26		//,
// main.cpp:123:     list.head = NULL; // Set the list's head pointer to NULL
	ldr	x0, [sp, 24]	// tmp98, list
	str	xzr, [x0]	//, list_4(D)->head
// main.cpp:124: }
	nop	
	ldr	x30, [sp], 48	//,
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1670:
	.size	list_clear, .-list_clear
	.align	2
	.global	list_size
	.type	list_size, %function