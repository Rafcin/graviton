
	.type	_Z10list_clearR10LinkedList, %function
_Z10list_clearR10LinkedList:
.LFB1670:
	.cfi_startproc
	str	x30, [sp, -48]!	//,
	.cfi_def_cfa_offset 48
	.cfi_offset 30, -48
	str	x0, [sp, 24]	// list, list
// main.cpp:93:     Node *current = list.head;
	ldr	x0, [sp, 24]	// tmp92, list
	ldr	x0, [x0]	// tmp93, list_4(D)->head
	str	x0, [sp, 40]	// tmp93, current
// main.cpp:94:     while (current)
	b	.L25		//
.L26:
// main.cpp:96:         Node *tmp = current->next;
	ldr	x0, [sp, 40]	// tmp94, current
	ldr	x0, [x0, 32]	// tmp95, current_1->next
	str	x0, [sp, 32]	// tmp95, tmp
// main.cpp:97:         destroy_node(current);
	ldr	x0, [sp, 40]	//, current
	bl	destroy_node(Node*)		//
// main.cpp:98:         current = tmp;
	ldr	x0, [sp, 32]	// tmp96, tmp
	str	x0, [sp, 40]	// tmp96, current
.L25:
// main.cpp:94:     while (current)
	ldr	x0, [sp, 40]	// tmp97, current
	cmp	x0, 0	// tmp97,
	bne	.L26		//,
// main.cpp:100:     list.head = NULL;
	ldr	x0, [sp, 24]	// tmp98, list
	str	xzr, [x0]	//, list_4(D)->head
// main.cpp:101: }
	nop	
	ldr	x30, [sp], 48	//,
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1670:
	.size	_Z10list_clearR10LinkedList, .-_Z10list_clearR10LinkedList
	.align	2
	.global	_Z9list_sizeR10LinkedList