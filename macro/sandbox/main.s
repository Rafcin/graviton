	.arch armv8-a
	.file	"main.cpp"
// GNU C++11 (Ubuntu 11.3.0-1ubuntu1~22.04) version 11.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 11.3.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -std=c++11 -fno-rtti -fomit-frame-pointer -fno-stack-protector -fasynchronous-unwind-tables -fstack-clash-protection
	.text
	.section	.text._ZNSt9exceptionC2Ev,"axG",@progbits,_ZNSt9exceptionC5Ev,comdat
	.align	2
	.weak	_ZNSt9exceptionC2Ev
	.type	_ZNSt9exceptionC2Ev, %function
_ZNSt9exceptionC2Ev:
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
	.size	_ZNSt9exceptionC2Ev, .-_ZNSt9exceptionC2Ev
	.weak	_ZNSt9exceptionC1Ev
	.set	_ZNSt9exceptionC1Ev,_ZNSt9exceptionC2Ev
	.section	.text._ZNSt9bad_allocC2Ev,"axG",@progbits,_ZNSt9bad_allocC5Ev,comdat
	.align	2
	.weak	_ZNSt9bad_allocC2Ev
	.type	_ZNSt9bad_allocC2Ev, %function
_ZNSt9bad_allocC2Ev:
.LFB33:
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
	str	x1, [x0]	// _2, this_6(D)->D.5087._vptr.exception
// /usr/include/c++/11/new:58:     bad_alloc() throw() { }
	nop	
	ldr	x30, [sp], 32	//,
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE33:
	.size	_ZNSt9bad_allocC2Ev, .-_ZNSt9bad_allocC2Ev
	.weak	_ZNSt9bad_allocC1Ev
	.set	_ZNSt9bad_allocC1Ev,_ZNSt9bad_allocC2Ev
	.section	.text._ZnwmPv,"axG",@progbits,_ZnwmPv,comdat
	.align	2
	.weak	_ZnwmPv
	.type	_ZnwmPv, %function
_ZnwmPv:
.LFB38:
	.cfi_startproc
	sub	sp, sp, #16	//,,
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]	// D.5164, D.5164
	str	x1, [sp]	// __p, __p
// /usr/include/c++/11/new:175: { return __p; }
	ldr	x0, [sp]	// _2, __p
// /usr/include/c++/11/new:175: { return __p; }
	add	sp, sp, 16	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE38:
	.size	_ZnwmPv, .-_ZnwmPv
	.section	.text._ZdlPvS_,"axG",@progbits,_ZdlPvS_,comdat
	.align	2
	.weak	_ZdlPvS_
	.type	_ZdlPvS_, %function
_ZdlPvS_:
.LFB40:
	.cfi_startproc
	sub	sp, sp, #16	//,,
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]	// D.5172, D.5172
	str	x1, [sp]	// D.5173, D.5173
// /usr/include/c++/11/new:180: inline void operator delete  (void*, void*) _GLIBCXX_USE_NOEXCEPT { }
	nop	
	add	sp, sp, 16	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE40:
	.size	_ZdlPvS_, .-_ZdlPvS_
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
	.global	_Z9make_nodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.type	_Z9make_nodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, %function
_Z9make_nodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:
.LFB1656:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1656
	stp	x19, x20, [sp, -64]!	//,,,
	.cfi_def_cfa_offset 64
	.cfi_offset 19, -64
	.cfi_offset 20, -56
	stp	x21, x30, [sp, 16]	//,,
	.cfi_offset 21, -48
	.cfi_offset 30, -40
	str	x0, [sp, 40]	// line, line
// main.cpp:21:     Node *new_node = (Node *)malloc(sizeof(Node));
	mov	x0, 40	//,
	bl	malloc		//
	str	x0, [sp, 56]	// tmp98, new_node
// main.cpp:22:     if (new_node == NULL)
	ldr	x0, [sp, 56]	// tmp99, new_node
	cmp	x0, 0	// tmp99,
	bne	.L7		//,
// main.cpp:24:         throw std::bad_alloc();
	mov	x0, 8	//,
	bl	__cxa_allocate_exception		//
	mov	x19, x0	// _13, tmp100
// main.cpp:24:         throw std::bad_alloc();
	mov	x0, x19	//, _13
	bl	_ZNSt9bad_allocC1Ev		//
// main.cpp:24:         throw std::bad_alloc();
	adrp	x0, :got:_ZNSt9bad_allocD1Ev	// tmp101,
	ldr	x2, [x0, #:got_lo12:_ZNSt9bad_allocD1Ev]	//, tmp101,
	adrp	x0, _ZTISt9bad_alloc	// tmp102,
	add	x1, x0, :lo12:_ZTISt9bad_alloc	//, tmp102,
	mov	x0, x19	//, _13
.LEHB0:
	bl	__cxa_throw		//
.LEHE0:
.L7:
// main.cpp:26:     new (&new_node->line) std::string(line); // Using placement new to construct string
	ldr	x19, [sp, 56]	// _4, new_node
// main.cpp:26:     new (&new_node->line) std::string(line); // Using placement new to construct string
	mov	x1, x19	//, _4
	mov	x0, 32	//,
	bl	_ZnwmPv		//
	mov	x20, x0	// _6,
	ldr	x1, [sp, 40]	//, line
	mov	x0, x20	//, _6
.LEHB1:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_		//
.LEHE1:
// main.cpp:27:     new_node->next = NULL;
	ldr	x0, [sp, 56]	// tmp103, new_node
	str	xzr, [x0, 32]	//, new_node_3->next
// main.cpp:28:     return new_node;
	ldr	x0, [sp, 56]	// _10, new_node
	b	.L11		//
.L10:
// main.cpp:26:     new (&new_node->line) std::string(line); // Using placement new to construct string
	mov	x21, x0	// tmp105,
	mov	x1, x19	//, _4
	mov	x0, x20	//, _6
	bl	_ZdlPvS_		//
	mov	x0, x21	// D.49577, tmp105
.LEHB2:
	bl	_Unwind_Resume		//
.LEHE2:
.L11:
// main.cpp:29: }
	ldp	x21, x30, [sp, 16]	//,,
	ldp	x19, x20, [sp], 64	//,,,
	.cfi_restore 20
	.cfi_restore 19
	.cfi_restore 21
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1656:
	.global	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA1656:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1656-.LLSDACSB1656
.LLSDACSB1656:
	.uleb128 .LEHB0-.LFB1656
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB1656
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L10-.LFB1656
	.uleb128 0
	.uleb128 .LEHB2-.LFB1656
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE1656:
	.text
	.size	_Z9make_nodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, .-_Z9make_nodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.align	2
	.global	_Z12destroy_nodeP4Node
	.type	_Z12destroy_nodeP4Node, %function
_Z12destroy_nodeP4Node:
.LFB1663:
	.cfi_startproc
	str	x30, [sp, -32]!	//,
	.cfi_def_cfa_offset 32
	.cfi_offset 30, -32
	str	x0, [sp, 24]	// node, node
// main.cpp:35:     node->line.~basic_string(); // Manually calling string destructor
	ldr	x0, [sp, 24]	// _1, node
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev		//
// main.cpp:36:     free(node);
	ldr	x0, [sp, 24]	//, node
	bl	free		//
// main.cpp:37: }
	nop	
	ldr	x30, [sp], 32	//,
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1663:
	.size	_Z12destroy_nodeP4Node, .-_Z12destroy_nodeP4Node
	.section	.text._ZN10LinkedListC2Ev,"axG",@progbits,_ZN10LinkedListC5Ev,comdat
	.align	2
	.weak	_ZN10LinkedListC2Ev
	.type	_ZN10LinkedListC2Ev, %function
_ZN10LinkedListC2Ev:
.LFB1665:
	.cfi_startproc
	sub	sp, sp, #16	//,,
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]	// this, this
// main.cpp:44:     LinkedList() : head(NULL) {}
	ldr	x0, [sp, 8]	// tmp92, this
	str	xzr, [x0]	//, this_2(D)->head
// main.cpp:44:     LinkedList() : head(NULL) {}
	nop	
	add	sp, sp, 16	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1665:
	.size	_ZN10LinkedListC2Ev, .-_ZN10LinkedListC2Ev
	.weak	_ZN10LinkedListC1Ev
	.set	_ZN10LinkedListC1Ev,_ZN10LinkedListC2Ev
	.section	.rodata
	.align	3
.LC1:
	.string	"Heap Memory Consumption: %zu bytes | Number of Nodes: %zu"
	.text
	.align	2
	.global	_Z19display_memory_infomm
	.type	_Z19display_memory_infomm, %function
_Z19display_memory_infomm:
.LFB1667:
	.cfi_startproc
	str	x30, [sp, -32]!	//,
	.cfi_def_cfa_offset 32
	.cfi_offset 30, -32
	str	x0, [sp, 24]	// memory, memory
	str	x1, [sp, 16]	// nodes, nodes
