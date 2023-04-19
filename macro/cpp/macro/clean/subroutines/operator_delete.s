operator_delete:
.LFB40:
	.cfi_startproc
	sub	sp, sp, #16	//,,
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]	// D.5187, D.5187
	str	x1, [sp]	// D.5188, D.5188
// /usr/include/c++/11/new:180: inline void operator delete  (void*, void*) _GLIBCXX_USE_NOEXCEPT { }
	nop	
	add	sp, sp, 16	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE40:
	.size	operator_delete, .-operator_delete
	.section	.rodata
	.align	3
	.type	_ZStL19piecewise_construct, %object
	.size	_ZStL19piecewise_construct, 1
_ZStL19piecewise_construct:
	.zero	1
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,8
	.global	CONTROLS
	.align	3
.LC0:
	.string	"^X:Exit  ^O:Save  ^W:Search  ^T:Replace"
	.section	.data.rel.local,"aw"
	.align	3
	.type	CONTROLS, %object
	.size	CONTROLS, 8
CONTROLS:
	.xword	.LC0
	.text
	.align	2
	.global	make_node
	.type	make_node, %function