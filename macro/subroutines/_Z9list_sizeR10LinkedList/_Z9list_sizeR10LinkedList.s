
	.type	_Z9list_sizeR10LinkedList, %function
_Z9list_sizeR10LinkedList:
.LFB1671:
	.cfi_startproc
	sub	sp, sp, #32	//,,
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]	// list, list
// main.cpp:107:     size_t size = 0;
	str	xzr, [sp, 24]	//, size
// main.cpp:108:     Node *current = list.head;
	ldr	x0, [sp, 8]	// tmp94, list
	ldr	x0, [x0]	// tmp95, list_5(D)->head
	str	x0, [sp, 16]	// tmp95, current
// main.cpp:109:     while (current)
	b	.L28		//
.L29:
// main.cpp:111:         size++;
	ldr	x0, [sp, 24]	// tmp97, size
	add	x0, x0, 1	// tmp96, tmp97,
	str	x0, [sp, 24]	// tmp96, size
// main.cpp:112:         current = current->next;
	ldr	x0, [sp, 16]	// tmp98, current
	ldr	x0, [x0, 32]	// tmp99, current_2->next
	str	x0, [sp, 16]	// tmp99, current
.L28:
// main.cpp:109:     while (current)
	ldr	x0, [sp, 16]	// tmp100, current
	cmp	x0, 0	// tmp100,
	bne	.L29		//,
// main.cpp:114:     return size;
	ldr	x0, [sp, 24]	// _7, size
// main.cpp:115: }
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1671:
	.size	_Z9list_sizeR10LinkedList, .-_Z9list_sizeR10LinkedList
	.align	2
	.global	_Z12list_advanceP4Nodei