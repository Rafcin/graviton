	.arch armv8-a
	.file	"linked_list.cpp"
// GNU C++11 (Ubuntu 11.3.0-1ubuntu1~22.04) version 11.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 11.3.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -std=c++11 -fomit-frame-pointer -fno-stack-protector -fPIC -fasynchronous-unwind-tables -fstack-clash-protection
	.text
	.section	.rodata
	.align	3
	.type	_ZStL19piecewise_construct, %object
	.size	_ZStL19piecewise_construct, 1
_ZStL19piecewise_construct:
	.zero	1
	.section	.text._ZNSt9exceptionC2Ev,"axG",@progbits,_ZNSt9exceptionC5Ev,comdat
	.align	2
	.weak	_ZNSt9exceptionC2Ev
	.type	_ZNSt9exceptionC2Ev, %function
_ZNSt9exceptionC2Ev:
.LFB422:
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
.LFE422:
	.size	_ZNSt9exceptionC2Ev, .-_ZNSt9exceptionC2Ev
	.weak	_ZNSt9exceptionC1Ev
	.set	_ZNSt9exceptionC1Ev,_ZNSt9exceptionC2Ev
	.section	.text._ZNSt9bad_allocC2Ev,"axG",@progbits,_ZNSt9bad_allocC5Ev,comdat
	.align	2
	.weak	_ZNSt9bad_allocC2Ev
	.type	_ZNSt9bad_allocC2Ev, %function
_ZNSt9bad_allocC2Ev:
.LFB425:
	.cfi_startproc
	str	x30, [sp, -32]!	//,
	.cfi_def_cfa_offset 32
	.cfi_offset 30, -32
	str	x0, [sp, 24]	// this, this
// /usr/include/c++/11/new:58:     bad_alloc() throw() { }
	ldr	x0, [sp, 24]	// _1, this
	bl	_ZNSt9exceptionC2Ev		//
	adrp	x0, :got:_ZTVSt9bad_alloc	// tmp97,
	ldr	x0, [x0, #:got_lo12:_ZTVSt9bad_alloc]	// tmp96, tmp97,
	add	x1, x0, 16	// _2, tmp96,
	ldr	x0, [sp, 24]	// tmp98, this
	str	x1, [x0]	// _2, this_6(D)->D.13379._vptr.exception
// /usr/include/c++/11/new:58:     bad_alloc() throw() { }
	nop	
	ldr	x30, [sp], 32	//,
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE425:
	.size	_ZNSt9bad_allocC2Ev, .-_ZNSt9bad_allocC2Ev
	.weak	_ZNSt9bad_allocC1Ev
	.set	_ZNSt9bad_allocC1Ev,_ZNSt9bad_allocC2Ev
	.section	.text._ZnwmPv,"axG",@progbits,_ZnwmPv,comdat
	.align	2
	.weak	_ZnwmPv
	.type	_ZnwmPv, %function
_ZnwmPv:
.LFB430:
	.cfi_startproc
	sub	sp, sp, #16	//,,
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]	// D.13461, D.13461
	str	x1, [sp]	// __p, __p
// /usr/include/c++/11/new:175: { return __p; }
	ldr	x0, [sp]	// _2, __p
// /usr/include/c++/11/new:175: { return __p; }
	add	sp, sp, 16	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE430:
	.size	_ZnwmPv, .-_ZnwmPv
	.section	.text._ZdlPvS_,"axG",@progbits,_ZdlPvS_,comdat
	.align	2
	.weak	_ZdlPvS_
	.type	_ZdlPvS_, %function
_ZdlPvS_:
.LFB432:
	.cfi_startproc
	sub	sp, sp, #16	//,,
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]	// D.13469, D.13469
	str	x1, [sp]	// D.13470, D.13470
// /usr/include/c++/11/new:180: inline void operator delete  (void*, void*) _GLIBCXX_USE_NOEXCEPT { }
	nop	
	add	sp, sp, 16	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE432:
	.size	_ZdlPvS_, .-_ZdlPvS_
	.text
	.align	2
	.global	_Z9make_nodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.type	_Z9make_nodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, %function
