LinkedList___base_ctor_:
.LFB1665:
	.cfi_startproc
	sub	sp, sp, #16	//,,
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]	// this, this
// main.cpp:52:     LinkedList() : head(NULL) {} // Constructor that initializes the head pointer to null
	ldr	x0, [sp, 8]	// tmp92, this
	str	xzr, [x0]	//, this_2(D)->head
// main.cpp:52:     LinkedList() : head(NULL) {} // Constructor that initializes the head pointer to null
	nop	
	add	sp, sp, 16	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1665:
	.size	LinkedList___base_ctor_, .-LinkedList___base_ctor_
	.weak	LinkedList___ctor_
	.set	LinkedList___ctor_,LinkedList___base_ctor_
	.section	.rodata
	.align	3
.LC1:
	.string	"Heap Memory Consumption: %zu bytes | Number of Nodes: %zu"
	.text
	.align	2
	.global	display_memory_info
	.type	display_memory_info, %function