
	.type	_nodenode_, %function
_nodenode_:
.LFB1663:
	.cfi_startproc
	str	x30, [sp, -32]!	//,
	.cfi_def_cfa_offset 32
	.cfi_offset 30, -32
	str	x0, [sp, 24]	// node, node
// main.cpp:35:     node->line.~basic_string(); // Manually calling string destructor
	ldr	x0, [sp, 24]	// _1, node
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev		//
// main.cpp:36:     free(node);
	ldr	x0, [sp, 24]	//, node
	bl	free		//
// main.cpp:37: }
	nop	
	ldr	x30, [sp], 32	//,
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1663:
	.size	_nodenode_, .-_nodenode_
	.section	.text._,"axG",@progbits,_ZN10LinkedListC5Ev,comdat
	.align	2
	.weak	_