_Z9make_nodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:
.LFB964:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA964
	stp	x19, x20, [sp, -64]!	//,,,
	.cfi_def_cfa_offset 64
	.cfi_offset 19, -64
	.cfi_offset 20, -56
	stp	x21, x30, [sp, 16]	//,,
	.cfi_offset 21, -48
	.cfi_offset 30, -40
	str	x0, [sp, 40]	// line, line
// lib/linked_list/linked_list.cpp:13:     Node *new_node = (Node *)malloc(sizeof(Node)); // Allocate memory for the new node
	mov	x0, 40	//,
	bl	malloc		//
	str	x0, [sp, 56]	// tmp98, new_node
// lib/linked_list/linked_list.cpp:14:     if (new_node == NULL)
	ldr	x0, [sp, 56]	// tmp99, new_node
	cmp	x0, 0	// tmp99,
	bne	.L7		//,
// lib/linked_list/linked_list.cpp:16:         throw std::bad_alloc(); // Throw an exception if the memory allocation fails
	mov	x0, 8	//,
	bl	__cxa_allocate_exception		//
	mov	x19, x0	// _13, tmp100
// lib/linked_list/linked_list.cpp:16:         throw std::bad_alloc(); // Throw an exception if the memory allocation fails
	mov	x0, x19	//, _13
	bl	_ZNSt9bad_allocC1Ev		//