// main.cpp:51:     attron(A_BOLD);
	adrp	x0, :got:stdscr	// tmp95,
	ldr	x0, [x0, #:got_lo12:stdscr]	// tmp94, tmp95,
	ldr	x0, [x0]	// stdscr.6_1, stdscr
	mov	x2, 0	//,
	mov	w1, 2097152	//,
	bl	wattr_on		//
// main.cpp:52:     mvprintw(1, 0, "Heap Memory Consumption: %zu bytes | Number of Nodes: %zu", memory, nodes);
	ldr	x4, [sp, 16]	//, nodes
	ldr	x3, [sp, 24]	//, memory
	adrp	x0, .LC1	// tmp96,
	add	x2, x0, :lo12:.LC1	//, tmp96,
	mov	w1, 0	//,
	mov	w0, 1	//,
	bl	mvprintw		//
// main.cpp:53:     attroff(A_BOLD);
	adrp	x0, :got:stdscr	// tmp98,
	ldr	x0, [x0, #:got_lo12:stdscr]	// tmp97, tmp98,
	ldr	x0, [x0]	// stdscr.7_2, stdscr
	mov	x2, 0	//,
	mov	w1, 2097152	//,
	bl	wattr_off		//
// main.cpp:54: }
	nop	
	ldr	x30, [sp], 32	//,
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1667:
	.size	_Z19display_memory_infomm, .-_Z19display_memory_infomm
	.align	2
	.global	_Z14list_push_backR10LinkedListRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.type	_Z14list_push_backR10LinkedListRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, %function
_Z14list_push_backR10LinkedListRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:
.LFB1668:
	.cfi_startproc
	str	x30, [sp, -48]!	//,
	.cfi_def_cfa_offset 48
	.cfi_offset 30, -48
	str	x0, [sp, 24]	// list, list
	str	x1, [sp, 16]	// line, line
// main.cpp:60:     Node *new_node = make_node(line);
	ldr	x0, [sp, 16]	//, line
	bl	_Z9make_nodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE		//
	str	x0, [sp, 32]	// _8, new_node
// main.cpp:61:     if (!list.head)
	ldr	x0, [sp, 24]	// tmp97, list
	ldr	x0, [x0]	// _1, list_10(D)->head
// main.cpp:61:     if (!list.head)
	cmp	x0, 0	// _1,
	bne	.L16		//,
// main.cpp:63:         list.head = new_node;
	ldr	x0, [sp, 24]	// tmp98, list
	ldr	x1, [sp, 32]	// tmp99, new_node
	str	x1, [x0]	// tmp99, list_10(D)->head
	b	.L17		//
.L16:
// main.cpp:67:         Node *last = list.head;
	ldr	x0, [sp, 24]	// tmp100, list
	ldr	x0, [x0]	// tmp101, list_10(D)->head
	str	x0, [sp, 40]	// tmp101, last
// main.cpp:68:         while (last->next)
	b	.L18		//
.L19:
// main.cpp:70:             last = last->next;
	ldr	x0, [sp, 40]	// tmp102, last
	ldr	x0, [x0, 32]	// tmp103, last_3->next
	str	x0, [sp, 40]	// tmp103, last
.L18:
// main.cpp:68:         while (last->next)
	ldr	x0, [sp, 40]	// tmp104, last
	ldr	x0, [x0, 32]	// _2, last_3->next
	cmp	x0, 0	// _2,
	bne	.L19		//,
// main.cpp:72:         last->next = new_node;
	ldr	x0, [sp, 40]	// tmp105, last
	ldr	x1, [sp, 32]	// tmp106, new_node
	str	x1, [x0, 32]	// tmp106, last_3->next
.L17:
// main.cpp:74:     return new_node;
	ldr	x0, [sp, 32]	// _15, new_node
// main.cpp:75: }
	ldr	x30, [sp], 48	//,
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1668:
	.size	_Z14list_push_backR10LinkedListRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, .-_Z14list_push_backR10LinkedListRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.align	2
	.global	_Z15list_erase_nextRP4Node
	.type	_Z15list_erase_nextRP4Node, %function
_Z15list_erase_nextRP4Node:
.LFB1669:
	.cfi_startproc
	str	x30, [sp, -48]!	//,
	.cfi_def_cfa_offset 48
	.cfi_offset 30, -48
	str	x0, [sp, 24]	// node, node
// main.cpp:81:     if (node->next)
	ldr	x0, [sp, 24]	// tmp97, node
	ldr	x0, [x0]	// _1, *node_8(D)
// main.cpp:81:     if (node->next)
	ldr	x0, [x0, 32]	// _2, _1->next
// main.cpp:81:     if (node->next)
	cmp	x0, 0	// _2,
	beq	.L23		//,
// main.cpp:83:         Node *tmp = node->next;
	ldr	x0, [sp, 24]	// tmp98, node
	ldr	x0, [x0]	// _3, *node_8(D)
// main.cpp:83:         Node *tmp = node->next;
	ldr	x0, [x0, 32]	// tmp99, _3->next
	str	x0, [sp, 40]	// tmp99, tmp
// main.cpp:84:         node->next = tmp->next;
	ldr	x0, [sp, 24]	// tmp100, node
	ldr	x0, [x0]	// _4, *node_8(D)
// main.cpp:84:         node->next = tmp->next;
	ldr	x1, [sp, 40]	// tmp101, tmp
	ldr	x1, [x1, 32]	// _5, tmp_9->next
// main.cpp:84:         node->next = tmp->next;
	str	x1, [x0, 32]	// _5, _4->next
// main.cpp:85:         destroy_node(tmp);
	ldr	x0, [sp, 40]	//, tmp
	bl	_Z12destroy_nodeP4Node		//
.L23:
// main.cpp:87: }
	nop	
	ldr	x30, [sp], 48	//,
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1669:
	.size	_Z15list_erase_nextRP4Node, .-_Z15list_erase_nextRP4Node
	.align	2
	.global	_Z10list_clearR10LinkedList
	.type	_Z10list_clearR10LinkedList, %function
_Z10list_clearR10LinkedList:
.LFB1670:
	.cfi_startproc
	str	x30, [sp, -48]!	//,
	.cfi_def_cfa_offset 48
	.cfi_offset 30, -48
	str	x0, [sp, 24]	// list, list
// main.cpp:93:     Node *current = list.head;
	ldr	x0, [sp, 24]	// tmp92, list
	ldr	x0, [x0]	// tmp93, list_4(D)->head
	str	x0, [sp, 40]	// tmp93, current
// main.cpp:94:     while (current)
	b	.L25		//
.L26:
// main.cpp:96:         Node *tmp = current->next;
	ldr	x0, [sp, 40]	// tmp94, current
	ldr	x0, [x0, 32]	// tmp95, current_1->next
	str	x0, [sp, 32]	// tmp95, tmp
// main.cpp:97:         destroy_node(current);
	ldr	x0, [sp, 40]	//, current
	bl	_Z12destroy_nodeP4Node		//
// main.cpp:98:         current = tmp;
	ldr	x0, [sp, 32]	// tmp96, tmp
	str	x0, [sp, 40]	// tmp96, current
.L25:
// main.cpp:94:     while (current)
	ldr	x0, [sp, 40]	// tmp97, current
	cmp	x0, 0	// tmp97,
	bne	.L26		//,
// main.cpp:100:     list.head = NULL;
	ldr	x0, [sp, 24]	// tmp98, list
	str	xzr, [x0]	//, list_4(D)->head
// main.cpp:101: }
	nop	
	ldr	x30, [sp], 48	//,
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1670:
	.size	_Z10list_clearR10LinkedList, .-_Z10list_clearR10LinkedList
	.align	2
	.global	_Z9list_sizeR10LinkedList
	.type	_Z9list_sizeR10LinkedList, %function
_Z9list_sizeR10LinkedList:
.LFB1671:
	.cfi_startproc
	sub	sp, sp, #32	//,,
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]	// list, list
// main.cpp:107:     size_t size = 0;
	str	xzr, [sp, 24]	//, size
// main.cpp:108:     Node *current = list.head;
	ldr	x0, [sp, 8]	// tmp94, list
	ldr	x0, [x0]	// tmp95, list_5(D)->head
	str	x0, [sp, 16]	// tmp95, current
// main.cpp:109:     while (current)
	b	.L28		//
.L29:
// main.cpp:111:         size++;
	ldr	x0, [sp, 24]	// tmp97, size
	add	x0, x0, 1	// tmp96, tmp97,
	str	x0, [sp, 24]	// tmp96, size
// main.cpp:112:         current = current->next;
	ldr	x0, [sp, 16]	// tmp98, current
	ldr	x0, [x0, 32]	// tmp99, current_2->next
	str	x0, [sp, 16]	// tmp99, current
.L28:
// main.cpp:109:     while (current)
	ldr	x0, [sp, 16]	// tmp100, current
	cmp	x0, 0	// tmp100,
	bne	.L29		//,
// main.cpp:114:     return size;
	ldr	x0, [sp, 24]	// _7, size
// main.cpp:115: }
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1671:
	.size	_Z9list_sizeR10LinkedList, .-_Z9list_sizeR10LinkedList
	.align	2
	.global	_Z12list_advanceP4Nodei
	.type	_Z12list_advanceP4Nodei, %function
_Z12list_advanceP4Nodei:
.LFB1672:
	.cfi_startproc
	sub	sp, sp, #16	//,,
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]	// node, node
	str	w1, [sp, 4]	// n, n
// main.cpp:121:     while (n-- > 0 && node)
	b	.L32		//
.L35:
// main.cpp:123:         node = node->next;
	ldr	x0, [sp, 8]	// tmp96, node
	ldr	x0, [x0, 32]	// tmp97, node_2->next
	str	x0, [sp, 8]	// tmp97, node
.L32:
// main.cpp:121:     while (n-- > 0 && node)
	ldr	w0, [sp, 4]	// n.10_1, n
	sub	w1, w0, #1	// tmp98, n.10_1,
	str	w1, [sp, 4]	// tmp98, n
// main.cpp:121:     while (n-- > 0 && node)
	cmp	w0, 0	// n.10_1,
	ble	.L33		//,
// main.cpp:121:     while (n-- > 0 && node)
	ldr	x0, [sp, 8]	// tmp99, node
	cmp	x0, 0	// tmp99,
	beq	.L33		//,
// main.cpp:121:     while (n-- > 0 && node)
	mov	w0, 1	// iftmp.9_4,
	b	.L34		//
.L33:
// main.cpp:121:     while (n-- > 0 && node)
	mov	w0, 0	// iftmp.9_4,
.L34:
// main.cpp:121:     while (n-- > 0 && node)
	cmp	w0, 0	// iftmp.9_4,
	bne	.L35		//,
// main.cpp:125:     return node;
	ldr	x0, [sp, 8]	// _11, node
// main.cpp:126: }
	add	sp, sp, 16	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1672:
	.size	_Z12list_advanceP4Nodei, .-_Z12list_advanceP4Nodei
	.align	2
	.global	_Z9open_filePKcR10LinkedListRmS3_
	.type	_Z9open_filePKcR10LinkedListRmS3_, %function
_Z9open_filePKcR10LinkedListRmS3_:
.LFB1673:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1673
	sub	sp, sp, #624	//,,
	.cfi_def_cfa_offset 624
	stp	x19, x30, [sp]	//,,
	.cfi_offset 19, -624
	.cfi_offset 30, -616
	str	x0, [sp, 40]	// filename, filename
	str	x1, [sp, 32]	// lines, lines
	str	x2, [sp, 24]	// memory, memory
	str	x3, [sp, 16]	// nodes, nodes
// main.cpp:132:     std::ifstream infile(filename);
	add	x0, sp, 88	// tmp111,,
	mov	w2, 8	//,
	ldr	x1, [sp, 40]	//, filename
.LEHB3:
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode		//
.LEHE3:
// main.cpp:133:     if (!infile.is_open())
	add	x0, sp, 88	// tmp112,,
.LEHB4:
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEE7is_openEv		//
.LEHE4:
	and	w0, w0, 255	// _1, tmp113
// main.cpp:133:     if (!infile.is_open())
	eor	w0, w0, 1	// tmp114, _1,
	and	w0, w0, 255	// retval.11_25, tmp114
// main.cpp:133:     if (!infile.is_open())
	cmp	w0, 0	// retval.11_25,
	beq	.L38		//,
// main.cpp:135:         return;
	mov	w19, 0	// finally_tmp.13_13,
	b	.L39		//
.L38:
// main.cpp:138:     std::string line;
	add	x0, sp, 56	// tmp115,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev		//
// main.cpp:139:     while (std::getline(infile, line))
	b	.L40		//
.L41:
// main.cpp:141:         Node *new_node = list_push_back(lines, line);
	add	x0, sp, 56	// tmp116,,
	mov	x1, x0	//, tmp116
	ldr	x0, [sp, 32]	//, lines
.LEHB5:
	bl	_Z14list_push_backR10LinkedListRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE		//
// main.cpp:141:         Node *new_node = list_push_back(lines, line);
	str	x0, [sp, 616]	// _38, new_node
// main.cpp:142:         memory += new_node->line.size() * sizeof(char) + sizeof(Node);
	ldr	x0, [sp, 616]	// _2, new_node
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv		//
// main.cpp:142:         memory += new_node->line.size() * sizeof(char) + sizeof(Node);
	add	x1, x0, 40	// _41, _3,
// main.cpp:142:         memory += new_node->line.size() * sizeof(char) + sizeof(Node);
	ldr	x0, [sp, 24]	// tmp117, memory
	ldr	x0, [x0]	// _4, *memory_42(D)
	add	x1, x1, x0	// _5, _41, _4
	ldr	x0, [sp, 24]	// tmp118, memory
	str	x1, [x0]	// _5, *memory_42(D)
// main.cpp:143:         nodes++;
	ldr	x0, [sp, 16]	// tmp119, nodes
	ldr	x0, [x0]	// _6, *nodes_44(D)
// main.cpp:143:         nodes++;
	add	x1, x0, 1	// _7, _6,
	ldr	x0, [sp, 16]	// tmp120, nodes
	str	x1, [x0]	// _7, *nodes_44(D)
.L40:
// main.cpp:139:     while (std::getline(infile, line))
	add	x1, sp, 56	// tmp121,,
	add	x0, sp, 88	// tmp122,,
	bl	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE		//
// main.cpp:139:     while (std::getline(infile, line))
	ldr	x1, [x0]	// _8, _29->_vptr.basic_istream
	sub	x1, x1, #24	// _9, _8,
	ldr	x1, [x1]	// _10, MEM[(long int *)_9]
	add	x0, x0, x1	// _12, _28, _11
	bl	_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv		//
// main.cpp:139:     while (std::getline(infile, line))
	and	w0, w0, 255	// _31, tmp123
	cmp	w0, 0	// _31,
	bne	.L41		//,
// main.cpp:145:     infile.close();
	add	x0, sp, 88	// tmp124,,
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv		//
.LEHE5:
// main.cpp:146: }
	add	x0, sp, 56	// tmp125,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev		//
	mov	w19, 1	// finally_tmp.13_13,
.L39:
// main.cpp:146: }
	add	x0, sp, 88	// tmp126,,
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev		//
	cmp	w19, 1	// finally_tmp.13_13,
	b	.L48		//
.L47:
// main.cpp:146: }
	mov	x19, x0	// tmp129,
	add	x0, sp, 56	// tmp127,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev		//
	b	.L45		//
.L46:
	mov	x19, x0	// tmp128,
.L45:
	add	x0, sp, 88	// tmp132,,
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev		//
	mov	x0, x19	// D.49579, tmp128
.LEHB6:
	bl	_Unwind_Resume		//
.LEHE6:
.L48:
	ldp	x19, x30, [sp]	//,,
	add	sp, sp, 624	//,,
	.cfi_restore 19
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1673:
	.section	.gcc_except_table
.LLSDA1673:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1673-.LLSDACSB1673
.LLSDACSB1673:
	.uleb128 .LEHB3-.LFB1673
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB4-.LFB1673
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L46-.LFB1673
	.uleb128 0
	.uleb128 .LEHB5-.LFB1673
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L47-.LFB1673
	.uleb128 0
	.uleb128 .LEHB6-.LFB1673
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
.LLSDACSE1673:
	.text
	.size	_Z9open_filePKcR10LinkedListRmS3_, .-_Z9open_filePKcR10LinkedListRmS3_
	.align	2
	.global	_Z9save_filePKcRK10LinkedList
	.type	_Z9save_filePKcRK10LinkedList, %function
_Z9save_filePKcRK10LinkedList:
.LFB1675:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1675
	sub	sp, sp, #560	//,,
	.cfi_def_cfa_offset 560
	stp	x19, x30, [sp]	//,,
	.cfi_offset 19, -560
	.cfi_offset 30, -552
	str	x0, [sp, 24]	// filename, filename
	str	x1, [sp, 16]	// lines, lines
// main.cpp:152:     std::ofstream outfile(filename);
	add	x0, sp, 32	// tmp98,,
	mov	w2, 16	//,
	ldr	x1, [sp, 24]	//, filename
.LEHB7:
	bl	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode		//
.LEHE7:
// main.cpp:153:     if (!outfile.is_open())
	add	x0, sp, 32	// tmp99,,
.LEHB8:
	bl	_ZNSt14basic_ofstreamIcSt11char_traitsIcEE7is_openEv		//
	and	w0, w0, 255	// _1, tmp100
// main.cpp:153:     if (!outfile.is_open())
	eor	w0, w0, 1	// tmp101, _1,
	and	w0, w0, 255	// retval.14_16, tmp101
// main.cpp:153:     if (!outfile.is_open())
	cmp	w0, 0	// retval.14_16,
	beq	.L50		//,
// main.cpp:155:         return;
	mov	w19, 0	// finally_tmp.15_5,
	b	.L51		//
