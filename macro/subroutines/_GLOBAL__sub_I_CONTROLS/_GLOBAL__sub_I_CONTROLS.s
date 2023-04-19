
	.type	_GLOBAL__sub_I_CONTROLS, %function
_GLOBAL__sub_I_CONTROLS:
.LFB2130:
	.cfi_startproc
	str	x30, [sp, -16]!	//,
	.cfi_def_cfa_offset 16
	.cfi_offset 30, -16
// main.cpp:512: }
	mov	w1, 65535	//,
	mov	w0, 1	//,
	bl	_Z41__static_initialization_and_destruction_0ii		//
	ldr	x30, [sp], 16	//,
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2130:
	.size	_GLOBAL__sub_I_CONTROLS, .-_GLOBAL__sub_I_CONTROLS
	.section	.init_array,"aw"
	.align	3
	.xword	_GLOBAL__sub_I_CONTROLS
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align	3
	.type	DW.ref.__gxx_personality_v0, %object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.xword	__gxx_personality_v0
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 11.3.0-1ubuntu1~22.04) 11.3.0"
	.section	.note.GNU-stack,"",@progbits
