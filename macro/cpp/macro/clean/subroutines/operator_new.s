operator_new:
.LFB38:
	.cfi_startproc
	sub	sp, sp, #16	//,,
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]	// D.5179, D.5179
	str	x1, [sp]	// __p, __p
// /usr/include/c++/11/new:175: { return __p; }
	ldr	x0, [sp]	// _2, __p
// /usr/include/c++/11/new:175: { return __p; }
	add	sp, sp, 16	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE38:
	.size	operator_new, .-operator_new
	.section	.text.operator_delete,"axG",@progbits,operator_delete,comdat
	.align	2
	.weak	operator_delete
	.type	operator_delete, %function