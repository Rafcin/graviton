	.arch armv8-a
	.file	"linked_list.cpp"
	.text
	.align	2
	.global	_Z9make_nodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.type	_Z9make_nodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, %function
_Z9make_nodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:
.LFB1012:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -16
	.cfi_offset 20, -8
	mov	x20, x0
	mov	x0, 40
	bl	malloc
	cbnz	x0, .L2
	mov	x0, 8
	bl	__cxa_allocate_exception
	adrp	x1, :got:_ZTVSt9bad_alloc
	adrp	x2, :got:_ZNSt9bad_allocD1Ev
	ldr	x1, [x1, #:got_lo12:_ZTVSt9bad_alloc]
	ldr	x2, [x2, #:got_lo12:_ZNSt9bad_allocD1Ev]
	add	x1, x1, 16
	str	x1, [x0]
	adrp	x1, :got:_ZTISt9bad_alloc
	ldr	x1, [x1, #:got_lo12:_ZTISt9bad_alloc]
	bl	__cxa_throw
.L2:
	mov	x19, x0
	mov	x1, x20
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_
	mov	x0, x19
	str	xzr, [x19, 32]
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1012:
	.size	_Z9make_nodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, .-_Z9make_nodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.align	2
	.global	_Z12destroy_nodeP4Node
	.type	_Z12destroy_nodeP4Node, %function
_Z12destroy_nodeP4Node:
.LFB1019:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -16
	mov	x19, x0
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	b	free
	.cfi_endproc
.LFE1019:
	.size	_Z12destroy_nodeP4Node, .-_Z12destroy_nodeP4Node
	.align	2
	.global	_Z14list_push_backR10LinkedListRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.type	_Z14list_push_backR10LinkedListRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, %function
_Z14list_push_backR10LinkedListRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:
.LFB1020:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -16
	mov	x19, x0
	mov	x0, x1
	bl	_Z9make_nodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	ldr	x1, [x19]
	cbnz	x1, .L7
	str	x0, [x19]
.L6:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 32
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
.L7:
	.cfi_restore_state
	mov	x2, x1
	ldr	x1, [x1, 32]
	cbnz	x1, .L7
	str	x0, [x2, 32]
	b	.L6
	.cfi_endproc
.LFE1020:
	.size	_Z14list_push_backR10LinkedListRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, .-_Z14list_push_backR10LinkedListRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.align	2
	.global	_Z15list_erase_nextRP4Node
	.type	_Z15list_erase_nextRP4Node, %function
_Z15list_erase_nextRP4Node:
.LFB1021:
	.cfi_startproc
	ldr	x1, [x0]
	ldr	x0, [x1, 32]
	cbz	x0, .L12
	ldr	x2, [x0, 32]
	str	x2, [x1, 32]
	b	_Z12destroy_nodeP4Node
.L12:
	ret
	.cfi_endproc
.LFE1021:
	.size	_Z15list_erase_nextRP4Node, .-_Z15list_erase_nextRP4Node
	.align	2
	.global	_Z10list_clearR10LinkedList
	.type	_Z10list_clearR10LinkedList, %function
_Z10list_clearR10LinkedList:
.LFB1022:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -16
	.cfi_offset 20, -8
	mov	x19, x0
	ldr	x0, [x0]
.L15:
	cbnz	x0, .L16
	str	xzr, [x19]
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 32
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
.L16:
	.cfi_restore_state
	ldr	x20, [x0, 32]
	bl	_Z12destroy_nodeP4Node
	mov	x0, x20
	b	.L15
	.cfi_endproc
.LFE1022:
	.size	_Z10list_clearR10LinkedList, .-_Z10list_clearR10LinkedList
	.align	2
	.global	_Z9list_sizeR10LinkedList
	.type	_Z9list_sizeR10LinkedList, %function
_Z9list_sizeR10LinkedList:
.LFB1023:
	.cfi_startproc
	ldr	x1, [x0]
	mov	x0, 0
.L19:
	cbnz	x1, .L20
	ret
.L20:
	add	x0, x0, 1
	ldr	x1, [x1, 32]
	b	.L19
	.cfi_endproc
.LFE1023:
	.size	_Z9list_sizeR10LinkedList, .-_Z9list_sizeR10LinkedList
	.align	2
	.global	_Z12list_advanceP4Nodei
	.type	_Z12list_advanceP4Nodei, %function
_Z12list_advanceP4Nodei:
.LFB1024:
	.cfi_startproc
.L23:
	cmp	w1, 0
	ble	.L21
	sub	w1, w1, #1
	cbz	x0, .L21
	ldr	x0, [x0, 32]
	b	.L23
.L21:
	ret
	.cfi_endproc
.LFE1024:
	.size	_Z12list_advanceP4Nodei, .-_Z12list_advanceP4Nodei
	.ident	"GCC: (Ubuntu 11.3.0-1ubuntu1~22.04) 11.3.0"
	.section	.note.GNU-stack,"",@progbits
