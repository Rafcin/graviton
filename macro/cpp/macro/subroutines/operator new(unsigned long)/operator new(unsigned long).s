
	.type	operator new(unsigned long), %function
operator new(unsigned long):
.LFB38:
	.cfi_startproc
	sub	sp, sp, #16	//,,
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]	// D.5164, D.5164
	str	x1, [sp]	// __p, __p
// /usr/include/c++/11/new:175: { return __p; }
	ldr	x0, [sp]	// _2, __p
// /usr/include/c++/11/new:175: { return __p; }
	add	sp, sp, 16	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE38:
	.size	operator new(unsigned long), .-operator new(unsigned long)
	.section	.text.operator delete(void*, void*),"axG",@progbits,operator delete(void*, void*),comdat
	.align	2
	.weak	operator delete(void*, void*)