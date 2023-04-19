
	.type	stdexceptionexception, %function
stdexceptionexception:
.LFB13:
	.cfi_startproc
	sub	sp, sp, #16	//,,
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]	// this, this
// /usr/include/c++/11/bits/exception.h:64:     exception() _GLIBCXX_NOTHROW { }
	adrp	x0, :got:_ZTVSt9exception	// tmp94,
	ldr	x0, [x0, #:got_lo12:_ZTVSt9exception]	// tmp93, tmp94,
	add	x1, x0, 16	// _1, tmp93,
	ldr	x0, [sp, 8]	// tmp95, this
	str	x1, [x0]	// _1, this_3(D)->_vptr.exception
// /usr/include/c++/11/bits/exception.h:64:     exception() _GLIBCXX_NOTHROW { }
	nop	
	add	sp, sp, 16	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE13:
	.size	stdexceptionexception, .-stdexceptionexception
	.weak	_ZNSt9exceptionC1Ev
	.set	_ZNSt9exceptionC1Ev,stdexceptionexception
	.section	.text.stdbad_alloc,"axG",@progbits,_ZNSt9bad_allocC5Ev,comdat
	.align	2
	.weak	stdbad_alloc