// lib/linked_list/linked_list.cpp:16:         throw std::bad_alloc(); // Throw an exception if the memory allocation fails
	adrp	x0, :got:_ZNSt9bad_allocD1Ev	// tmp101,
	ldr	x2, [x0, #:got_lo12:_ZNSt9bad_allocD1Ev]	//, tmp101,
	adrp	x0, :got:_ZTISt9bad_alloc	// tmp102,
	ldr	x1, [x0, #:got_lo12:_ZTISt9bad_alloc]	//, tmp102,
	mov	x0, x19	//, _13
.LEHB0:
	bl	__cxa_throw		//
.LEHE0:
.L7:
// lib/linked_list/linked_list.cpp:18:     new (&new_node->line) std::string(line); // Using placement new to construct string
	ldr	x19, [sp, 56]	// _4, new_node
// lib/linked_list/linked_list.cpp:18:     new (&new_node->line) std::string(line); // Using placement new to construct string
	mov	x1, x19	//, _4
	mov	x0, 32	//,
	bl	_ZnwmPv		//
	mov	x20, x0	// _6,
	ldr	x1, [sp, 40]	//, line
	mov	x0, x20	//, _6
.LEHB1:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_		//
.LEHE1:
// lib/linked_list/linked_list.cpp:19:     new_node->next = NULL;                   // Set the next pointer to null
	ldr	x0, [sp, 56]	// tmp103, new_node
	str	xzr, [x0, 32]	//, new_node_3->next
// lib/linked_list/linked_list.cpp:20:     return new_node;
	ldr	x0, [sp, 56]	// _10, new_node
	b	.L11		//
.L10:
// lib/linked_list/linked_list.cpp:18:     new (&new_node->line) std::string(line); // Using placement new to construct string
	mov	x21, x0	// tmp105,
	mov	x1, x19	//, _4
	mov	x0, x20	//, _6
	bl	_ZdlPvS_		//
	mov	x0, x21	// D.29407, tmp105
.LEHB2:
	bl	_Unwind_Resume		//
.LEHE2:
.L11:
// lib/linked_list/linked_list.cpp:21: }
	ldp	x21, x30, [sp, 16]	//,,
	ldp	x19, x20, [sp], 64	//,,,
	.cfi_restore 20
	.cfi_restore 19
	.cfi_restore 21
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE964:
	.global	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA964:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE964-.LLSDACSB964
.LLSDACSB964:
	.uleb128 .LEHB0-.LFB964
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB964
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L10-.LFB964
	.uleb128 0
	.uleb128 .LEHB2-.LFB964
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE964:
	.text
	.size	_Z9make_nodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, .-_Z9make_nodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.align	2
	.global	_Z12destroy_nodeP4Node
	.type	_Z12destroy_nodeP4Node, %function
_Z12destroy_nodeP4Node:
.LFB971:
	.cfi_startproc
	str	x30, [sp, -32]!	//,
	.cfi_def_cfa_offset 32
	.cfi_offset 30, -32
	str	x0, [sp, 24]	// node, node
// lib/linked_list/linked_list.cpp:30:     node->line.~basic_string(); // Manually calling string destructor
	ldr	x0, [sp, 24]	// _1, node
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev		//
// lib/linked_list/linked_list.cpp:31:     free(node);                 // Deallocate memory for the node
	ldr	x0, [sp, 24]	//, node
	bl	free		//
// lib/linked_list/linked_list.cpp:32: }
	nop	
	ldr	x30, [sp], 32	//,
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE971:
	.size	_Z12destroy_nodeP4Node, .-_Z12destroy_nodeP4Node
	.align	2
	.global	_Z14list_push_backR10LinkedListRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.type	_Z14list_push_backR10LinkedListRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, %function
_Z14list_push_backR10LinkedListRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:
.LFB972:
	.cfi_startproc
	str	x30, [sp, -48]!	//,
	.cfi_def_cfa_offset 48
	.cfi_offset 30, -48
	str	x0, [sp, 24]	// list, list
	str	x1, [sp, 16]	// line, line
// lib/linked_list/linked_list.cpp:43:     Node *new_node = make_node(line); // Allocate memory for the new node and initialize it with the given text line
	ldr	x0, [sp, 16]	//, line
	bl	_Z9make_nodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE		//
	str	x0, [sp, 32]	// _8, new_node
// lib/linked_list/linked_list.cpp:44:     if (!list.head)
	ldr	x0, [sp, 24]	// tmp97, list
	ldr	x0, [x0]	// _1, list_10(D)->head
// lib/linked_list/linked_list.cpp:44:     if (!list.head)
	cmp	x0, 0	// _1,
	bne	.L14		//,
// lib/linked_list/linked_list.cpp:46:         list.head = new_node; // If the list is empty, set the new node as the head
	ldr	x0, [sp, 24]	// tmp98, list
	ldr	x1, [sp, 32]	// tmp99, new_node
	str	x1, [x0]	// tmp99, list_10(D)->head
	b	.L15		//
.L14:
// lib/linked_list/linked_list.cpp:50:         Node *last = list.head;
	ldr	x0, [sp, 24]	// tmp100, list
	ldr	x0, [x0]	// tmp101, list_10(D)->head
	str	x0, [sp, 40]	// tmp101, last
// lib/linked_list/linked_list.cpp:51:         while (last->next)
	b	.L16		//
.L17:
// lib/linked_list/linked_list.cpp:53:             last = last->next; // Traverse the list to find the last node
	ldr	x0, [sp, 40]	// tmp102, last
	ldr	x0, [x0, 32]	// tmp103, last_3->next
	str	x0, [sp, 40]	// tmp103, last
.L16:
// lib/linked_list/linked_list.cpp:51:         while (last->next)
	ldr	x0, [sp, 40]	// tmp104, last
	ldr	x0, [x0, 32]	// _2, last_3->next
	cmp	x0, 0	// _2,
	bne	.L17		//,
// lib/linked_list/linked_list.cpp:55:         last->next = new_node; // Set the next pointer of the last node to the new node
	ldr	x0, [sp, 40]	// tmp105, last
	ldr	x1, [sp, 32]	// tmp106, new_node
	str	x1, [x0, 32]	// tmp106, last_3->next
.L15:
// lib/linked_list/linked_list.cpp:57:     return new_node;
	ldr	x0, [sp, 32]	// _15, new_node
// lib/linked_list/linked_list.cpp:58: }
	ldr	x30, [sp], 48	//,
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE972:
	.size	_Z14list_push_backR10LinkedListRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, .-_Z14list_push_backR10LinkedListRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.align	2
	.global	_Z15list_erase_nextRP4Node
	.type	_Z15list_erase_nextRP4Node, %function
_Z15list_erase_nextRP4Node:
.LFB973:
	.cfi_startproc
	str	x30, [sp, -48]!	//,
	.cfi_def_cfa_offset 48
	.cfi_offset 30, -48
	str	x0, [sp, 24]	// node, node
// lib/linked_list/linked_list.cpp:67:     if (node->next)
	ldr	x0, [sp, 24]	// tmp97, node
	ldr	x0, [x0]	// _1, *node_8(D)
// lib/linked_list/linked_list.cpp:67:     if (node->next)
	ldr	x0, [x0, 32]	// _2, _1->next
// lib/linked_list/linked_list.cpp:67:     if (node->next)
	cmp	x0, 0	// _2,
	beq	.L21		//,
// lib/linked_list/linked_list.cpp:69:         Node *tmp = node->next; // Store a pointer to the next node
	ldr	x0, [sp, 24]	// tmp98, node
	ldr	x0, [x0]	// _3, *node_8(D)
// lib/linked_list/linked_list.cpp:69:         Node *tmp = node->next; // Store a pointer to the next node
	ldr	x0, [x0, 32]	// tmp99, _3->next
	str	x0, [sp, 40]	// tmp99, tmp
// lib/linked_list/linked_list.cpp:70:         node->next = tmp->next; // Update the current node's next pointer to skip over the next node
	ldr	x0, [sp, 24]	// tmp100, node
	ldr	x0, [x0]	// _4, *node_8(D)
// lib/linked_list/linked_list.cpp:70:         node->next = tmp->next; // Update the current node's next pointer to skip over the next node
	ldr	x1, [sp, 40]	// tmp101, tmp
	ldr	x1, [x1, 32]	// _5, tmp_9->next
// lib/linked_list/linked_list.cpp:70:         node->next = tmp->next; // Update the current node's next pointer to skip over the next node
	str	x1, [x0, 32]	// _5, _4->next
// lib/linked_list/linked_list.cpp:71:         destroy_node(tmp);      // Deallocate the memory used by the removed node
	ldr	x0, [sp, 40]	//, tmp
	bl	_Z12destroy_nodeP4Node		//
.L21:
// lib/linked_list/linked_list.cpp:73: }
	nop	
	ldr	x30, [sp], 48	//,
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE973:
	.size	_Z15list_erase_nextRP4Node, .-_Z15list_erase_nextRP4Node
	.align	2
	.global	_Z10list_clearR10LinkedList
	.type	_Z10list_clearR10LinkedList, %function
_Z10list_clearR10LinkedList:
.LFB974:
	.cfi_startproc
	str	x30, [sp, -48]!	//,
	.cfi_def_cfa_offset 48
	.cfi_offset 30, -48
	str	x0, [sp, 24]	// list, list
// lib/linked_list/linked_list.cpp:82:     Node *current = list.head;
	ldr	x0, [sp, 24]	// tmp92, list
	ldr	x0, [x0]	// tmp93, list_4(D)->head
	str	x0, [sp, 40]	// tmp93, current
// lib/linked_list/linked_list.cpp:83:     while (current)
	b	.L23		//
.L24:
// lib/linked_list/linked_list.cpp:85:         Node *tmp = current->next; // Store a pointer to the next node
	ldr	x0, [sp, 40]	// tmp94, current
	ldr	x0, [x0, 32]	// tmp95, current_1->next
	str	x0, [sp, 32]	// tmp95, tmp
// lib/linked_list/linked_list.cpp:86:         destroy_node(current);     // Deallocate the memory used by the current node
	ldr	x0, [sp, 40]	//, current
	bl	_Z12destroy_nodeP4Node		//
// lib/linked_list/linked_list.cpp:87:         current = tmp;             // Move to the next node
	ldr	x0, [sp, 32]	// tmp96, tmp
	str	x0, [sp, 40]	// tmp96, current
.L23:
// lib/linked_list/linked_list.cpp:83:     while (current)
	ldr	x0, [sp, 40]	// tmp97, current
	cmp	x0, 0	// tmp97,
	bne	.L24		//,
// lib/linked_list/linked_list.cpp:89:     list.head = NULL; // Set the list's head pointer to NULL
	ldr	x0, [sp, 24]	// tmp98, list
	str	xzr, [x0]	//, list_4(D)->head
// lib/linked_list/linked_list.cpp:90: }
	nop	
	ldr	x30, [sp], 48	//,
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE974:
	.size	_Z10list_clearR10LinkedList, .-_Z10list_clearR10LinkedList
	.align	2
	.global	_Z9list_sizeR10LinkedList
	.type	_Z9list_sizeR10LinkedList, %function
_Z9list_sizeR10LinkedList:
.LFB975:
	.cfi_startproc
	sub	sp, sp, #32	//,,
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]	// list, list
// lib/linked_list/linked_list.cpp:99:     size_t size = 0;
	str	xzr, [sp, 24]	//, size
// lib/linked_list/linked_list.cpp:100:     Node *current = list.head;
	ldr	x0, [sp, 8]	// tmp94, list
	ldr	x0, [x0]	// tmp95, list_5(D)->head
	str	x0, [sp, 16]	// tmp95, current
// lib/linked_list/linked_list.cpp:101:     while (current)
	b	.L26		//
.L27:
// lib/linked_list/linked_list.cpp:103:         size++;                  // Increment the size count
	ldr	x0, [sp, 24]	// tmp97, size
	add	x0, x0, 1	// tmp96, tmp97,
	str	x0, [sp, 24]	// tmp96, size
// lib/linked_list/linked_list.cpp:104:         current = current->next; // Move to the next node
	ldr	x0, [sp, 16]	// tmp98, current
	ldr	x0, [x0, 32]	// tmp99, current_2->next
	str	x0, [sp, 16]	// tmp99, current
.L26:
// lib/linked_list/linked_list.cpp:101:     while (current)
	ldr	x0, [sp, 16]	// tmp100, current
	cmp	x0, 0	// tmp100,
	bne	.L27		//,
// lib/linked_list/linked_list.cpp:106:     return size;
	ldr	x0, [sp, 24]	// _7, size
// lib/linked_list/linked_list.cpp:107: }
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE975:
	.size	_Z9list_sizeR10LinkedList, .-_Z9list_sizeR10LinkedList
	.align	2
	.global	_Z12list_advanceP4Nodei
	.type	_Z12list_advanceP4Nodei, %function
_Z12list_advanceP4Nodei:
.LFB976:
	.cfi_startproc
	sub	sp, sp, #16	//,,
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]	// node, node
	str	w1, [sp, 4]	// n, n
