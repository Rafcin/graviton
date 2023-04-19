
	.type	_nextnode_, %function
_nextnode_:
.LFB1669:
	.cfi_startproc
	str	x30, [sp, -48]!	//,
	.cfi_def_cfa_offset 48
	.cfi_offset 30, -48
	str	x0, [sp, 24]	// node, node
// main.cpp:81:     if (node->next)
	ldr	x0, [sp, 24]	// tmp97, node
	ldr	x0, [x0]	// _1, *node_8(D)
// main.cpp:81:     if (node->next)
	ldr	x0, [x0, 32]	// _2, _1->next
// main.cpp:81:     if (node->next)
	cmp	x0, 0	// _2,
	beq	.L23		//,
// main.cpp:83:         Node *tmp = node->next;
	ldr	x0, [sp, 24]	// tmp98, node
	ldr	x0, [x0]	// _3, *node_8(D)
// main.cpp:83:         Node *tmp = node->next;
	ldr	x0, [x0, 32]	// tmp99, _3->next
	str	x0, [sp, 40]	// tmp99, tmp
// main.cpp:84:         node->next = tmp->next;
	ldr	x0, [sp, 24]	// tmp100, node
	ldr	x0, [x0]	// _4, *node_8(D)
// main.cpp:84:         node->next = tmp->next;
	ldr	x1, [sp, 40]	// tmp101, tmp
	ldr	x1, [x1, 32]	// _5, tmp_9->next
// main.cpp:84:         node->next = tmp->next;
	str	x1, [x0, 32]	// _5, _4->next
// main.cpp:85:         destroy_node(tmp);
	ldr	x0, [sp, 40]	//, tmp
	bl	_nodenode_		//
.L23:
// main.cpp:87: }
	nop	
	ldr	x30, [sp], 48	//,
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1669:
	.size	_nextnode_, .-_nextnode_
	.align	2
	.global	_Z10list_clearR10LinkedList