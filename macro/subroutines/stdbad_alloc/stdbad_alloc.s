
	.type	stdbad_alloc, %function
stdbad_alloc:
.LFB33:
	.cfi_startproc
	str	x30, [sp, -32]!	//,
	.cfi_def_cfa_offset 32
	.cfi_offset 30, -32
	str	x0, [sp, 24]	// this, this
// /usr/include/c++/11/new:58:     bad_alloc() throw() { }
	ldr	x0, [sp, 24]	// _1, this
	bl	stdexceptionexception		//
	adrp	x0, :got:_ZTVSt9bad_alloc	// tmp97,
	ldr	x0, [x0, #:got_lo12:_ZTVSt9bad_alloc]	// tmp96, tmp97,
	add	x1, x0, 16	// _2, tmp96,
	ldr	x0, [sp, 24]	// tmp98, this
	str	x1, [x0]	// _2, this_6(D)->D.5087._vptr.exception
// /usr/include/c++/11/new:58:     bad_alloc() throw() { }
	nop	
	ldr	x30, [sp], 32	//,
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE33:
	.size	stdbad_alloc, .-stdbad_alloc
	.weak	_ZNSt9bad_allocC1Ev
	.set	_ZNSt9bad_allocC1Ev,stdbad_alloc
	.section	.text.operator_long,"axG",@progbits,operator_long,comdat
	.align	2
	.weak	operator_long