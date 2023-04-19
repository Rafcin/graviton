list_erase_next:
.LFB1669:
	.cfi_startproc
	str	x30, [sp, -48]!	//,
	.cfi_def_cfa_offset 48
	.cfi_offset 30, -48
	str	x0, [sp, 24]	// node, node
// main.cpp:101:     if (node->next)
	ldr	x0, [sp, 24]	// tmp97, node
	ldr	x0, [x0]	// _1, *node_8(D)
// main.cpp:101:     if (node->next)
	ldr	x0, [x0, 32]	// _2, _1->next
// main.cpp:101:     if (node->next)
	cmp	x0, 0	// _2,
	beq	.L23		//,
// main.cpp:103:         Node *tmp = node->next; // Store a pointer to the next node
	ldr	x0, [sp, 24]	// tmp98, node
	ldr	x0, [x0]	// _3, *node_8(D)
// main.cpp:103:         Node *tmp = node->next; // Store a pointer to the next node
	ldr	x0, [x0, 32]	// tmp99, _3->next
	str	x0, [sp, 40]	// tmp99, tmp
// main.cpp:104:         node->next = tmp->next; // Update the current node's next pointer to skip over the next node
	ldr	x0, [sp, 24]	// tmp100, node
	ldr	x0, [x0]	// _4, *node_8(D)
// main.cpp:104:         node->next = tmp->next; // Update the current node's next pointer to skip over the next node
	ldr	x1, [sp, 40]	// tmp101, tmp
	ldr	x1, [x1, 32]	// _5, tmp_9->next
// main.cpp:104:         node->next = tmp->next; // Update the current node's next pointer to skip over the next node
	str	x1, [x0, 32]	// _5, _4->next
// main.cpp:105:         destroy_node(tmp);      // Deallocate the memory used by the removed node
	ldr	x0, [sp, 40]	//, tmp
	bl	destroy_node		//
.L23:
// main.cpp:107: }
	nop	
	ldr	x30, [sp], 48	//,
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1669:
	.size	list_erase_next, .-list_erase_next
	.align	2
	.global	list_clear
	.type	list_clear, %function