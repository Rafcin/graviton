
	.type	_, %function
_:
.LFB1665:
	.cfi_startproc
	sub	sp, sp, #16	//,,
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]	// this, this
// main.cpp:44:     LinkedList() : head(NULL) {}
	ldr	x0, [sp, 8]	// tmp92, this
	str	xzr, [x0]	//, this_2(D)->head
// main.cpp:44:     LinkedList() : head(NULL) {}
	nop	
	add	sp, sp, 16	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1665:
	.size	_, .-_
	.weak	_ZN10LinkedListC1Ev
	.set	_ZN10LinkedListC1Ev,_
	.section	.rodata
	.align	3
.LC1:
	.string	"Heap Memory Consumption: %zu bytes | Number of Nodes: %zu"
	.text
	.align	2
	.global	_memory_t_t_