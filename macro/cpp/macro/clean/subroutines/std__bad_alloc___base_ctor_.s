std__bad_alloc___base_ctor_:
.LFB33:
	.cfi_startproc
	str	x30, [sp, -32]!	//,
	.cfi_def_cfa_offset 32
	.cfi_offset 30, -32
	str	x0, [sp, 24]	// this, this
// /usr/include/c++/11/new:58:     bad_alloc() throw() { }
	ldr	x0, [sp, 24]	// _1, this
	bl	std__exception___base_ctor_		//
	adrp	x0, :got:_ZTVSt9bad_alloc	// tmp97,
	ldr	x0, [x0, #:got_lo12:_ZTVSt9bad_alloc]	// tmp96, tmp97,
	add	x1, x0, 16	// _2, tmp96,
	ldr	x0, [sp, 24]	// tmp98, this
	str	x1, [x0]	// _2, this_6(D)->D.5100._vptr.exception
// /usr/include/c++/11/new:58:     bad_alloc() throw() { }
	nop	
	ldr	x30, [sp], 32	//,
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE33:
	.size	std__bad_alloc___base_ctor_, .-std__bad_alloc___base_ctor_
	.weak	std__bad_alloc___ctor_
	.set	std__bad_alloc___ctor_,std__bad_alloc___base_ctor_
	.section	.text.operator_new,"axG",@progbits,operator_new,comdat
	.align	2
	.weak	operator_new
	.type	operator_new, %function