// lib/linked_list/linked_list.cpp:117:     while (n-- > 0 && node)
	b	.L30		//
.L33:
// lib/linked_list/linked_list.cpp:119:         node = node->next; // Move to the next node n times (or until the end of the list is reached)
	ldr	x0, [sp, 8]	// tmp96, node
	ldr	x0, [x0, 32]	// tmp97, node_2->next
	str	x0, [sp, 8]	// tmp97, node
.L30:
// lib/linked_list/linked_list.cpp:117:     while (n-- > 0 && node)
	ldr	w0, [sp, 4]	// n.8_1, n
	sub	w1, w0, #1	// tmp98, n.8_1,
	str	w1, [sp, 4]	// tmp98, n
// lib/linked_list/linked_list.cpp:117:     while (n-- > 0 && node)
	cmp	w0, 0	// n.8_1,
	ble	.L31		//,
// lib/linked_list/linked_list.cpp:117:     while (n-- > 0 && node)
	ldr	x0, [sp, 8]	// tmp99, node
	cmp	x0, 0	// tmp99,
	beq	.L31		//,
// lib/linked_list/linked_list.cpp:117:     while (n-- > 0 && node)
	mov	w0, 1	// iftmp.7_4,
	b	.L32		//
.L31:
// lib/linked_list/linked_list.cpp:117:     while (n-- > 0 && node)
	mov	w0, 0	// iftmp.7_4,
.L32:
// lib/linked_list/linked_list.cpp:117:     while (n-- > 0 && node)
	cmp	w0, 0	// iftmp.7_4,
	bne	.L33		//,
// lib/linked_list/linked_list.cpp:121:     return node;
	ldr	x0, [sp, 8]	// _11, node
// lib/linked_list/linked_list.cpp:122: }
	add	sp, sp, 16	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE976:
	.size	_Z12list_advanceP4Nodei, .-_Z12list_advanceP4Nodei
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align	3
	.type	DW.ref.__gxx_personality_v0, %object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.xword	__gxx_personality_v0
	.ident	"GCC: (Ubuntu 11.3.0-1ubuntu1~22.04) 11.3.0"
	.section	.note.GNU-stack,"",@progbits
