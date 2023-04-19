make_node:
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
// main.cpp:25:     Node *new_node = (Node *)malloc(sizeof(Node)); // Allocate memory for the new node
	mov	x0, 40	//,
	bl	malloc		//
	str	x0, [sp, 56]	// tmp98, new_node
// main.cpp:26:     if (new_node == NULL)
	ldr	x0, [sp, 56]	// tmp99, new_node
	cmp	x0, 0	// tmp99,
	bne	.L7		//,
// main.cpp:28:         throw std::bad_alloc(); // Throw an exception if the memory allocation fails
	mov	x0, 8	//,
	bl	__cxa_allocate_exception		//
	mov	x19, x0	// _13, tmp100
// main.cpp:28:         throw std::bad_alloc(); // Throw an exception if the memory allocation fails
	mov	x0, x19	//, _13
	bl	std__bad_alloc___ctor_		//
// main.cpp:28:         throw std::bad_alloc(); // Throw an exception if the memory allocation fails
	adrp	x0, :got:_ZNSt9bad_allocD1Ev	// tmp101,
	ldr	x2, [x0, #:got_lo12:_ZNSt9bad_allocD1Ev]	//, tmp101,
	adrp	x0, :got:_ZTISt9bad_alloc	// tmp102,
	ldr	x1, [x0, #:got_lo12:_ZTISt9bad_alloc]	//, tmp102,
	mov	x0, x19	//, _13
.LEHB0:
	bl	__cxa_throw		//
.LEHE0:
.L7:
// main.cpp:30:     new (&new_node->line) std::string(line); // Using placement new to construct string
	ldr	x19, [sp, 56]	// _4, new_node
// main.cpp:30:     new (&new_node->line) std::string(line); // Using placement new to construct string
	mov	x1, x19	//, _4
	mov	x0, 32	//,
	bl	operator_new		//
	mov	x20, x0	// _6,
	ldr	x1, [sp, 40]	//, line
	mov	x0, x20	//, _6
.LEHB1:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_		//
.LEHE1:
// main.cpp:31:     new_node->next = NULL;                   // Set the next pointer to null
	ldr	x0, [sp, 56]	// tmp103, new_node
	str	xzr, [x0, 32]	//, new_node_3->next
// main.cpp:32:     return new_node;
	ldr	x0, [sp, 56]	// _10, new_node
	b	.L11		//
.L10:
// main.cpp:30:     new (&new_node->line) std::string(line); // Using placement new to construct string
	mov	x21, x0	// tmp105,
	mov	x1, x19	//, _4
	mov	x0, x20	//, _6
	bl	operator_delete		//
	mov	x0, x21	// D.49672, tmp105
.LEHB2:
	bl	_Unwind_Resume		//
.LEHE2:
.L11:
// main.cpp:33: }
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
	.size	make_node, .-make_node
	.align	2
	.global	destroy_node
	.type	destroy_node, %function