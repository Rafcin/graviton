destroy_node:
.LFB1663:
	.cfi_startproc
	str	x30, [sp, -32]!	//,
	.cfi_def_cfa_offset 32
	.cfi_offset 30, -32
	str	x0, [sp, 24]	// node, node
// main.cpp:42:     node->line.~basic_string(); // Manually calling string destructor
	ldr	x0, [sp, 24]	// _1, node
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev		//
// main.cpp:43:     free(node);                 // Deallocate memory for the node
	ldr	x0, [sp, 24]	//, node
	bl	free		//
// main.cpp:44: }
	nop	
	ldr	x30, [sp], 32	//,
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1663:
	.size	destroy_node, .-destroy_node
	.section	.text.LinkedList___base_ctor_,"axG",@progbits,_ZN10LinkedListC5Ev,comdat
	.align	2
	.weak	LinkedList___base_ctor_
	.type	LinkedList___base_ctor_, %function