.L50:
// main.cpp:158:     Node *current = lines.head;
	ldr	x0, [sp, 16]	// tmp102, lines
	ldr	x0, [x0]	// tmp103, lines_17(D)->head
	str	x0, [sp, 552]	// tmp103, current
// main.cpp:159:     while (current)
	b	.L52		//
.L53:
// main.cpp:161:         outfile << current->line << '\n';
	ldr	x1, [sp, 552]	// _2, current
// main.cpp:161:         outfile << current->line << '\n';
	add	x0, sp, 32	// tmp104,,
	bl	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE		//
	mov	w1, 10	//,
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c		//
// main.cpp:162:         current = current->next;
	ldr	x0, [sp, 552]	// tmp105, current
	ldr	x0, [x0, 32]	// tmp106, current_4->next
	str	x0, [sp, 552]	// tmp106, current
.L52:
// main.cpp:159:     while (current)
	ldr	x0, [sp, 552]	// tmp107, current
	cmp	x0, 0	// tmp107,
	bne	.L53		//,
// main.cpp:164:     outfile.close();
	add	x0, sp, 32	// tmp108,,
	bl	_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv		//
.LEHE8:
// main.cpp:165: }
	mov	w19, 1	// finally_tmp.15_5,
.L51:
// main.cpp:165: }
	add	x0, sp, 32	// tmp109,,
	bl	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev		//
	cmp	w19, 1	// finally_tmp.15_5,
	b	.L58		//
.L57:
// main.cpp:165: }
	mov	x19, x0	// tmp111,
	add	x0, sp, 32	// tmp110,,
	bl	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev		//
	mov	x0, x19	// D.49580, tmp111
.LEHB9:
	bl	_Unwind_Resume		//
.LEHE9:
.L58:
	ldp	x19, x30, [sp]	//,,
	add	sp, sp, 560	//,,
	.cfi_restore 19
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1675:
	.section	.gcc_except_table
.LLSDA1675:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1675-.LLSDACSB1675
.LLSDACSB1675:
	.uleb128 .LEHB7-.LFB1675
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB8-.LFB1675
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L57-.LFB1675
	.uleb128 0
	.uleb128 .LEHB9-.LFB1675
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
.LLSDACSE1675:
	.text
	.size	_Z9save_filePKcRK10LinkedList, .-_Z9save_filePKcRK10LinkedList
	.section	.rodata
	.align	3
.LC2:
	.string	"%s"
	.text
	.align	2
	.global	_Z14get_user_inputB5cxx11PKc
	.type	_Z14get_user_inputB5cxx11PKc, %function
_Z14get_user_inputB5cxx11PKc:
.LFB1676:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1676
	stp	x19, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 19, -304
	.cfi_offset 30, -296
	mov	x19, x8	// <retval>,
	str	x0, [sp, 24]	// prompt, prompt
.LEHB10:
// main.cpp:171:     nocbreak();
	bl	nocbreak		//
// main.cpp:172:     echo();
	bl	echo		//
// main.cpp:173:     curs_set(TRUE);
	mov	w0, 1	//,
	bl	curs_set		//
