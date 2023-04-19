int_const__std__min_int_:
.LFB1936:
	.cfi_startproc
	sub	sp, sp, #16	//,,
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]	// __a, __a
	str	x1, [sp]	// __b, __b
// /usr/include/c++/11/bits/stl_algobase.h:235:       if (__b < __a)
	ldr	x0, [sp]	// tmp96, __b
	ldr	w1, [x0]	// _1, *__b_5(D)
	ldr	x0, [sp, 8]	// tmp97, __a
	ldr	w0, [x0]	// _2, *__a_6(D)
// /usr/include/c++/11/bits/stl_algobase.h:235:       if (__b < __a)
	cmp	w1, w0	// _1, _2
	bge	.L150		//,
// /usr/include/c++/11/bits/stl_algobase.h:236: 	return __b;
	ldr	x0, [sp]	// _3, __b
	b	.L151		//
.L150:
// /usr/include/c++/11/bits/stl_algobase.h:237:       return __a;
	ldr	x0, [sp, 8]	// _3, __a
.L151:
// /usr/include/c++/11/bits/stl_algobase.h:238:     }
	add	sp, sp, 16	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1936:
	.size	int_const__std__min_int_, .-int_const__std__min_int_
	.text
	.align	2
	.type	__static_initialization_and_destruction_0, %function