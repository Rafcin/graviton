open_file:
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
// main.cpp:168:     std::ifstream infile(filename); // Open the file for reading
	add	x0, sp, 88	// tmp111,,
	mov	w2, 8	//,
	ldr	x1, [sp, 40]	//, filename
.LEHB3:
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode		//
.LEHE3:
// main.cpp:169:     if (!infile.is_open())          // Check if the file was successfully opened
	add	x0, sp, 88	// tmp112,,
.LEHB4:
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEE7is_openEv		//
.LEHE4:
	and	w0, w0, 255	// _1, tmp113
// main.cpp:169:     if (!infile.is_open())          // Check if the file was successfully opened
	eor	w0, w0, 1	// tmp114, _1,
	and	w0, w0, 255	// retval.11_25, tmp114
// main.cpp:169:     if (!infile.is_open())          // Check if the file was successfully opened
	cmp	w0, 0	// retval.11_25,
	beq	.L38		//,
// main.cpp:171:         return; // If not, return without doing anything
	mov	w19, 0	// finally_tmp.13_13,
	b	.L39		//
.L38:
// main.cpp:174:     std::string line;
	add	x0, sp, 56	// tmp115,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev		//
// main.cpp:175:     while (std::getline(infile, line)) // Read each line of the file
	b	.L40		//
.L41:
// main.cpp:177:         Node *new_node = list_push_back(lines, line);                  // Add the line to the linked list
	add	x0, sp, 56	// tmp116,,
	mov	x1, x0	//, tmp116
	ldr	x0, [sp, 32]	//, lines
.LEHB5:
	bl	list_push_back		//
// main.cpp:177:         Node *new_node = list_push_back(lines, line);                  // Add the line to the linked list
	str	x0, [sp, 616]	// _38, new_node
// main.cpp:178:         memory += new_node->line.size() * sizeof(char) + sizeof(Node); // Update the memory count
	ldr	x0, [sp, 616]	// _2, new_node
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv		//
// main.cpp:178:         memory += new_node->line.size() * sizeof(char) + sizeof(Node); // Update the memory count
	add	x1, x0, 40	// _41, _3,
// main.cpp:178:         memory += new_node->line.size() * sizeof(char) + sizeof(Node); // Update the memory count
	ldr	x0, [sp, 24]	// tmp117, memory
	ldr	x0, [x0]	// _4, *memory_42(D)
	add	x1, x1, x0	// _5, _41, _4
	ldr	x0, [sp, 24]	// tmp118, memory
	str	x1, [x0]	// _5, *memory_42(D)
// main.cpp:179:         nodes++;                                                       // Update the node count
	ldr	x0, [sp, 16]	// tmp119, nodes
	ldr	x0, [x0]	// _6, *nodes_44(D)
// main.cpp:179:         nodes++;                                                       // Update the node count
	add	x1, x0, 1	// _7, _6,
	ldr	x0, [sp, 16]	// tmp120, nodes
	str	x1, [x0]	// _7, *nodes_44(D)
.L40:
// main.cpp:175:     while (std::getline(infile, line)) // Read each line of the file
	add	x1, sp, 56	// tmp121,,
	add	x0, sp, 88	// tmp122,,
	bl	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE		//
// main.cpp:175:     while (std::getline(infile, line)) // Read each line of the file
	ldr	x1, [x0]	// _8, _29->_vptr.basic_istream
	sub	x1, x1, #24	// _9, _8,
	ldr	x1, [x1]	// _10, MEM[(long int *)_9]
	add	x0, x0, x1	// _12, _28, _11
	bl	_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv		//
// main.cpp:175:     while (std::getline(infile, line)) // Read each line of the file
	and	w0, w0, 255	// _31, tmp123
	cmp	w0, 0	// _31,
	bne	.L41		//,
// main.cpp:181:     infile.close(); // Close the file
	add	x0, sp, 88	// tmp124,,
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv		//
.LEHE5:
// main.cpp:182: }
	add	x0, sp, 56	// tmp125,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev		//
	mov	w19, 1	// finally_tmp.13_13,
.L39:
// main.cpp:182: }
	add	x0, sp, 88	// tmp126,,
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev		//
	cmp	w19, 1	// finally_tmp.13_13,
	b	.L48		//
.L47:
// main.cpp:182: }
	mov	x19, x0	// tmp129,
	add	x0, sp, 56	// tmp127,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev		//
	b	.L45		//
.L46:
	mov	x19, x0	// tmp128,
.L45:
	add	x0, sp, 88	// tmp132,,
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev		//
	mov	x0, x19	// D.49674, tmp128
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
	.size	open_file, .-open_file
	.align	2
	.global	save_file
	.type	save_file, %function