// main.cpp:176:     mvprintw(LINES - 1, 0, "%s", prompt);
	adrp	x0, :got:LINES	// tmp98,
	ldr	x0, [x0, #:got_lo12:LINES]	// tmp97, tmp98,
	ldr	w0, [x0]	// LINES.16_1, LINES
	sub	w4, w0, #1	// _2, LINES.16_1,
	ldr	x3, [sp, 24]	//, prompt
	adrp	x0, .LC2	// tmp99,
	add	x2, x0, :lo12:.LC2	//, tmp99,
	mov	w1, 0	//,
	mov	w0, w4	//, _2
	bl	mvprintw		//
// main.cpp:177:     getstr(input);
	adrp	x0, :got:stdscr	// tmp101,
	ldr	x0, [x0, #:got_lo12:stdscr]	// tmp100, tmp101,
	ldr	x0, [x0]	// stdscr.17_3, stdscr
	add	x1, sp, 40	// tmp102,,
	mov	w2, -1	//,
	bl	wgetnstr		//
// main.cpp:179:     curs_set(FALSE);
	mov	w0, 0	//,
	bl	curs_set		//
// main.cpp:180:     noecho();
	bl	noecho		//
// main.cpp:181:     cbreak();
	bl	cbreak		//
.LEHE10:
// main.cpp:183:     return std::string(input);
	add	x0, sp, 296	// tmp103,,
	bl	_ZNSaIcEC1Ev		//
	add	x1, sp, 296	// tmp104,,
	add	x0, sp, 40	// tmp105,,
	mov	x2, x1	//, tmp104
	mov	x1, x0	//, tmp105
	mov	x0, x19	//, <retval>
.LEHB11:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_		//
.LEHE11:
	add	x0, sp, 296	// tmp106,,
	bl	_ZNSaIcED1Ev		//
	b	.L63		//
.L62:
	mov	x19, x0	// tmp109,
	add	x0, sp, 296	// tmp108,,
	bl	_ZNSaIcED1Ev		//
	mov	x0, x19	// D.49581, tmp109
.LEHB12:
	bl	_Unwind_Resume		//
.LEHE12:
.L63:
// main.cpp:184: }
	mov	x0, x19	//, <retval>
	ldp	x19, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1676:
	.section	.gcc_except_table
.LLSDA1676:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1676-.LLSDACSB1676
.LLSDACSB1676:
	.uleb128 .LEHB10-.LFB1676
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB11-.LFB1676
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L62-.LFB1676
	.uleb128 0
	.uleb128 .LEHB12-.LFB1676
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
.LLSDACSE1676:
	.text
	.size	_Z14get_user_inputB5cxx11PKc, .-_Z14get_user_inputB5cxx11PKc
	.align	2
	.global	_Z16highlight_searchmmi
	.type	_Z16highlight_searchmmi, %function
_Z16highlight_searchmmi:
.LFB1677:
	.cfi_startproc
	str	x30, [sp, -64]!	//,
	.cfi_def_cfa_offset 64
	.cfi_offset 30, -64
	str	x0, [sp, 40]	// found_pos, found_pos
	str	x1, [sp, 32]	// search_length, search_length
	str	w2, [sp, 28]	// y, y
// main.cpp:190:     attron(COLOR_PAIR(1));
	adrp	x0, :got:stdscr	// tmp111,
	ldr	x0, [x0, #:got_lo12:stdscr]	// tmp110, tmp111,
	ldr	x0, [x0]	// stdscr.25_1, stdscr
	mov	x2, 0	//,
	mov	w1, 256	//,
	bl	wattr_on		//
// main.cpp:191:     for (size_t i = 0; i < search_length; i++)
	str	xzr, [sp, 56]	//, i
// main.cpp:191:     for (size_t i = 0; i < search_length; i++)
	b	.L65		//
.L69:
// main.cpp:193:         chtype original_char = mvinch(y, found_pos + i);
	adrp	x0, :got:stdscr	// tmp113,
	ldr	x0, [x0, #:got_lo12:stdscr]	// tmp112, tmp113,
	ldr	x0, [x0]	// stdscr.27_2, stdscr
	ldr	x1, [sp, 40]	// tmp114, found_pos
	mov	w2, w1	// _3, tmp114
	ldr	x1, [sp, 56]	// tmp115, i
	add	w1, w2, w1	// _5, _3, _4
	mov	w2, w1	//, _6
	ldr	w1, [sp, 28]	//, y
	bl	wmove		//
	cmn	w0, #1	// _7,
	beq	.L66		//,
// main.cpp:193:         chtype original_char = mvinch(y, found_pos + i);
	adrp	x0, :got:stdscr	// tmp117,
	ldr	x0, [x0, #:got_lo12:stdscr]	// tmp116, tmp117,
	ldr	x0, [x0]	// stdscr.28_8, stdscr
	bl	winch		//
	b	.L67		//
.L66:
// main.cpp:193:         chtype original_char = mvinch(y, found_pos + i);
	mov	w0, -1	// _34,
.L67:
// main.cpp:193:         chtype original_char = mvinch(y, found_pos + i);
	str	w0, [sp, 52]	// _34, original_char
// main.cpp:194:         chtype new_char = (original_char & A_CHARTEXT) | (COLOR_PAIR(1));
	ldr	w0, [sp, 52]	// tmp118, original_char
	and	w0, w0, 255	// _9, tmp118,
// main.cpp:194:         chtype new_char = (original_char & A_CHARTEXT) | (COLOR_PAIR(1));
	orr	w0, w0, 256	// tmp119, _9,
	str	w0, [sp, 48]	// tmp119, new_char
// main.cpp:195:         mvaddch(y, found_pos + i, new_char);
	adrp	x0, :got:stdscr	// tmp121,
	ldr	x0, [x0, #:got_lo12:stdscr]	// tmp120, tmp121,
	ldr	x0, [x0]	// stdscr.29_10, stdscr
	ldr	x1, [sp, 40]	// tmp122, found_pos
	mov	w2, w1	// _11, tmp122
	ldr	x1, [sp, 56]	// tmp123, i
	add	w1, w2, w1	// _13, _11, _12
	mov	w2, w1	//, _14
	ldr	w1, [sp, 28]	//, y
	bl	wmove		//
	cmn	w0, #1	// _15,
	beq	.L68		//,
// main.cpp:195:         mvaddch(y, found_pos + i, new_char);
	adrp	x0, :got:stdscr	// tmp125,
	ldr	x0, [x0, #:got_lo12:stdscr]	// tmp124, tmp125,
	ldr	x0, [x0]	// stdscr.30_16, stdscr
	ldr	w1, [sp, 48]	//, new_char
	bl	waddch		//
.L68:
// main.cpp:191:     for (size_t i = 0; i < search_length; i++)
	ldr	x0, [sp, 56]	// tmp127, i
	add	x0, x0, 1	// tmp126, tmp127,
	str	x0, [sp, 56]	// tmp126, i
.L65:
// main.cpp:191:     for (size_t i = 0; i < search_length; i++)
	ldr	x1, [sp, 56]	// tmp128, i
	ldr	x0, [sp, 32]	// tmp129, search_length
	cmp	x1, x0	// tmp128, tmp129
	bcc	.L69		//,
// main.cpp:197:     attroff(COLOR_PAIR(1));
	adrp	x0, :got:stdscr	// tmp131,
	ldr	x0, [x0, #:got_lo12:stdscr]	// tmp130, tmp131,
	ldr	x0, [x0]	// stdscr.31_17, stdscr
	mov	x2, 0	//,
	mov	w1, 256	//,
	bl	wattr_off		//
// main.cpp:198: }
	nop	
	ldr	x30, [sp], 64	//,
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1677:
	.size	_Z16highlight_searchmmi, .-_Z16highlight_searchmmi
	.align	2
	.global	_Z11search_textR10LinkedListRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS9_S9_RP4Node
	.type	_Z11search_textR10LinkedListRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS9_S9_RP4Node, %function
_Z11search_textR10LinkedListRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS9_S9_RP4Node:
.LFB1678:
	.cfi_startproc
	str	x30, [sp, -112]!	//,
	.cfi_def_cfa_offset 112
	.cfi_offset 30, -112
	str	x0, [sp, 56]	// lines, lines
	str	x1, [sp, 48]	// search_str, search_str
	str	x2, [sp, 40]	// cursor_x, cursor_x
	str	x3, [sp, 32]	// cursor_y, cursor_y
	str	x4, [sp, 24]	// scroll_offset, scroll_offset
	str	x5, [sp, 16]	// current_line, current_line
// main.cpp:205:     if (search_str.empty())
	ldr	x0, [sp, 48]	//, search_str
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5emptyEv		//
	and	w0, w0, 255	// retval.32_56, tmp135
// main.cpp:205:     if (search_str.empty())
	cmp	w0, 0	// retval.32_56,
	bne	.L80		//,
// main.cpp:208:     bool first_instance = true;
	mov	w0, 1	// tmp136,
	strb	w0, [sp, 111]	// tmp136, first_instance
// main.cpp:210:     Node *line_it = lines.head;
	ldr	x0, [sp, 56]	// tmp137, lines
	ldr	x0, [x0]	// tmp138, lines_58(D)->head
	str	x0, [sp, 96]	// tmp138, line_it
// main.cpp:211:     size_t line_idx = 0;
	str	xzr, [sp, 88]	//, line_idx
// main.cpp:212:     while (line_it)
	b	.L73		//
.L79:
// main.cpp:214:         std::string &line = line_it->line;
	ldr	x0, [sp, 96]	// tmp139, line_it
	str	x0, [sp, 72]	// tmp139, line
// main.cpp:215:         size_t found_pos = 0;
	str	xzr, [sp, 80]	//, found_pos
// main.cpp:217:         while ((found_pos = line.find(search_str, found_pos)) != std::string::npos)
	b	.L74		//
.L78:
// main.cpp:219:             if (first_instance)
	ldrb	w0, [sp, 111]	// tmp140, first_instance
	cmp	w0, 0	// tmp140,
	beq	.L75		//,
// main.cpp:221:                 cursor_x = found_pos;
	ldr	x0, [sp, 80]	// tmp141, found_pos
	mov	w1, w0	// _1, tmp141
	ldr	x0, [sp, 40]	// tmp142, cursor_x
	str	w1, [x0]	// _1, *cursor_x_68(D)
// main.cpp:222:                 cursor_y = 3 - scroll_offset + line_idx;
	ldr	x0, [sp, 88]	// tmp143, line_idx
	mov	w1, w0	// _2, tmp143
// main.cpp:222:                 cursor_y = 3 - scroll_offset + line_idx;
	ldr	x0, [sp, 24]	// tmp144, scroll_offset
	ldr	w0, [x0]	// _3, *scroll_offset_70(D)
// main.cpp:222:                 cursor_y = 3 - scroll_offset + line_idx;
	sub	w0, w1, w0	// _5, _2, _4
	add	w0, w0, 3	// _6, _5,
	mov	w1, w0	// _7, _6
// main.cpp:222:                 cursor_y = 3 - scroll_offset + line_idx;
	ldr	x0, [sp, 32]	// tmp145, cursor_y
	str	w1, [x0]	// _7, *cursor_y_71(D)
// main.cpp:223:                 current_line = lines.head;
	ldr	x0, [sp, 56]	// tmp146, lines
	ldr	x1, [x0]	// _8, lines_58(D)->head
// main.cpp:223:                 current_line = lines.head;
	ldr	x0, [sp, 16]	// tmp147, current_line
	str	x1, [x0]	// _8, *current_line_73(D)
// main.cpp:224:                 current_line = list_advance(current_line, line_idx);
	ldr	x0, [sp, 16]	// tmp148, current_line
	ldr	x0, [x0]	// _9, *current_line_73(D)
	ldr	x1, [sp, 88]	// tmp149, line_idx
	bl	_Z12list_advanceP4Nodei		//
	mov	x1, x0	// _11,
// main.cpp:224:                 current_line = list_advance(current_line, line_idx);
	ldr	x0, [sp, 16]	// tmp150, current_line
	str	x1, [x0]	// _11, *current_line_73(D)
// main.cpp:226:                 if (cursor_y >= LINES - 1)
	ldr	x0, [sp, 32]	// tmp151, cursor_y
	ldr	w1, [x0]	// _12, *cursor_y_71(D)
// main.cpp:226:                 if (cursor_y >= LINES - 1)
	adrp	x0, :got:LINES	// tmp153,
	ldr	x0, [x0, #:got_lo12:LINES]	// tmp152, tmp153,
	ldr	w0, [x0]	// LINES.33_13, LINES
	sub	w0, w0, #1	// _14, LINES.33_13,
// main.cpp:226:                 if (cursor_y >= LINES - 1)
	cmp	w1, w0	// _12, _14
	blt	.L76		//,
// main.cpp:228:                     scroll_offset += cursor_y - (LINES - 2);
	ldr	x0, [sp, 24]	// tmp154, scroll_offset
	ldr	w1, [x0]	// _15, *scroll_offset_70(D)
// main.cpp:228:                     scroll_offset += cursor_y - (LINES - 2);
	ldr	x0, [sp, 32]	// tmp155, cursor_y
	ldr	w2, [x0]	// _16, *cursor_y_71(D)
// main.cpp:228:                     scroll_offset += cursor_y - (LINES - 2);
	adrp	x0, :got:LINES	// tmp157,
	ldr	x0, [x0, #:got_lo12:LINES]	// tmp156, tmp157,
	ldr	w0, [x0]	// LINES.34_17, LINES
	sub	w0, w0, #2	// _18, LINES.34_17,
// main.cpp:228:                     scroll_offset += cursor_y - (LINES - 2);
	sub	w0, w2, w0	// _19, _16, _18
// main.cpp:228:                     scroll_offset += cursor_y - (LINES - 2);
	add	w1, w1, w0	// _20, _15, _19
	ldr	x0, [sp, 24]	// tmp158, scroll_offset
	str	w1, [x0]	// _20, *scroll_offset_70(D)
// main.cpp:229:                     cursor_y = LINES - 2;
	adrp	x0, :got:LINES	// tmp160,
	ldr	x0, [x0, #:got_lo12:LINES]	// tmp159, tmp160,
	ldr	w0, [x0]	// LINES.35_21, LINES
	sub	w1, w0, #2	// _22, LINES.35_21,
// main.cpp:229:                     cursor_y = LINES - 2;
	ldr	x0, [sp, 32]	// tmp161, cursor_y
	str	w1, [x0]	// _22, *cursor_y_71(D)
.L76:
// main.cpp:232:                 first_instance = false;
	strb	wzr, [sp, 111]	//, first_instance
.L75:
// main.cpp:235:             if (3 + line_idx - scroll_offset >= 3 && 3 + line_idx - scroll_offset < LINES - 1)
	ldr	x0, [sp, 24]	// tmp162, scroll_offset
	ldr	w0, [x0]	// _23, *scroll_offset_70(D)
	sxtw	x0, w0	// _24, _23
// main.cpp:235:             if (3 + line_idx - scroll_offset >= 3 && 3 + line_idx - scroll_offset < LINES - 1)
	ldr	x1, [sp, 88]	// tmp163, line_idx
	sub	x0, x1, x0	// _25, tmp163, _24
	add	x0, x0, 3	// _26, _25,
// main.cpp:235:             if (3 + line_idx - scroll_offset >= 3 && 3 + line_idx - scroll_offset < LINES - 1)
	cmp	x0, 2	// _26,
	bls	.L77		//,
// main.cpp:235:             if (3 + line_idx - scroll_offset >= 3 && 3 + line_idx - scroll_offset < LINES - 1)
	ldr	x0, [sp, 24]	// tmp164, scroll_offset
	ldr	w0, [x0]	// _27, *scroll_offset_70(D)
	sxtw	x0, w0	// _28, _27
// main.cpp:235:             if (3 + line_idx - scroll_offset >= 3 && 3 + line_idx - scroll_offset < LINES - 1)
	ldr	x1, [sp, 88]	// tmp165, line_idx
	sub	x0, x1, x0	// _29, tmp165, _28
	add	x1, x0, 3	// _30, _29,
// main.cpp:235:             if (3 + line_idx - scroll_offset >= 3 && 3 + line_idx - scroll_offset < LINES - 1)
	adrp	x0, :got:LINES	// tmp167,
	ldr	x0, [x0, #:got_lo12:LINES]	// tmp166, tmp167,
	ldr	w0, [x0]	// LINES.36_31, LINES
	sub	w0, w0, #1	// _32, LINES.36_31,
	sxtw	x0, w0	// _33, _32
// main.cpp:235:             if (3 + line_idx - scroll_offset >= 3 && 3 + line_idx - scroll_offset < LINES - 1)
	cmp	x1, x0	// _30, _33
	bcs	.L77		//,
// main.cpp:237:                 highlight_search(found_pos, search_str.length(), 3 + line_idx - scroll_offset);
	ldr	x0, [sp, 48]	//, search_str
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv		//
	mov	x1, x0	// _34,
// main.cpp:237:                 highlight_search(found_pos, search_str.length(), 3 + line_idx - scroll_offset);
	ldr	x0, [sp, 88]	// tmp168, line_idx
	mov	w2, w0	// _35, tmp168
// main.cpp:237:                 highlight_search(found_pos, search_str.length(), 3 + line_idx - scroll_offset);
	ldr	x0, [sp, 24]	// tmp169, scroll_offset
	ldr	w0, [x0]	// _36, *scroll_offset_70(D)
// main.cpp:237:                 highlight_search(found_pos, search_str.length(), 3 + line_idx - scroll_offset);
	sub	w0, w2, w0	// _38, _35, _37
	add	w0, w0, 3	// _39, _38,
// main.cpp:237:                 highlight_search(found_pos, search_str.length(), 3 + line_idx - scroll_offset);
	mov	w2, w0	//, _40
	ldr	x0, [sp, 80]	//, found_pos
	bl	_Z16highlight_searchmmi		//
.L77:
// main.cpp:240:             found_pos += search_str.length();
	ldr	x0, [sp, 48]	//, search_str
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv		//
	mov	x1, x0	// _83,
// main.cpp:240:             found_pos += search_str.length();
	ldr	x0, [sp, 80]	// tmp171, found_pos
	add	x0, x0, x1	// tmp170, tmp171, _83
	str	x0, [sp, 80]	// tmp170, found_pos
.L74:
// main.cpp:217:         while ((found_pos = line.find(search_str, found_pos)) != std::string::npos)
	ldr	x2, [sp, 80]	//, found_pos
	ldr	x1, [sp, 48]	//, search_str
	ldr	x0, [sp, 72]	//, line
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m		//
	str	x0, [sp, 80]	//, found_pos
// main.cpp:217:         while ((found_pos = line.find(search_str, found_pos)) != std::string::npos)
	ldr	x0, [sp, 80]	// tmp173, found_pos
	cmn	x0, #1	// tmp173,
	cset	w0, ne	// tmp174,
	and	w0, w0, 255	// retval.37_65, tmp172
	cmp	w0, 0	// retval.37_65,
	bne	.L78		//,
// main.cpp:243:         ++line_idx;
	ldr	x0, [sp, 88]	// tmp176, line_idx
	add	x0, x0, 1	// tmp175, tmp176,
	str	x0, [sp, 88]	// tmp175, line_idx
// main.cpp:244:         line_it = line_it->next;
	ldr	x0, [sp, 96]	// tmp177, line_it
	ldr	x0, [x0, 32]	// tmp178, line_it_44->next
	str	x0, [sp, 96]	// tmp178, line_it
.L73:
// main.cpp:212:     while (line_it)
	ldr	x0, [sp, 96]	// tmp179, line_it
	cmp	x0, 0	// tmp179,
	bne	.L79		//,
	b	.L70		//
.L80:
// main.cpp:206:         return;
	nop	
.L70:
// main.cpp:246: }
	ldr	x30, [sp], 112	//,
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1678:
	.size	_Z11search_textR10LinkedListRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS9_S9_RP4Node, .-_Z11search_textR10LinkedListRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS9_S9_RP4Node
	.align	2
	.global	_Z12replace_textR10LinkedListRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_
	.type	_Z12replace_textR10LinkedListRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_, %function
_Z12replace_textR10LinkedListRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_:
.LFB1679:
	.cfi_startproc
	stp	x19, x30, [sp, -64]!	//,,,
	.cfi_def_cfa_offset 64
	.cfi_offset 19, -64
	.cfi_offset 30, -56
	str	x0, [sp, 40]	// lines, lines
	str	x1, [sp, 32]	// search_str, search_str
	str	x2, [sp, 24]	// replace_str, replace_str
// main.cpp:252:     if (search_str.empty())
	ldr	x0, [sp, 32]	//, search_str
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5emptyEv		//
	and	w0, w0, 255	// retval.38_10, tmp96
// main.cpp:252:     if (search_str.empty())
	cmp	w0, 0	// retval.38_10,
	bne	.L87		//,
// main.cpp:255:     Node *current = lines.head;
	ldr	x0, [sp, 40]	// tmp97, lines
	ldr	x0, [x0]	// tmp98, lines_11(D)->head
	str	x0, [sp, 56]	// tmp98, current
// main.cpp:256:     while (current)
	b	.L84		//
.L86:
// main.cpp:258:         size_t found_pos = current->line.find(search_str);
	ldr	x0, [sp, 56]	// _1, current
	mov	x2, 0	//,
	ldr	x1, [sp, 32]	//, search_str
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m		//
	str	x0, [sp, 48]	//, found_pos
// main.cpp:260:         if (found_pos != std::string::npos)
	ldr	x0, [sp, 48]	// tmp99, found_pos
	cmn	x0, #1	// tmp99,
	beq	.L85		//,
// main.cpp:262:             current->line.replace(found_pos, search_str.length(), replace_str);
	ldr	x19, [sp, 56]	// _2, current
	ldr	x0, [sp, 32]	//, search_str
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv		//
	ldr	x3, [sp, 24]	//, replace_str
	mov	x2, x0	//, _3
	ldr	x1, [sp, 48]	//, found_pos
	mov	x0, x19	//, _2
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmRKS4_		//
// main.cpp:263:             break;
	b	.L81		//
.L85:
// main.cpp:265:         current = current->next;
	ldr	x0, [sp, 56]	// tmp100, current
	ldr	x0, [x0, 32]	// tmp101, current_4->next
	str	x0, [sp, 56]	// tmp101, current
.L84:
// main.cpp:256:     while (current)
	ldr	x0, [sp, 56]	// tmp102, current
	cmp	x0, 0	// tmp102,
	bne	.L86		//,
	b	.L81		//
.L87:
// main.cpp:253:         return;
	nop	
.L81:
// main.cpp:267: }
	ldp	x19, x30, [sp], 64	//,,,
	.cfi_restore 30
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1679:
	.size	_Z12replace_textR10LinkedListRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_, .-_Z12replace_textR10LinkedListRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_
	.align	2
	.global	_Z12handle_mouseiiRiS_S_R10LinkedList
	.type	_Z12handle_mouseiiRiS_S_R10LinkedList, %function
_Z12handle_mouseiiRiS_S_R10LinkedList:
.LFB1680:
	.cfi_startproc
	str	x30, [sp, -80]!	//,
	.cfi_def_cfa_offset 80
	.cfi_offset 30, -80
	str	w0, [sp, 60]	// x, x
	str	w1, [sp, 56]	// y, y
	str	x2, [sp, 48]	// cursor_x, cursor_x
	str	x3, [sp, 40]	// cursor_y, cursor_y
	str	x4, [sp, 32]	// scroll_offset, scroll_offset
	str	x5, [sp, 24]	// lines, lines
// main.cpp:273:     if (y == 1)
	ldr	w0, [sp, 56]	// tmp97, y
	cmp	w0, 1	// tmp97,
	beq	.L92		//,
// main.cpp:278:     int max_y = std::min(LINES - 3, static_cast<int>(list_size(lines)));
	adrp	x0, :got:LINES	// tmp99,
	ldr	x0, [x0, #:got_lo12:LINES]	// tmp98, tmp99,
	ldr	w0, [x0]	// LINES.39_1, LINES
	sub	w0, w0, #3	// _2, LINES.39_1,
	str	w0, [sp, 68]	// _2, D.45771
// main.cpp:278:     int max_y = std::min(LINES - 3, static_cast<int>(list_size(lines)));
	ldr	x0, [sp, 24]	//, lines
	bl	_Z9list_sizeR10LinkedList		//
// main.cpp:278:     int max_y = std::min(LINES - 3, static_cast<int>(list_size(lines)));
	str	w0, [sp, 72]	// _4, D.45772
// main.cpp:278:     int max_y = std::min(LINES - 3, static_cast<int>(list_size(lines)));
	add	x1, sp, 72	// tmp100,,
	add	x0, sp, 68	// tmp101,,
	bl	_ZSt3minIiERKT_S2_S2_		//
// main.cpp:278:     int max_y = std::min(LINES - 3, static_cast<int>(list_size(lines)));
	ldr	w0, [x0]	// tmp102, *_5
	str	w0, [sp, 76]	// tmp102, max_y
// main.cpp:279:     if (y >= 3 && y <= max_y)
	ldr	w0, [sp, 56]	// tmp103, y
	cmp	w0, 2	// tmp103,
	ble	.L91		//,
// main.cpp:279:     if (y >= 3 && y <= max_y)
	ldr	w1, [sp, 56]	// tmp104, y
	ldr	w0, [sp, 76]	// tmp105, max_y
	cmp	w1, w0	// tmp104, tmp105
	bgt	.L91		//,
// main.cpp:281:         cursor_x = x;
	ldr	x0, [sp, 48]	// tmp106, cursor_x
	ldr	w1, [sp, 60]	// tmp107, x
	str	w1, [x0]	// tmp107, *cursor_x_17(D)
// main.cpp:282:         cursor_y = y;
	ldr	x0, [sp, 40]	// tmp108, cursor_y
	ldr	w1, [sp, 56]	// tmp109, y
	str	w1, [x0]	// tmp109, *cursor_y_20(D)
	b	.L88		//
.L91:
// main.cpp:284:     else if (y > max_y)
	ldr	w1, [sp, 56]	// tmp110, y
	ldr	w0, [sp, 76]	// tmp111, max_y
	cmp	w1, w0	// tmp110, tmp111
	ble	.L88		//,
// main.cpp:286:         cursor_x = x;
	ldr	x0, [sp, 48]	// tmp112, cursor_x
	ldr	w1, [sp, 60]	// tmp113, x
	str	w1, [x0]	// tmp113, *cursor_x_17(D)
// main.cpp:287:         cursor_y = max_y;
	ldr	x0, [sp, 40]	// tmp114, cursor_y
	ldr	w1, [sp, 76]	// tmp115, max_y
	str	w1, [x0]	// tmp115, *cursor_y_20(D)
	b	.L88		//
.L92:
// main.cpp:275:         return;
	nop	
.L88:
// main.cpp:289: }
	ldr	x30, [sp], 80	//,
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1680:
	.size	_Z12handle_mouseiiRiS_S_R10LinkedList, .-_Z12handle_mouseiiRiS_S_R10LinkedList
	.section	.rodata
	.align	3
.LC3:
	.string	""
	.align	3
.LC4:
	.string	"Macro"
	.align	3
.LC5:
	.string	"Search: "
	.align	3
.LC6:
	.string	"Search for: "
	.align	3
.LC7:
	.string	"Replace with: "
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1681:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1681
	stp	x19, x30, [sp, -416]!	//,,,
	.cfi_def_cfa_offset 416
	.cfi_offset 19, -416
	.cfi_offset 30, -408
	str	w0, [sp, 28]	// argc, argc
	str	x1, [sp, 16]	// argv, argv
.LEHB13:
// main.cpp:295:     initscr();
	bl	initscr		//
// main.cpp:296:     raw();
	bl	raw		//
// main.cpp:297:     keypad(stdscr, TRUE);
	adrp	x0, :got:stdscr	// tmp275,
	ldr	x0, [x0, #:got_lo12:stdscr]	// tmp274, tmp275,
	ldr	x0, [x0]	// stdscr.40_1, stdscr
	mov	w1, 1	//,
	bl	keypad		//
// main.cpp:298:     noecho();
	bl	noecho		//
.LEHE13:
// main.cpp:300:     size_t memory = 0;
	str	xzr, [sp, 240]	//, memory
// main.cpp:301:     size_t nodes = 0;
	str	xzr, [sp, 232]	//, nodes
// main.cpp:304:     int cursor_x = 0;
	str	wzr, [sp, 228]	//, cursor_x
// main.cpp:305:     int cursor_y = 3;
	mov	w0, 3	// tmp276,
	str	w0, [sp, 224]	// tmp276, cursor_y
// main.cpp:307:     int scroll_offset = 0;
	str	wzr, [sp, 220]	//, scroll_offset
// main.cpp:309:     LinkedList lines;
	add	x0, sp, 208	// tmp277,,
	bl	_ZN10LinkedListC1Ev		//
// main.cpp:310:     std::string filename;
	add	x0, sp, 176	// tmp278,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev		//
// main.cpp:312:     if (argc > 1)
	ldr	w0, [sp, 28]	// tmp279, argc
	cmp	w0, 1	// tmp279,
	ble	.L94		//,
// main.cpp:314:         filename = argv[1];
	ldr	x0, [sp, 16]	// tmp280, argv
	add	x0, x0, 8	// _2, tmp280,
	ldr	x1, [x0]	// _3, *_2
	add	x0, sp, 176	// tmp281,,
.LEHB14:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc		//
// main.cpp:315:         open_file(filename.c_str(), lines, memory, nodes);
	add	x0, sp, 176	// tmp282,,
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv		//
	mov	x4, x0	// _4,
	add	x2, sp, 232	// tmp283,,
	add	x1, sp, 240	// tmp284,,
	add	x0, sp, 208	// tmp285,,
	mov	x3, x2	//, tmp283
	mov	x2, x1	//, tmp284
	mov	x1, x0	//, tmp285
	mov	x0, x4	//, _4
	bl	_Z9open_filePKcR10LinkedListRmS3_		//
.LEHE14:
.L94:
// main.cpp:318:     if (!lines.head)
	ldr	x0, [sp, 208]	// _5, lines.head
// main.cpp:318:     if (!lines.head)
	cmp	x0, 0	// _5,
	bne	.L95		//,
// main.cpp:320:         list_push_back(lines, "");
	add	x0, sp, 280	// tmp286,,
	bl	_ZNSaIcEC1Ev		//
	add	x0, sp, 280	// tmp287,,
	add	x3, sp, 248	// tmp288,,
	mov	x2, x0	//, tmp287
	adrp	x0, .LC3	// tmp289,
	add	x1, x0, :lo12:.LC3	//, tmp289,
	mov	x0, x3	//, tmp288
.LEHB15:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_		//
.LEHE15:
// main.cpp:320:         list_push_back(lines, "");
	add	x1, sp, 248	// tmp290,,
	add	x0, sp, 208	// tmp291,,
.LEHB16:
	bl	_Z14list_push_backR10LinkedListRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE		//
.LEHE16:
// main.cpp:320:         list_push_back(lines, "");
	add	x0, sp, 248	// tmp292,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev		//
	add	x0, sp, 280	// tmp293,,
	bl	_ZNSaIcED1Ev		//
// main.cpp:321:         nodes++;
	ldr	x0, [sp, 232]	// nodes.41_6, nodes
	add	x0, x0, 1	// _7, nodes.41_6,
	str	x0, [sp, 232]	// _7, nodes
.L95:
// main.cpp:324:     Node *current_line = lines.head;
	ldr	x0, [sp, 208]	// _8, lines.head
// main.cpp:324:     Node *current_line = lines.head;
	str	x0, [sp, 168]	// _8, current_line
// main.cpp:325:     std::string search_str;
	add	x0, sp, 136	// tmp294,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev		//
// main.cpp:326:     std::string replace_str;
	add	x0, sp, 104	// tmp295,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev		//
.LEHB17:
// main.cpp:328:     if (has_colors())
	bl	has_colors		//
	and	w0, w0, 255	// _234, tmp296
// main.cpp:328:     if (has_colors())
	cmp	w0, 0	// _234,
	beq	.L96		//,
// main.cpp:330:         start_color();
	bl	start_color		//
// main.cpp:331:         init_pair(1, COLOR_YELLOW, COLOR_BLACK);
	mov	w2, 0	//,
	mov	w1, 3	//,
	mov	w0, 1	//,
	bl	init_pair		//
.L96:
// main.cpp:334:     init_pair(1, COLOR_WHITE, COLOR_BLUE);
	mov	w2, 4	//,
	mov	w1, 7	//,
	mov	w0, 1	//,
	bl	init_pair		//
// main.cpp:335:     mousemask(ALL_MOUSE_EVENTS | REPORT_MOUSE_POSITION, NULL);
	mov	x1, 0	//,
	mov	w0, 536870911	//,
	bl	mousemask		//
.L130:
// main.cpp:339:         clear();
	bl	clear		//
// main.cpp:341:         attron(A_REVERSE);
	adrp	x0, :got:stdscr	// tmp298,
	ldr	x0, [x0, #:got_lo12:stdscr]	// tmp297, tmp298,
	ldr	x0, [x0]	// stdscr.43_9, stdscr
	mov	x2, 0	//,
	mov	w1, 262144	//,
	bl	wattr_on		//
// main.cpp:342:         mvprintw(0, 0, "Macro");
	adrp	x0, .LC4	// tmp299,
	add	x2, x0, :lo12:.LC4	//, tmp299,
	mov	w1, 0	//,
	mov	w0, 0	//,
	bl	mvprintw		//
// main.cpp:343:         attroff(A_REVERSE);
	adrp	x0, :got:stdscr	// tmp301,
	ldr	x0, [x0, #:got_lo12:stdscr]	// tmp300, tmp301,
	ldr	x0, [x0]	// stdscr.44_10, stdscr
	mov	x2, 0	//,
	mov	w1, 262144	//,
	bl	wattr_off		//
// main.cpp:345:         display_memory_info(memory, nodes);
	ldr	x0, [sp, 240]	// memory.45_11, memory
	ldr	x1, [sp, 232]	// nodes.46_12, nodes
	bl	_Z19display_memory_infomm		//
// main.cpp:347:         int y = 3;
	mov	w0, 3	// tmp302,
	str	w0, [sp, 412]	// tmp302, y
// main.cpp:348:         Node *current = lines.head;
	ldr	x0, [sp, 208]	// tmp303, lines.head
	str	x0, [sp, 400]	// tmp303, current
// main.cpp:349:         int line_count = 0;
	str	wzr, [sp, 396]	//, line_count
// main.cpp:350:         while (current)
	b	.L97		//
.L99:
// main.cpp:352:             if (line_count >= scroll_offset && y < LINES - 1)
	ldr	w0, [sp, 220]	// scroll_offset.47_13, scroll_offset
// main.cpp:352:             if (line_count >= scroll_offset && y < LINES - 1)
	ldr	w1, [sp, 396]	// tmp304, line_count
	cmp	w1, w0	// tmp304, scroll_offset.47_13
	blt	.L98		//,
// main.cpp:352:             if (line_count >= scroll_offset && y < LINES - 1)
	adrp	x0, :got:LINES	// tmp306,
	ldr	x0, [x0, #:got_lo12:LINES]	// tmp305, tmp306,
	ldr	w0, [x0]	// LINES.48_14, LINES
	sub	w0, w0, #1	// _15, LINES.48_14,
// main.cpp:352:             if (line_count >= scroll_offset && y < LINES - 1)
	ldr	w1, [sp, 412]	// tmp307, y
	cmp	w1, w0	// tmp307, _15
	bge	.L98		//,
// main.cpp:354:                 mvprintw(y++, 0, "%s", current->line.c_str());
	ldr	w19, [sp, 412]	// y.49_16, y
	add	w0, w19, 1	// tmp308, y.49_16,
	str	w0, [sp, 412]	// tmp308, y
	ldr	x0, [sp, 400]	// _17, current
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv		//
	mov	x3, x0	//, _18
	adrp	x0, .LC2	// tmp309,
	add	x2, x0, :lo12:.LC2	//, tmp309,
	mov	w1, 0	//,
	mov	w0, w19	//, y.49_16
	bl	mvprintw		//
.L98:
// main.cpp:356:             line_count++;
	ldr	w0, [sp, 396]	// tmp311, line_count
	add	w0, w0, 1	// tmp310, tmp311,
	str	w0, [sp, 396]	// tmp310, line_count
// main.cpp:357:             current = current->next;
	ldr	x0, [sp, 400]	// tmp312, current
	ldr	x0, [x0, 32]	// tmp313, current_176->next
	str	x0, [sp, 400]	// tmp313, current
.L97:
// main.cpp:350:         while (current)
	ldr	x0, [sp, 400]	// tmp314, current
	cmp	x0, 0	// tmp314,
	bne	.L99		//,
// main.cpp:360:         search_text(lines, search_str, cursor_x, cursor_y, scroll_offset, current_line);
	add	x5, sp, 168	// tmp315,,
	add	x4, sp, 220	// tmp316,,
	add	x3, sp, 224	// tmp317,,
	add	x2, sp, 228	// tmp318,,
	add	x1, sp, 136	// tmp319,,
	add	x0, sp, 208	// tmp320,,
	bl	_Z11search_textR10LinkedListRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS9_S9_RP4Node		//
// main.cpp:361:         move(cursor_y, cursor_x);
	ldr	w0, [sp, 224]	// cursor_y.50_19, cursor_y
	ldr	w1, [sp, 228]	// cursor_x.51_20, cursor_x
	bl	move		//
// main.cpp:363:         attron(A_BOLD | A_REVERSE);
	adrp	x0, :got:stdscr	// tmp322,
	ldr	x0, [x0, #:got_lo12:stdscr]	// tmp321, tmp322,
	ldr	x0, [x0]	// stdscr.52_21, stdscr
	mov	x2, 0	//,
	mov	w1, 2359296	//,
	bl	wattr_on		//
// main.cpp:364:         mvprintw(LINES - 1, 0, CONTROLS);
	adrp	x0, :got:LINES	// tmp324,
	ldr	x0, [x0, #:got_lo12:LINES]	// tmp323, tmp324,
	ldr	w0, [x0]	// LINES.53_22, LINES
	sub	w3, w0, #1	// _23, LINES.53_22,
	adrp	x0, CONTROLS	// tmp326,
	add	x0, x0, :lo12:CONTROLS	// tmp325, tmp326,
	ldr	x0, [x0]	// CONTROLS.54_24, CONTROLS
	mov	x2, x0	//, CONTROLS.54_24
	mov	w1, 0	//,
	mov	w0, w3	//, _23
	bl	mvprintw		//
// main.cpp:365:         attroff(A_BOLD | A_REVERSE);
	adrp	x0, :got:stdscr	// tmp328,
	ldr	x0, [x0, #:got_lo12:stdscr]	// tmp327, tmp328,
	ldr	x0, [x0]	// stdscr.55_25, stdscr
	mov	x2, 0	//,
	mov	w1, 2359296	//,
	bl	wattr_off		//
// main.cpp:366:         move(cursor_y, cursor_x);
	ldr	w0, [sp, 224]	// cursor_y.56_26, cursor_y
	ldr	w1, [sp, 228]	// cursor_x.57_27, cursor_x
	bl	move		//
// main.cpp:368:         ch = getch();
	adrp	x0, :got:stdscr	// tmp330,
	ldr	x0, [x0, #:got_lo12:stdscr]	// tmp329, tmp330,
	ldr	x0, [x0]	// stdscr.58_28, stdscr
	bl	wgetch		//
	str	w0, [sp, 392]	// _255, ch
// main.cpp:370:         switch (ch)
	ldr	w0, [sp, 392]	// tmp331, ch
	cmp	w0, 409	// tmp331,
	beq	.L100		//,
	ldr	w0, [sp, 392]	// tmp332, ch
	cmp	w0, 409	// tmp332,
	bgt	.L101		//,
	ldr	w0, [sp, 392]	// tmp333, ch
	cmp	w0, 343	// tmp333,
	beq	.L102		//,
	ldr	w0, [sp, 392]	// tmp334, ch
	cmp	w0, 343	// tmp334,
	bgt	.L101		//,
	ldr	w0, [sp, 392]	// tmp335, ch
	cmp	w0, 330	// tmp335,
	beq	.L103		//,
	ldr	w0, [sp, 392]	// tmp336, ch
	cmp	w0, 330	// tmp336,
	bgt	.L101		//,
	ldr	w0, [sp, 392]	// tmp337, ch
	cmp	w0, 263	// tmp337,
	beq	.L104		//,
	ldr	w0, [sp, 392]	// tmp338, ch
	cmp	w0, 263	// tmp338,
	bgt	.L101		//,
	ldr	w0, [sp, 392]	// tmp339, ch
	cmp	w0, 261	// tmp339,
	beq	.L105		//,
	ldr	w0, [sp, 392]	// tmp340, ch
	cmp	w0, 261	// tmp340,
	bgt	.L101		//,
	ldr	w0, [sp, 392]	// tmp341, ch
	cmp	w0, 260	// tmp341,
	beq	.L106		//,
	ldr	w0, [sp, 392]	// tmp342, ch
	cmp	w0, 260	// tmp342,
	bgt	.L101		//,
	ldr	w0, [sp, 392]	// tmp343, ch
	cmp	w0, 259	// tmp343,
	beq	.L107		//,
	ldr	w0, [sp, 392]	// tmp344, ch
	cmp	w0, 259	// tmp344,
	bgt	.L101		//,
	ldr	w0, [sp, 392]	// tmp345, ch
	cmp	w0, 258	// tmp345,
	beq	.L108		//,
	ldr	w0, [sp, 392]	// tmp346, ch
	cmp	w0, 258	// tmp346,
	bgt	.L101		//,
	ldr	w0, [sp, 392]	// tmp347, ch
	cmp	w0, 127	// tmp347,
	beq	.L104		//,
	ldr	w0, [sp, 392]	// tmp348, ch
	cmp	w0, 127	// tmp348,
	bgt	.L101		//,
	ldr	w0, [sp, 392]	// tmp349, ch
	cmp	w0, 24	// tmp349,
	beq	.L109		//,
	ldr	w0, [sp, 392]	// tmp350, ch
	cmp	w0, 24	// tmp350,
	bgt	.L101		//,
	ldr	w0, [sp, 392]	// tmp351, ch
	cmp	w0, 23	// tmp351,
	beq	.L110		//,
	ldr	w0, [sp, 392]	// tmp352, ch
	cmp	w0, 23	// tmp352,
	bgt	.L101		//,
	ldr	w0, [sp, 392]	// tmp353, ch
	cmp	w0, 20	// tmp353,
	beq	.L111		//,
	ldr	w0, [sp, 392]	// tmp354, ch
	cmp	w0, 20	// tmp354,
	bgt	.L101		//,
	ldr	w0, [sp, 392]	// tmp355, ch
	cmp	w0, 10	// tmp355,
	beq	.L102		//,
	ldr	w0, [sp, 392]	// tmp356, ch
	cmp	w0, 15	// tmp356,
	beq	.L112		//,
	b	.L101		//
.L100:
// main.cpp:374:             if (getmouse(&event) == OK)
	add	x0, sp, 80	// tmp357,,
	bl	getmouse		//
// main.cpp:374:             if (getmouse(&event) == OK)
	cmp	w0, 0	// _29,
	cset	w0, eq	// tmp359,
	and	w0, w0, 255	// retval.59_259, tmp358
// main.cpp:374:             if (getmouse(&event) == OK)
	cmp	w0, 0	// retval.59_259,
	beq	.L142		//,
// main.cpp:376:                 handle_mouse(event.x, event.y, cursor_x, cursor_y, scroll_offset, lines);
	ldr	w0, [sp, 84]	// _30, event.x
	ldr	w1, [sp, 88]	// _31, event.y
	add	x5, sp, 208	// tmp360,,
	add	x4, sp, 220	// tmp361,,
	add	x3, sp, 224	// tmp362,,
	add	x2, sp, 228	// tmp363,,
	bl	_Z12handle_mouseiiRiS_S_R10LinkedList		//
// main.cpp:377:                 move(cursor_y, cursor_x);
	ldr	w0, [sp, 224]	// cursor_y.60_32, cursor_y
	ldr	w1, [sp, 228]	// cursor_x.61_33, cursor_x
	bl	move		//
// main.cpp:379:             break;
	b	.L142		//
.L110:
// main.cpp:381:             attron(A_BOLD | A_REVERSE);
	adrp	x0, :got:stdscr	// tmp365,
	ldr	x0, [x0, #:got_lo12:stdscr]	// tmp364, tmp365,
	ldr	x0, [x0]	// stdscr.62_34, stdscr
	mov	x2, 0	//,
	mov	w1, 2359296	//,
	bl	wattr_on		//
// main.cpp:382:             search_str = get_user_input("Search: ");
	add	x0, sp, 288	// tmp366,,
	mov	x8, x0	//, tmp366
	adrp	x0, .LC5	// tmp367,
	add	x0, x0, :lo12:.LC5	//, tmp367,
	bl	_Z14get_user_inputB5cxx11PKc		//
// main.cpp:382:             search_str = get_user_input("Search: ");
	add	x1, sp, 288	// tmp368,,
	add	x0, sp, 136	// tmp369,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_		//
// main.cpp:382:             search_str = get_user_input("Search: ");
	add	x0, sp, 288	// tmp370,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev		//
// main.cpp:383:             attroff(A_BOLD | A_REVERSE);
	adrp	x0, :got:stdscr	// tmp372,
	ldr	x0, [x0, #:got_lo12:stdscr]	// tmp371, tmp372,
	ldr	x0, [x0]	// stdscr.63_35, stdscr
	mov	x2, 0	//,
	mov	w1, 2359296	//,
	bl	wattr_off		//
// main.cpp:384:             search_text(lines, search_str, cursor_x, cursor_y, scroll_offset, current_line);
	add	x5, sp, 168	// tmp373,,
	add	x4, sp, 220	// tmp374,,
	add	x3, sp, 224	// tmp375,,
	add	x2, sp, 228	// tmp376,,
	add	x1, sp, 136	// tmp377,,
	add	x0, sp, 208	// tmp378,,
	bl	_Z11search_textR10LinkedListRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS9_S9_RP4Node		//
// main.cpp:385:             move(cursor_y, cursor_x);
	ldr	w0, [sp, 224]	// cursor_y.64_36, cursor_y
	ldr	w1, [sp, 228]	// cursor_x.65_37, cursor_x
	bl	move		//
// main.cpp:386:             refresh();
	bl	refresh		//
// main.cpp:387:             break;
	b	.L114		//
.L111:
// main.cpp:389:             attron(A_BOLD | A_REVERSE);
	adrp	x0, :got:stdscr	// tmp380,
	ldr	x0, [x0, #:got_lo12:stdscr]	// tmp379, tmp380,
	ldr	x0, [x0]	// stdscr.66_38, stdscr
	mov	x2, 0	//,
	mov	w1, 2359296	//,
	bl	wattr_on		//
// main.cpp:390:             search_str = get_user_input("Search for: ");
	add	x0, sp, 320	// tmp381,,
	mov	x8, x0	//, tmp381
	adrp	x0, .LC6	// tmp382,
	add	x0, x0, :lo12:.LC6	//, tmp382,
	bl	_Z14get_user_inputB5cxx11PKc		//
// main.cpp:390:             search_str = get_user_input("Search for: ");
	add	x1, sp, 320	// tmp383,,
	add	x0, sp, 136	// tmp384,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_		//
// main.cpp:390:             search_str = get_user_input("Search for: ");
	add	x0, sp, 320	// tmp385,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev		//
// main.cpp:391:             replace_str = get_user_input("Replace with: ");
	add	x0, sp, 352	// tmp386,,
	mov	x8, x0	//, tmp386
	adrp	x0, .LC7	// tmp387,
	add	x0, x0, :lo12:.LC7	//, tmp387,
	bl	_Z14get_user_inputB5cxx11PKc		//
// main.cpp:391:             replace_str = get_user_input("Replace with: ");
	add	x1, sp, 352	// tmp388,,
	add	x0, sp, 104	// tmp389,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_		//
// main.cpp:391:             replace_str = get_user_input("Replace with: ");
	add	x0, sp, 352	// tmp390,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev		//
// main.cpp:392:             attroff(A_BOLD | A_REVERSE);
	adrp	x0, :got:stdscr	// tmp392,
	ldr	x0, [x0, #:got_lo12:stdscr]	// tmp391, tmp392,
	ldr	x0, [x0]	// stdscr.67_39, stdscr
	mov	x2, 0	//,
	mov	w1, 2359296	//,
	bl	wattr_off		//
// main.cpp:393:             replace_text(lines, search_str, replace_str);
	add	x2, sp, 104	// tmp393,,
	add	x1, sp, 136	// tmp394,,
	add	x0, sp, 208	// tmp395,,
	bl	_Z12replace_textR10LinkedListRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_		//
// main.cpp:394:             refresh();
	bl	refresh		//
// main.cpp:395:             break;
	b	.L114		//
.L109:
// main.cpp:397:             list_clear(lines);
	add	x0, sp, 208	// tmp396,,
	bl	_Z10list_clearR10LinkedList		//
// main.cpp:398:             endwin();
	bl	endwin		//
// main.cpp:399:             return 0;
	mov	w19, 0	// _302,
// main.cpp:512: }
	add	x0, sp, 104	// tmp397,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev		//
	add	x0, sp, 136	// tmp398,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev		//
	add	x0, sp, 176	// tmp399,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev		//
	mov	w0, w19	// <retval>, _302
	b	.L141		//
.L112:
// main.cpp:401:             save_file(filename.c_str(), lines);
	add	x0, sp, 176	// tmp400,,
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv		//
	mov	x2, x0	// _40,
	add	x0, sp, 208	// tmp401,,
	mov	x1, x0	//, tmp401
	mov	x0, x2	//, _40
	bl	_Z9save_filePKcRK10LinkedList		//
// main.cpp:402:             break;
	b	.L114		//
.L103:
// main.cpp:404:             if (cursor_x < static_cast<int>(current_line->line.size()))
	ldr	x0, [sp, 168]	// current_line.69_41, current_line
// main.cpp:404:             if (cursor_x < static_cast<int>(current_line->line.size()))
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv		//
// main.cpp:404:             if (cursor_x < static_cast<int>(current_line->line.size()))
	mov	w1, w0	// _44, _43
	ldr	w0, [sp, 228]	// cursor_x.70_45, cursor_x
	cmp	w1, w0	// _44, cursor_x.70_45
	cset	w0, gt	// tmp403,
	and	w0, w0, 255	// retval.68_263, tmp402
// main.cpp:404:             if (cursor_x < static_cast<int>(current_line->line.size()))
	cmp	w0, 0	// retval.68_263,
	beq	.L116		//,
// main.cpp:406:                 current_line->line.erase(cursor_x, 1);
	ldr	x0, [sp, 168]	// current_line.71_46, current_line
// main.cpp:406:                 current_line->line.erase(cursor_x, 1);
	mov	x3, x0	// _47, current_line.71_46
	ldr	w0, [sp, 228]	// cursor_x.72_48, cursor_x
	sxtw	x0, w0	// _49, cursor_x.72_48
	mov	x2, 1	//,
	mov	x1, x0	//, _49
	mov	x0, x3	//, _47
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm		//
// main.cpp:414:             break;
	b	.L143		//
.L116:
// main.cpp:408:             else if (current_line->next)
	ldr	x0, [sp, 168]	// current_line.73_50, current_line
	ldr	x0, [x0, 32]	// _51, current_line.73_50->next
// main.cpp:408:             else if (current_line->next)
	cmp	x0, 0	// _51,
	beq	.L143		//,
// main.cpp:410:                 current_line->line.append(current_line->next->line);
	ldr	x0, [sp, 168]	// current_line.74_52, current_line
// main.cpp:410:                 current_line->line.append(current_line->next->line);
	mov	x2, x0	// _53, current_line.74_52
// main.cpp:410:                 current_line->line.append(current_line->next->line);
	ldr	x0, [sp, 168]	// current_line.75_54, current_line
	ldr	x0, [x0, 32]	// _55, current_line.75_54->next
// main.cpp:410:                 current_line->line.append(current_line->next->line);
	mov	x1, x0	//, _56
	mov	x0, x2	//, _53
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_		//
// main.cpp:411:                 list_erase_next(current_line);
	add	x0, sp, 168	// tmp404,,
	bl	_Z15list_erase_nextRP4Node		//
// main.cpp:412:                 nodes--;
	ldr	x0, [sp, 232]	// nodes.76_57, nodes
	sub	x0, x0, #1	// _58, nodes.76_57,
	str	x0, [sp, 232]	// _58, nodes
// main.cpp:414:             break;
	b	.L143		//
.L104:
// main.cpp:417:             if (cursor_x == 0 && cursor_y > 3)
	ldr	w0, [sp, 228]	// cursor_x.77_59, cursor_x
// main.cpp:417:             if (cursor_x == 0 && cursor_y > 3)
	cmp	w0, 0	// cursor_x.77_59,
	bne	.L118		//,
// main.cpp:417:             if (cursor_x == 0 && cursor_y > 3)
	ldr	w0, [sp, 224]	// cursor_y.78_60, cursor_y
// main.cpp:417:             if (cursor_x == 0 && cursor_y > 3)
	cmp	w0, 3	// cursor_y.78_60,
	ble	.L118		//,
// main.cpp:419:                 Node *prev = list_advance(lines.head, cursor_y - 4 + scroll_offset);
	ldr	x2, [sp, 208]	// _61, lines.head
// main.cpp:419:                 Node *prev = list_advance(lines.head, cursor_y - 4 + scroll_offset);
	ldr	w0, [sp, 224]	// cursor_y.79_62, cursor_y
	sub	w1, w0, #4	// _63, cursor_y.79_62,
// main.cpp:419:                 Node *prev = list_advance(lines.head, cursor_y - 4 + scroll_offset);
	ldr	w0, [sp, 220]	// scroll_offset.80_64, scroll_offset
	add	w0, w1, w0	// _65, _63, scroll_offset.80_64
	mov	w1, w0	//, _65
	mov	x0, x2	//, _61
	bl	_Z12list_advanceP4Nodei		//
// main.cpp:419:                 Node *prev = list_advance(lines.head, cursor_y - 4 + scroll_offset);
	str	x0, [sp, 72]	// _66, prev
// main.cpp:420:                 prev->line.append(current_line->line);
	ldr	x0, [sp, 72]	// prev.81_67, prev
// main.cpp:420:                 prev->line.append(current_line->line);
	mov	x2, x0	// _68, prev.81_67
// main.cpp:420:                 prev->line.append(current_line->line);
	ldr	x0, [sp, 168]	// current_line.82_69, current_line
// main.cpp:420:                 prev->line.append(current_line->line);
	mov	x1, x0	//, _70
	mov	x0, x2	//, _68
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_		//
// main.cpp:421:                 list_erase_next(prev);
	add	x0, sp, 72	// tmp405,,
	bl	_Z15list_erase_nextRP4Node		//
// main.cpp:422:                 nodes--;
	ldr	x0, [sp, 232]	// nodes.83_71, nodes
	sub	x0, x0, #1	// _72, nodes.83_71,
	str	x0, [sp, 232]	// _72, nodes
// main.cpp:423:                 cursor_x = prev->line.length();
	ldr	x0, [sp, 72]	// prev.84_73, prev
// main.cpp:423:                 cursor_x = prev->line.length();
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv		//
// main.cpp:423:                 cursor_x = prev->line.length();
	str	w0, [sp, 228]	// _76, cursor_x
// main.cpp:424:                 cursor_y--;
	ldr	w0, [sp, 224]	// cursor_y.85_77, cursor_y
	sub	w0, w0, #1	// _78, cursor_y.85_77,
	str	w0, [sp, 224]	// _78, cursor_y
// main.cpp:425:             }
	nop	
// main.cpp:431:             break;
	b	.L144		//
.L118:
// main.cpp:426:             else if (cursor_x > 0)
	ldr	w0, [sp, 228]	// cursor_x.86_79, cursor_x
// main.cpp:426:             else if (cursor_x > 0)
	cmp	w0, 0	// cursor_x.86_79,
	ble	.L144		//,
// main.cpp:428:                 current_line->line.erase(cursor_x - 1, 1);
	ldr	x0, [sp, 168]	// current_line.87_80, current_line
// main.cpp:428:                 current_line->line.erase(cursor_x - 1, 1);
	mov	x3, x0	// _81, current_line.87_80
// main.cpp:428:                 current_line->line.erase(cursor_x - 1, 1);
	ldr	w0, [sp, 228]	// cursor_x.88_82, cursor_x
	sub	w0, w0, #1	// _83, cursor_x.88_82,
// main.cpp:428:                 current_line->line.erase(cursor_x - 1, 1);
	sxtw	x0, w0	// _84, _83
	mov	x2, 1	//,
	mov	x1, x0	//, _84
	mov	x0, x3	//, _81
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm		//
// main.cpp:429:                 cursor_x--;
	ldr	w0, [sp, 228]	// cursor_x.89_85, cursor_x
	sub	w0, w0, #1	// _86, cursor_x.89_85,
	str	w0, [sp, 228]	// _86, cursor_x
// main.cpp:431:             break;
	b	.L144		//
.L102:
// main.cpp:435:             memory += sizeof(Node);
	ldr	x0, [sp, 240]	// memory.90_87, memory
	add	x0, x0, 40	// _88, memory.90_87,
	str	x0, [sp, 240]	// _88, memory
// main.cpp:436:             nodes++;
	ldr	x0, [sp, 232]	// nodes.91_89, nodes
	add	x0, x0, 1	// _90, nodes.91_89,
	str	x0, [sp, 232]	// _90, nodes
// main.cpp:437:             std::string new_line = current_line->line.substr(cursor_x);
	ldr	x0, [sp, 168]	// current_line.92_91, current_line
// main.cpp:437:             std::string new_line = current_line->line.substr(cursor_x);
	mov	x3, x0	// _92, current_line.92_91
	ldr	w0, [sp, 228]	// cursor_x.93_93, cursor_x
	sxtw	x0, w0	// _94, cursor_x.93_93
	add	x1, sp, 40	// tmp406,,
	mov	x8, x1	//, tmp406
	mov	x2, -1	//,
	mov	x1, x0	//, _94
	mov	x0, x3	//, _92
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm		//
.LEHE17:
// main.cpp:438:             current_line->line.erase(cursor_x);
	ldr	x0, [sp, 168]	// current_line.94_95, current_line
// main.cpp:438:             current_line->line.erase(cursor_x);
	mov	x3, x0	// _96, current_line.94_95
	ldr	w0, [sp, 228]	// cursor_x.95_97, cursor_x
	sxtw	x0, w0	// _98, cursor_x.95_97
	mov	x2, -1	//,
	mov	x1, x0	//, _98
	mov	x0, x3	//, _96
.LEHB18:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm		//
// main.cpp:439:             Node *new_node = make_node(new_line);
	add	x0, sp, 40	// tmp407,,
	bl	_Z9make_nodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE		//
.LEHE18:
	str	x0, [sp, 384]	// _345, new_node
// main.cpp:440:             new_node->next = current_line->next;
	ldr	x0, [sp, 168]	// current_line.96_99, current_line
	ldr	x1, [x0, 32]	// _100, current_line.96_99->next
// main.cpp:440:             new_node->next = current_line->next;
	ldr	x0, [sp, 384]	// tmp408, new_node
	str	x1, [x0, 32]	// _100, new_node_346->next
// main.cpp:441:             current_line->next = new_node;
	ldr	x0, [sp, 168]	// current_line.97_101, current_line
// main.cpp:441:             current_line->next = new_node;
	ldr	x1, [sp, 384]	// tmp409, new_node
	str	x1, [x0, 32]	// tmp409, current_line.97_101->next
// main.cpp:443:             cursor_x = 0;
	str	wzr, [sp, 228]	//, cursor_x
// main.cpp:444:             cursor_y++;
	ldr	w0, [sp, 224]	// cursor_y.98_102, cursor_y
	add	w0, w0, 1	// _103, cursor_y.98_102,
	str	w0, [sp, 224]	// _103, cursor_y
// main.cpp:445:             if (cursor_y >= LINES - 1)
	adrp	x0, :got:LINES	// tmp411,
	ldr	x0, [x0, #:got_lo12:LINES]	// tmp410, tmp411,
	ldr	w0, [x0]	// LINES.99_104, LINES
	sub	w1, w0, #1	// _105, LINES.99_104,
// main.cpp:445:             if (cursor_y >= LINES - 1)
	ldr	w0, [sp, 224]	// cursor_y.100_106, cursor_y
// main.cpp:445:             if (cursor_y >= LINES - 1)
	cmp	w1, w0	// _105, cursor_y.100_106
	bgt	.L120		//,
// main.cpp:447:                 cursor_y--;
	ldr	w0, [sp, 224]	// cursor_y.101_107, cursor_y
	sub	w0, w0, #1	// _108, cursor_y.101_107,
	str	w0, [sp, 224]	// _108, cursor_y
// main.cpp:448:                 scroll_offset++;
	ldr	w0, [sp, 220]	// scroll_offset.102_109, scroll_offset
	add	w0, w0, 1	// _110, scroll_offset.102_109,
	str	w0, [sp, 220]	// _110, scroll_offset
.L120:
// main.cpp:450:             current_line = new_node;
	ldr	x0, [sp, 384]	// tmp412, new_node
	str	x0, [sp, 168]	// tmp412, current_line
// main.cpp:451:             break;
	nop	
// main.cpp:452:         }
	add	x0, sp, 40	// tmp413,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev		//
	b	.L130		//
.L107:
// main.cpp:454:             if (cursor_y > 3)
	ldr	w0, [sp, 224]	// cursor_y.103_111, cursor_y
// main.cpp:454:             if (cursor_y > 3)
	cmp	w0, 3	// cursor_y.103_111,
	ble	.L121		//,
// main.cpp:456:                 cursor_y--;
	ldr	w0, [sp, 224]	// cursor_y.104_112, cursor_y
	sub	w0, w0, #1	// _113, cursor_y.104_112,
	str	w0, [sp, 224]	// _113, cursor_y
	b	.L122		//
.L121:
// main.cpp:458:             else if (scroll_offset > 0)
	ldr	w0, [sp, 220]	// scroll_offset.105_114, scroll_offset
// main.cpp:458:             else if (scroll_offset > 0)
	cmp	w0, 0	// scroll_offset.105_114,
	ble	.L122		//,
// main.cpp:460:                 scroll_offset--;
	ldr	w0, [sp, 220]	// scroll_offset.106_115, scroll_offset
	sub	w0, w0, #1	// _116, scroll_offset.106_115,
	str	w0, [sp, 220]	// _116, scroll_offset
.L122:
// main.cpp:462:             current_line = list_advance(lines.head, cursor_y - 3 + scroll_offset);
	ldr	x2, [sp, 208]	// _117, lines.head
// main.cpp:462:             current_line = list_advance(lines.head, cursor_y - 3 + scroll_offset);
	ldr	w0, [sp, 224]	// cursor_y.107_118, cursor_y
	sub	w1, w0, #3	// _119, cursor_y.107_118,
// main.cpp:462:             current_line = list_advance(lines.head, cursor_y - 3 + scroll_offset);
	ldr	w0, [sp, 220]	// scroll_offset.108_120, scroll_offset
	add	w0, w1, w0	// _121, _119, scroll_offset.108_120
	mov	w1, w0	//, _121
	mov	x0, x2	//, _117
	bl	_Z12list_advanceP4Nodei		//
// main.cpp:462:             current_line = list_advance(lines.head, cursor_y - 3 + scroll_offset);
	str	x0, [sp, 168]	// _122, current_line
// main.cpp:463:             break;
	b	.L114		//
.L108:
// main.cpp:465:             if (cursor_y < LINES - 2 && current_line->next)
	adrp	x0, :got:LINES	// tmp415,
	ldr	x0, [x0, #:got_lo12:LINES]	// tmp414, tmp415,
	ldr	w0, [x0]	// LINES.109_123, LINES
	sub	w1, w0, #2	// _124, LINES.109_123,
// main.cpp:465:             if (cursor_y < LINES - 2 && current_line->next)
	ldr	w0, [sp, 224]	// cursor_y.110_125, cursor_y
// main.cpp:465:             if (cursor_y < LINES - 2 && current_line->next)
	cmp	w1, w0	// _124, cursor_y.110_125
	ble	.L123		//,
// main.cpp:465:             if (cursor_y < LINES - 2 && current_line->next)
	ldr	x0, [sp, 168]	// current_line.111_126, current_line
	ldr	x0, [x0, 32]	// _127, current_line.111_126->next
// main.cpp:465:             if (cursor_y < LINES - 2 && current_line->next)
	cmp	x0, 0	// _127,
	beq	.L123		//,
// main.cpp:467:                 cursor_y++;
	ldr	w0, [sp, 224]	// cursor_y.112_128, cursor_y
	add	w0, w0, 1	// _129, cursor_y.112_128,
	str	w0, [sp, 224]	// _129, cursor_y
// main.cpp:468:                 current_line = current_line->next;
	ldr	x0, [sp, 168]	// current_line.113_130, current_line
	ldr	x0, [x0, 32]	// _131, current_line.113_130->next
// main.cpp:468:                 current_line = current_line->next;
	str	x0, [sp, 168]	// _131, current_line
// main.cpp:475:             break;
	b	.L145		//
.L123:
// main.cpp:470:             else if (current_line->next)
	ldr	x0, [sp, 168]	// current_line.114_132, current_line
	ldr	x0, [x0, 32]	// _133, current_line.114_132->next
// main.cpp:470:             else if (current_line->next)
	cmp	x0, 0	// _133,
	beq	.L145		//,
// main.cpp:472:                 scroll_offset++;
	ldr	w0, [sp, 220]	// scroll_offset.115_134, scroll_offset
	add	w0, w0, 1	// _135, scroll_offset.115_134,
	str	w0, [sp, 220]	// _135, scroll_offset
// main.cpp:473:                 current_line = current_line->next;
	ldr	x0, [sp, 168]	// current_line.116_136, current_line
	ldr	x0, [x0, 32]	// _137, current_line.116_136->next
// main.cpp:473:                 current_line = current_line->next;
	str	x0, [sp, 168]	// _137, current_line
// main.cpp:475:             break;
	b	.L145		//
.L106:
// main.cpp:477:             if (cursor_x > 0)
	ldr	w0, [sp, 228]	// cursor_x.117_138, cursor_x
// main.cpp:477:             if (cursor_x > 0)
	cmp	w0, 0	// cursor_x.117_138,
	ble	.L125		//,
// main.cpp:479:                 cursor_x--;
	ldr	w0, [sp, 228]	// cursor_x.118_139, cursor_x
	sub	w0, w0, #1	// _140, cursor_x.118_139,
	str	w0, [sp, 228]	// _140, cursor_x
// main.cpp:487:             break;
	b	.L146		//
.L125:
// main.cpp:481:             else if (cursor_y > 3)
	ldr	w0, [sp, 224]	// cursor_y.119_141, cursor_y
// main.cpp:481:             else if (cursor_y > 3)
	cmp	w0, 3	// cursor_y.119_141,
	ble	.L146		//,
// main.cpp:483:                 cursor_y--;
	ldr	w0, [sp, 224]	// cursor_y.120_142, cursor_y
	sub	w0, w0, #1	// _143, cursor_y.120_142,
	str	w0, [sp, 224]	// _143, cursor_y
// main.cpp:484:                 current_line = list_advance(lines.head, cursor_y - 3 + scroll_offset);
	ldr	x2, [sp, 208]	// _144, lines.head
// main.cpp:484:                 current_line = list_advance(lines.head, cursor_y - 3 + scroll_offset);
	ldr	w0, [sp, 224]	// cursor_y.121_145, cursor_y
	sub	w1, w0, #3	// _146, cursor_y.121_145,
// main.cpp:484:                 current_line = list_advance(lines.head, cursor_y - 3 + scroll_offset);
	ldr	w0, [sp, 220]	// scroll_offset.122_147, scroll_offset
	add	w0, w1, w0	// _148, _146, scroll_offset.122_147
	mov	w1, w0	//, _148
	mov	x0, x2	//, _144
	bl	_Z12list_advanceP4Nodei		//
// main.cpp:484:                 current_line = list_advance(lines.head, cursor_y - 3 + scroll_offset);
	str	x0, [sp, 168]	// _149, current_line
// main.cpp:485:                 cursor_x = current_line->line.size();
	ldr	x0, [sp, 168]	// current_line.123_150, current_line
// main.cpp:485:                 cursor_x = current_line->line.size();
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv		//
// main.cpp:485:                 cursor_x = current_line->line.size();
	str	w0, [sp, 228]	// _153, cursor_x
// main.cpp:487:             break;
	b	.L146		//
.L105:
// main.cpp:489:             if (cursor_x < static_cast<int>(current_line->line.size()))
	ldr	x0, [sp, 168]	// current_line.125_154, current_line
// main.cpp:489:             if (cursor_x < static_cast<int>(current_line->line.size()))
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv		//
// main.cpp:489:             if (cursor_x < static_cast<int>(current_line->line.size()))
	mov	w1, w0	// _157, _156
	ldr	w0, [sp, 228]	// cursor_x.126_158, cursor_x
	cmp	w1, w0	// _157, cursor_x.126_158
	cset	w0, gt	// tmp417,
	and	w0, w0, 255	// retval.124_269, tmp416
// main.cpp:489:             if (cursor_x < static_cast<int>(current_line->line.size()))
	cmp	w0, 0	// retval.124_269,
	beq	.L127		//,
// main.cpp:491:                 cursor_x++;
	ldr	w0, [sp, 228]	// cursor_x.127_159, cursor_x
	add	w0, w0, 1	// _160, cursor_x.127_159,
	str	w0, [sp, 228]	// _160, cursor_x
// main.cpp:499:             break;
	b	.L147		//
.L127:
// main.cpp:493:             else if (current_line->next)
	ldr	x0, [sp, 168]	// current_line.128_161, current_line
	ldr	x0, [x0, 32]	// _162, current_line.128_161->next
// main.cpp:493:             else if (current_line->next)
	cmp	x0, 0	// _162,
	beq	.L147		//,
// main.cpp:495:                 cursor_y++;
	ldr	w0, [sp, 224]	// cursor_y.129_163, cursor_y
	add	w0, w0, 1	// _164, cursor_y.129_163,
	str	w0, [sp, 224]	// _164, cursor_y
// main.cpp:496:                 cursor_x = 0;
	str	wzr, [sp, 228]	//, cursor_x
// main.cpp:497:                 current_line = current_line->next;
	ldr	x0, [sp, 168]	// current_line.130_165, current_line
	ldr	x0, [x0, 32]	// _166, current_line.130_165->next
// main.cpp:497:                 current_line = current_line->next;
	str	x0, [sp, 168]	// _166, current_line
// main.cpp:499:             break;
	b	.L147		//
.L101:
// main.cpp:501:             if (ch >= 32 && ch <= 126)
	ldr	w0, [sp, 392]	// tmp418, ch
	cmp	w0, 31	// tmp418,
	ble	.L148		//,
// main.cpp:501:             if (ch >= 32 && ch <= 126)
	ldr	w0, [sp, 392]	// tmp419, ch
	cmp	w0, 126	// tmp419,
	bgt	.L148		//,
// main.cpp:503:                 current_line->line.insert(cursor_x, 1, static_cast<char>(ch));
	ldr	x0, [sp, 168]	// current_line.131_167, current_line
// main.cpp:503:                 current_line->line.insert(cursor_x, 1, static_cast<char>(ch));
	mov	x4, x0	// _168, current_line.131_167
	ldr	w0, [sp, 228]	// cursor_x.132_169, cursor_x
	sxtw	x0, w0	// _170, cursor_x.132_169
	ldr	w1, [sp, 392]	// tmp420, ch
	and	w1, w1, 255	// _171, tmp420
	mov	w3, w1	//, _171
	mov	x2, 1	//,
	mov	x1, x0	//, _170
	mov	x0, x4	//, _168
.LEHB19:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmmc		//
.LEHE19:
// main.cpp:504:                 cursor_x++;
	ldr	w0, [sp, 228]	// cursor_x.133_172, cursor_x
	add	w0, w0, 1	// _173, cursor_x.133_172,
	str	w0, [sp, 228]	// _173, cursor_x
// main.cpp:506:             break;
	b	.L148		//
.L142:
// main.cpp:379:             break;
	nop	
	b	.L130		//
.L143:
// main.cpp:414:             break;
	nop	
	b	.L130		//
.L144:
// main.cpp:431:             break;
	nop	
	b	.L130		//
.L145:
// main.cpp:475:             break;
	nop	
	b	.L130		//
.L146:
// main.cpp:487:             break;
	nop	
	b	.L130		//
.L147:
// main.cpp:499:             break;
	nop	
	b	.L130		//
.L148:
// main.cpp:506:             break;
	nop	
.L114:
// main.cpp:508:     }
	b	.L130		//
.L138:
// main.cpp:320:         list_push_back(lines, "");
	mov	x19, x0	// tmp424,
	add	x0, sp, 248	// tmp422,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev		//
	b	.L132		//
.L137:
	mov	x19, x0	// tmp423,
.L132:
// main.cpp:320:         list_push_back(lines, "");
	add	x0, sp, 280	// tmp427,,
	bl	_ZNSaIcED1Ev		//
	b	.L133		//
.L140:
// main.cpp:452:         }
	mov	x19, x0	// tmp432,
	add	x0, sp, 40	// tmp430,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev		//
	b	.L135		//
.L139:
// main.cpp:512: }
	mov	x19, x0	// tmp431,
.L135:
	add	x0, sp, 104	// tmp435,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev		//
	add	x0, sp, 136	// tmp438,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev		//
	b	.L133		//
.L136:
	mov	x19, x0	// tmp428,
.L133:
	add	x0, sp, 176	// tmp439,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev		//
	mov	x0, x19	// D.49583, tmp428
.LEHB20:
	bl	_Unwind_Resume		//
.LEHE20:
.L141:
	ldp	x19, x30, [sp], 416	//,,,
	.cfi_restore 30
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1681:
	.section	.gcc_except_table
.LLSDA1681:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1681-.LLSDACSB1681
.LLSDACSB1681:
	.uleb128 .LEHB13-.LFB1681
	.uleb128 .LEHE13-.LEHB13
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB14-.LFB1681
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L136-.LFB1681
	.uleb128 0
	.uleb128 .LEHB15-.LFB1681
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L137-.LFB1681
	.uleb128 0
	.uleb128 .LEHB16-.LFB1681
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L138-.LFB1681
	.uleb128 0
	.uleb128 .LEHB17-.LFB1681
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L139-.LFB1681
	.uleb128 0
	.uleb128 .LEHB18-.LFB1681
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L140-.LFB1681
	.uleb128 0
	.uleb128 .LEHB19-.LFB1681
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L139-.LFB1681
	.uleb128 0
	.uleb128 .LEHB20-.LFB1681
	.uleb128 .LEHE20-.LEHB20
	.uleb128 0
	.uleb128 0
.LLSDACSE1681:
	.text
	.size	main, .-main
	.section	.text._ZSt3minIiERKT_S2_S2_,"axG",@progbits,_ZSt3minIiERKT_S2_S2_,comdat
	.align	2
	.weak	_ZSt3minIiERKT_S2_S2_
	.type	_ZSt3minIiERKT_S2_S2_, %function
_ZSt3minIiERKT_S2_S2_:
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
	.size	_ZSt3minIiERKT_S2_S2_, .-_ZSt3minIiERKT_S2_S2_
	.weak	_ZTISt9bad_alloc
	.section	.data.rel.ro._ZTISt9bad_alloc,"awG",@progbits,_ZTISt9bad_alloc,comdat
	.align	3
	.type	_ZTISt9bad_alloc, %object
	.size	_ZTISt9bad_alloc, 24
_ZTISt9bad_alloc:
// <anonymous>:
// <anonymous>:
	.xword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
// <anonymous>:
	.xword	_ZTSSt9bad_alloc
// <anonymous>:
	.xword	_ZTISt9exception
	.weak	_ZTSSt9bad_alloc
	.section	.rodata._ZTSSt9bad_alloc,"aG",@progbits,_ZTSSt9bad_alloc,comdat
	.align	3
	.type	_ZTSSt9bad_alloc, %object
	.size	_ZTSSt9bad_alloc, 13
_ZTSSt9bad_alloc:
	.string	"St9bad_alloc"
	.text
	.align	2
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
