list_size:
.LFB1671:
	.cfi_startproc
	sub	sp, sp, #32	//,,
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]	// list, list
// main.cpp:133:     size_t size = 0;
	str	xzr, [sp, 24]	//, size
// main.cpp:134:     Node *current = list.head;
	ldr	x0, [sp, 8]	// tmp94, list
	ldr	x0, [x0]	// tmp95, list_5(D)->head
	str	x0, [sp, 16]	// tmp95, current
// main.cpp:135:     while (current)
	b	.L28		//
.L29:
// main.cpp:137:         size++;                  // Increment the size count
	ldr	x0, [sp, 24]	// tmp97, size
	add	x0, x0, 1	// tmp96, tmp97,
	str	x0, [sp, 24]	// tmp96, size
// main.cpp:138:         current = current->next; // Move to the next node
	ldr	x0, [sp, 16]	// tmp98, current
	ldr	x0, [x0, 32]	// tmp99, current_2->next
	str	x0, [sp, 16]	// tmp99, current
.L28:
// main.cpp:135:     while (current)
	ldr	x0, [sp, 16]	// tmp100, current
	cmp	x0, 0	// tmp100,
	bne	.L29		//,
// main.cpp:140:     return size;
	ldr	x0, [sp, 24]	// _7, size
// main.cpp:141: }
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1671:
	.size	list_size, .-list_size
	.align	2
	.global	list_advance
	.type	list_advance, %function