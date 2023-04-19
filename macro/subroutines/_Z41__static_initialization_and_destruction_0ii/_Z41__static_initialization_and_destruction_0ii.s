
	.type	_Z41__static_initialization_and_destruction_0ii, %function
_Z41__static_initialization_and_destruction_0ii:
.LFB2129:
	.cfi_startproc
	str	x30, [sp, -32]!	//,
	.cfi_def_cfa_offset 32
	.cfi_offset 30, -32
	str	w0, [sp, 28]	// __initialize_p, __initialize_p
	str	w1, [sp, 24]	// __priority, __priority
// main.cpp:512: }
	ldr	w0, [sp, 28]	// tmp92, __initialize_p
	cmp	w0, 1	// tmp92,
	bne	.L154		//,
// main.cpp:512: }
	ldr	w1, [sp, 24]	// tmp93, __priority
	mov	w0, 65535	// tmp94,
	cmp	w1, w0	// tmp93, tmp94
	bne	.L154		//,
// /usr/include/c++/11/iostream:74:   static ios_base::Init __ioinit;
	adrp	x0, _ZStL8__ioinit	// tmp95,
	add	x0, x0, :lo12:_ZStL8__ioinit	//, tmp95,
	bl	_ZNSt8ios_base4InitC1Ev		//
	adrp	x0, __dso_handle	// tmp96,
	add	x2, x0, :lo12:__dso_handle	//, tmp96,
	adrp	x0, _ZStL8__ioinit	// tmp97,
	add	x1, x0, :lo12:_ZStL8__ioinit	//, tmp97,
	adrp	x0, :got:_ZNSt8ios_base4InitD1Ev	// tmp98,
	ldr	x0, [x0, #:got_lo12:_ZNSt8ios_base4InitD1Ev]	//, tmp98,
	bl	__cxa_atexit		//
.L154:
// main.cpp:512: }
	nop	
	ldr	x30, [sp], 32	//,
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2129:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.weak	_ZTISt9exception
	.section	.data.rel.ro._ZTISt9exception,"awG",@progbits,_ZTISt9exception,comdat
	.align	3
	.type	_ZTISt9exception, %object
	.size	_ZTISt9exception, 16
_ZTISt9exception:
// <anonymous>:
// <anonymous>:
	.xword	_ZTVN10__cxxabiv117__class_type_infoE+16
// <anonymous>:
	.xword	_ZTSSt9exception
	.weak	_ZTSSt9exception
	.section	.rodata._ZTSSt9exception,"aG",@progbits,_ZTSSt9exception,comdat
	.align	3
	.type	_ZTSSt9exception, %object
	.size	_ZTSSt9exception, 13
_ZTSSt9exception:
	.string	"St9exception"
	.text
	.align	2