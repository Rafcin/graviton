
	.type	std::bad_alloc::bad_alloc() throw(), %function
std::bad_alloc::bad_alloc() throw():
.LFB33:
	.cfi_startproc
	str	x30, [sp, -32]!	//,
	.cfi_def_cfa_offset 32
	.cfi_offset 30, -32
	str	x0, [sp, 24]	// this, this
// /usr/include/c++/11/new:58:     bad_alloc() throw() { }
	ldr	x0, [sp, 24]	// _1, this
	bl	std::exception::exception()		//
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
	.size	std::bad_alloc::bad_alloc() throw(), .-std::bad_alloc::bad_alloc() throw()
	.weak	_ZNSt9bad_allocC1Ev
	.set	_ZNSt9bad_allocC1Ev,std::bad_alloc::bad_alloc() throw()
	.section	.text.operator new(unsigned long),"axG",@progbits,operator new(unsigned long),comdat
	.align	2
	.weak	operator new(unsigned long)