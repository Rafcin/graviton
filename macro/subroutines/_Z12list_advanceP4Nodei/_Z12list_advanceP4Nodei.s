
	.type	_Z12list_advanceP4Nodei, %function
_Z12list_advanceP4Nodei:
.LFB1672:
	.cfi_startproc
	sub	sp, sp, #16	//,,
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]	// node, node
	str	w1, [sp, 4]	// n, n
// main.cpp:121:     while (n-- > 0 && node)
	b	.L32		//
.L35:
// main.cpp:123:         node = node->next;
	ldr	x0, [sp, 8]	// tmp96, node
	ldr	x0, [x0, 32]	// tmp97, node_2->next
	str	x0, [sp, 8]	// tmp97, node
.L32:
// main.cpp:121:     while (n-- > 0 && node)
	ldr	w0, [sp, 4]	// n.10_1, n
	sub	w1, w0, #1	// tmp98, n.10_1,
	str	w1, [sp, 4]	// tmp98, n
// main.cpp:121:     while (n-- > 0 && node)
	cmp	w0, 0	// n.10_1,
	ble	.L33		//,
// main.cpp:121:     while (n-- > 0 && node)
	ldr	x0, [sp, 8]	// tmp99, node
	cmp	x0, 0	// tmp99,
	beq	.L33		//,
// main.cpp:121:     while (n-- > 0 && node)
	mov	w0, 1	// iftmp.9_4,
	b	.L34		//
.L33:
// main.cpp:121:     while (n-- > 0 && node)
	mov	w0, 0	// iftmp.9_4,
.L34:
// main.cpp:121:     while (n-- > 0 && node)
	cmp	w0, 0	// iftmp.9_4,
	bne	.L35		//,
// main.cpp:125:     return node;
	ldr	x0, [sp, 8]	// _11, node
// main.cpp:126: }
	add	sp, sp, 16	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1672:
	.size	_Z12list_advanceP4Nodei, .-_Z12list_advanceP4Nodei
	.align	2
	.global	_Z9open_filePKcR10LinkedListRmS3_