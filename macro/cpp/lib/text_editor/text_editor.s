	.arch armv8-a
	.file	"text_editor.cpp"
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
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,8
	.align	3
.LC0:
	.string	"Heap Memory Consumption: %zu bytes | Number of Nodes: %zu"
	.text
	.align	2
	.global	_Z19display_memory_infomm
	.type	_Z19display_memory_infomm, %function
_Z19display_memory_infomm:
.LFB1659:
	.cfi_startproc
	str	x30, [sp, -32]!	//,
	.cfi_def_cfa_offset 32
	.cfi_offset 30, -32
	str	x0, [sp, 24]	// memory, memory
	str	x1, [sp, 16]	// nodes, nodes
// lib/text_editor/text_editor.cpp:16:     attron(A_BOLD);                                                                             // Turn on bold text attribute
	adrp	x0, :got:stdscr	// tmp95,
	ldr	x0, [x0, #:got_lo12:stdscr]	// tmp94, tmp95,
	ldr	x0, [x0]	// stdscr.0_1, stdscr
	mov	x2, 0	//,
	mov	w1, 2097152	//,
	bl	wattr_on		//
// lib/text_editor/text_editor.cpp:17:     mvprintw(1, 0, "Heap Memory Consumption: %zu bytes | Number of Nodes: %zu", memory, nodes); // Print the memory consumption and number of nodes on the screen
	ldr	x4, [sp, 16]	//, nodes
	ldr	x3, [sp, 24]	//, memory
	adrp	x0, .LC0	// tmp96,
	add	x2, x0, :lo12:.LC0	//, tmp96,
	mov	w1, 0	//,
	mov	w0, 1	//,
	bl	mvprintw		//
// lib/text_editor/text_editor.cpp:18:     attroff(A_BOLD);                                                                            // Turn off bold text attribute
	adrp	x0, :got:stdscr	// tmp98,
	ldr	x0, [x0, #:got_lo12:stdscr]	// tmp97, tmp98,
	ldr	x0, [x0]	// stdscr.1_2, stdscr
	mov	x2, 0	//,
	mov	w1, 2097152	//,
	bl	wattr_off		//
// lib/text_editor/text_editor.cpp:19: }
	nop	
	ldr	x30, [sp], 32	//,
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1659:
	.size	_Z19display_memory_infomm, .-_Z19display_memory_infomm
	.align	2
	.global	_Z9open_filePKcR10LinkedListRmS3_
	.type	_Z9open_filePKcR10LinkedListRmS3_, %function
_Z9open_filePKcR10LinkedListRmS3_:
.LFB1660:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1660
	sub	sp, sp, #624	//,,
	.cfi_def_cfa_offset 624
	stp	x19, x30, [sp]	//,,
	.cfi_offset 19, -624
	.cfi_offset 30, -616
	str	x0, [sp, 40]	// filename, filename
	str	x1, [sp, 32]	// lines, lines
	str	x2, [sp, 24]	// memory, memory
	str	x3, [sp, 16]	// nodes, nodes
// lib/text_editor/text_editor.cpp:31:     std::ifstream infile(filename); // Open the file for reading
	add	x0, sp, 88	// tmp111,,
	mov	w2, 8	//,
	ldr	x1, [sp, 40]	//, filename
.LEHB0:
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode		//
.LEHE0:
// lib/text_editor/text_editor.cpp:32:     if (!infile.is_open())          // Check if the file was successfully opened
	add	x0, sp, 88	// tmp112,,
.LEHB1:
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEE7is_openEv		//
.LEHE1:
	and	w0, w0, 255	// _1, tmp113
// lib/text_editor/text_editor.cpp:32:     if (!infile.is_open())          // Check if the file was successfully opened
	eor	w0, w0, 1	// tmp114, _1,
	and	w0, w0, 255	// retval.2_25, tmp114
// lib/text_editor/text_editor.cpp:32:     if (!infile.is_open())          // Check if the file was successfully opened
	cmp	w0, 0	// retval.2_25,
	beq	.L3		//,
// lib/text_editor/text_editor.cpp:34:         return; // If not, return without doing anything
	mov	w19, 0	// finally_tmp.4_13,
	b	.L4		//
.L3:
// lib/text_editor/text_editor.cpp:37:     std::string line;
	add	x0, sp, 56	// tmp115,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev		//
// lib/text_editor/text_editor.cpp:38:     while (std::getline(infile, line)) // Read each line of the file
	b	.L5		//
.L6:
// lib/text_editor/text_editor.cpp:40:         Node *new_node = list_push_back(lines, line);                  // Add the line to the linked list
	add	x0, sp, 56	// tmp116,,
	mov	x1, x0	//, tmp116
	ldr	x0, [sp, 32]	//, lines
.LEHB2:
	bl	_Z14list_push_backR10LinkedListRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE		//
// lib/text_editor/text_editor.cpp:40:         Node *new_node = list_push_back(lines, line);                  // Add the line to the linked list
	str	x0, [sp, 616]	// _38, new_node
// lib/text_editor/text_editor.cpp:41:         memory += new_node->line.size() * sizeof(char) + sizeof(Node); // Update the memory count
	ldr	x0, [sp, 616]	// _2, new_node
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv		//
// lib/text_editor/text_editor.cpp:41:         memory += new_node->line.size() * sizeof(char) + sizeof(Node); // Update the memory count
	add	x1, x0, 40	// _41, _3,
// lib/text_editor/text_editor.cpp:41:         memory += new_node->line.size() * sizeof(char) + sizeof(Node); // Update the memory count
	ldr	x0, [sp, 24]	// tmp117, memory
	ldr	x0, [x0]	// _4, *memory_42(D)
	add	x1, x1, x0	// _5, _41, _4
	ldr	x0, [sp, 24]	// tmp118, memory
	str	x1, [x0]	// _5, *memory_42(D)
// lib/text_editor/text_editor.cpp:42:         nodes++;                                                       // Update the node count
	ldr	x0, [sp, 16]	// tmp119, nodes
	ldr	x0, [x0]	// _6, *nodes_44(D)
// lib/text_editor/text_editor.cpp:42:         nodes++;                                                       // Update the node count
	add	x1, x0, 1	// _7, _6,
	ldr	x0, [sp, 16]	// tmp120, nodes
	str	x1, [x0]	// _7, *nodes_44(D)
.L5:
// lib/text_editor/text_editor.cpp:38:     while (std::getline(infile, line)) // Read each line of the file
	add	x1, sp, 56	// tmp121,,
	add	x0, sp, 88	// tmp122,,
	bl	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE		//
// lib/text_editor/text_editor.cpp:38:     while (std::getline(infile, line)) // Read each line of the file
	ldr	x1, [x0]	// _8, _29->_vptr.basic_istream
	sub	x1, x1, #24	// _9, _8,
	ldr	x1, [x1]	// _10, MEM[(long int *)_9]
	add	x0, x0, x1	// _12, _28, _11
	bl	_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv		//
// lib/text_editor/text_editor.cpp:38:     while (std::getline(infile, line)) // Read each line of the file
	and	w0, w0, 255	// _31, tmp123
	cmp	w0, 0	// _31,
	bne	.L6		//,
// lib/text_editor/text_editor.cpp:44:     infile.close(); // Close the file
	add	x0, sp, 88	// tmp124,,
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv		//
.LEHE2:
// lib/text_editor/text_editor.cpp:45: }
	add	x0, sp, 56	// tmp125,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev		//
	mov	w19, 1	// finally_tmp.4_13,
.L4:
// lib/text_editor/text_editor.cpp:45: }
	add	x0, sp, 88	// tmp126,,
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev		//
	cmp	w19, 1	// finally_tmp.4_13,
	b	.L13		//
.L12:
// lib/text_editor/text_editor.cpp:45: }
	mov	x19, x0	// tmp129,
	add	x0, sp, 56	// tmp127,,
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev		//
	b	.L10		//
.L11:
	mov	x19, x0	// tmp128,
.L10:
	add	x0, sp, 88	// tmp132,,
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev		//
	mov	x0, x19	// D.49215, tmp128
.LEHB3:
	bl	_Unwind_Resume		//
.LEHE3:
.L13:
	ldp	x19, x30, [sp]	//,,
	add	sp, sp, 624	//,,
	.cfi_restore 19
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1660:
	.global	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA1660:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1660-.LLSDACSB1660
.LLSDACSB1660:
	.uleb128 .LEHB0-.LFB1660
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB1660
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L11-.LFB1660
	.uleb128 0
	.uleb128 .LEHB2-.LFB1660
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L12-.LFB1660
	.uleb128 0
	.uleb128 .LEHB3-.LFB1660
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSE1660:
	.text
	.size	_Z9open_filePKcR10LinkedListRmS3_, .-_Z9open_filePKcR10LinkedListRmS3_
	.align	2
	.global	_Z9save_filePKcRK10LinkedList
	.type	_Z9save_filePKcRK10LinkedList, %function
_Z9save_filePKcRK10LinkedList:
.LFB1662:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1662
	sub	sp, sp, #560	//,,
	.cfi_def_cfa_offset 560
	stp	x19, x30, [sp]	//,,
	.cfi_offset 19, -560
	.cfi_offset 30, -552
	str	x0, [sp, 24]	// filename, filename
	str	x1, [sp, 16]	// lines, lines
// lib/text_editor/text_editor.cpp:55:     std::ofstream outfile(filename); // Open the file for writing
	add	x0, sp, 32	// tmp98,,
	mov	w2, 16	//,
	ldr	x1, [sp, 24]	//, filename
.LEHB4:
	bl	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode		//
.LEHE4:
// lib/text_editor/text_editor.cpp:56:     if (!outfile.is_open())          // Check if the file was successfully opened
	add	x0, sp, 32	// tmp99,,
.LEHB5:
	bl	_ZNSt14basic_ofstreamIcSt11char_traitsIcEE7is_openEv		//
	and	w0, w0, 255	// _1, tmp100
// lib/text_editor/text_editor.cpp:56:     if (!outfile.is_open())          // Check if the file was successfully opened
	eor	w0, w0, 1	// tmp101, _1,
	and	w0, w0, 255	// retval.5_16, tmp101
// lib/text_editor/text_editor.cpp:56:     if (!outfile.is_open())          // Check if the file was successfully opened
	cmp	w0, 0	// retval.5_16,
	beq	.L15		//,
// lib/text_editor/text_editor.cpp:58:         return; // If not, return without doing anything
	mov	w19, 0	// finally_tmp.6_5,
	b	.L16		//
.L15:
// lib/text_editor/text_editor.cpp:61:     Node *current = lines.head;
	ldr	x0, [sp, 16]	// tmp102, lines
	ldr	x0, [x0]	// tmp103, lines_17(D)->head
	str	x0, [sp, 552]	// tmp103, current
// lib/text_editor/text_editor.cpp:62:     while (current)
	b	.L17		//
.L18:
// lib/text_editor/text_editor.cpp:64:         outfile << current->line << '\n'; // Write each line to the file
	ldr	x1, [sp, 552]	// _2, current
// lib/text_editor/text_editor.cpp:64:         outfile << current->line << '\n'; // Write each line to the file
	add	x0, sp, 32	// tmp104,,
	bl	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE		//
	mov	w1, 10	//,
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c		//
// lib/text_editor/text_editor.cpp:65:         current = current->next;
	ldr	x0, [sp, 552]	// tmp105, current
	ldr	x0, [x0, 32]	// tmp106, current_4->next
	str	x0, [sp, 552]	// tmp106, current
.L17:
// lib/text_editor/text_editor.cpp:62:     while (current)
	ldr	x0, [sp, 552]	// tmp107, current
	cmp	x0, 0	// tmp107,
	bne	.L18		//,
// lib/text_editor/text_editor.cpp:67:     outfile.close(); // Close the file
	add	x0, sp, 32	// tmp108,,
	bl	_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv		//
.LEHE5:
// lib/text_editor/text_editor.cpp:68: }
	mov	w19, 1	// finally_tmp.6_5,
.L16:
// lib/text_editor/text_editor.cpp:68: }
	add	x0, sp, 32	// tmp109,,
	bl	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev		//
	cmp	w19, 1	// finally_tmp.6_5,
	b	.L23		//
.L22:
// lib/text_editor/text_editor.cpp:68: }
	mov	x19, x0	// tmp111,
	add	x0, sp, 32	// tmp110,,
	bl	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev		//
	mov	x0, x19	// D.49216, tmp111
.LEHB6:
	bl	_Unwind_Resume		//
.LEHE6:
.L23:
	ldp	x19, x30, [sp]	//,,
	add	sp, sp, 560	//,,
	.cfi_restore 19
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1662:
	.section	.gcc_except_table
.LLSDA1662:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1662-.LLSDACSB1662
.LLSDACSB1662:
	.uleb128 .LEHB4-.LFB1662
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB5-.LFB1662
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L22-.LFB1662
	.uleb128 0
	.uleb128 .LEHB6-.LFB1662
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
.LLSDACSE1662:
	.text
	.size	_Z9save_filePKcRK10LinkedList, .-_Z9save_filePKcRK10LinkedList
	.section	.rodata
	.align	3
.LC1:
	.string	"%s"
	.text
	.align	2
	.global	_Z14get_user_inputB5cxx11PKc
	.type	_Z14get_user_inputB5cxx11PKc, %function
_Z14get_user_inputB5cxx11PKc:
.LFB1663:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1663
	stp	x19, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 19, -304
	.cfi_offset 30, -296
	mov	x19, x8	// <retval>,
	str	x0, [sp, 24]	// prompt, prompt
.LEHB7:
// lib/text_editor/text_editor.cpp:78:     nocbreak();     // Turn off cbreak mode to enable line buffering
	bl	nocbreak		//
// lib/text_editor/text_editor.cpp:79:     echo();         // Turn on echoing of characters
	bl	echo		//
// lib/text_editor/text_editor.cpp:80:     curs_set(TRUE); // Show the cursor
	mov	w0, 1	//,
	bl	curs_set		//
// lib/text_editor/text_editor.cpp:83:     mvprintw(LINES - 1, 0, "%s", prompt); // Print the prompt message to the screen
	adrp	x0, :got:LINES	// tmp98,
	ldr	x0, [x0, #:got_lo12:LINES]	// tmp97, tmp98,
	ldr	w0, [x0]	// LINES.7_1, LINES
	sub	w4, w0, #1	// _2, LINES.7_1,
	ldr	x3, [sp, 24]	//, prompt
	adrp	x0, .LC1	// tmp99,
	add	x2, x0, :lo12:.LC1	//, tmp99,
	mov	w1, 0	//,
	mov	w0, w4	//, _2
	bl	mvprintw		//
// lib/text_editor/text_editor.cpp:84:     getstr(input);                        // Get the user input and store it in the input array
	adrp	x0, :got:stdscr	// tmp101,
	ldr	x0, [x0, #:got_lo12:stdscr]	// tmp100, tmp101,
	ldr	x0, [x0]	// stdscr.8_3, stdscr
	add	x1, sp, 40	// tmp102,,
	mov	w2, -1	//,
	bl	wgetnstr		//
// lib/text_editor/text_editor.cpp:86:     curs_set(FALSE); // Hide the cursor
	mov	w0, 0	//,
	bl	curs_set		//
// lib/text_editor/text_editor.cpp:87:     noecho();        // Turn off echoing of characters
	bl	noecho		//
// lib/text_editor/text_editor.cpp:88:     cbreak();        // Turn on cbreak mode to disable line buffering
	bl	cbreak		//
.LEHE7:
// lib/text_editor/text_editor.cpp:90:     return std::string(input); // Return the user input as a string
	add	x0, sp, 296	// tmp103,,
	bl	_ZNSaIcEC1Ev		//
	add	x1, sp, 296	// tmp104,,
	add	x0, sp, 40	// tmp105,,
	mov	x2, x1	//, tmp104
	mov	x1, x0	//, tmp105
	mov	x0, x19	//, <retval>
.LEHB8:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_		//
.LEHE8:
	add	x0, sp, 296	// tmp106,,
	bl	_ZNSaIcED1Ev		//
	b	.L28		//
.L27:
	mov	x19, x0	// tmp109,
	add	x0, sp, 296	// tmp108,,
	bl	_ZNSaIcED1Ev		//
	mov	x0, x19	// D.49217, tmp109
.LEHB9:
	bl	_Unwind_Resume		//
.LEHE9:
.L28:
// lib/text_editor/text_editor.cpp:91: }
	mov	x0, x19	//, <retval>
	ldp	x19, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1663:
	.section	.gcc_except_table
.LLSDA1663:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1663-.LLSDACSB1663
.LLSDACSB1663:
	.uleb128 .LEHB7-.LFB1663
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB8-.LFB1663
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L27-.LFB1663
	.uleb128 0
	.uleb128 .LEHB9-.LFB1663
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
.LLSDACSE1663:
	.text
	.size	_Z14get_user_inputB5cxx11PKc, .-_Z14get_user_inputB5cxx11PKc
	.align	2
	.global	_Z16highlight_searchmmi
	.type	_Z16highlight_searchmmi, %function
_Z16highlight_searchmmi:
.LFB1664:
	.cfi_startproc
	str	x30, [sp, -64]!	//,
	.cfi_def_cfa_offset 64
	.cfi_offset 30, -64
	str	x0, [sp, 40]	// found_pos, found_pos
	str	x1, [sp, 32]	// search_length, search_length
	str	w2, [sp, 28]	// y, y
// lib/text_editor/text_editor.cpp:102:     attron(COLOR_PAIR(1)); // Turn on color pair 1 (black on yellow)
	adrp	x0, :got:stdscr	// tmp111,
	ldr	x0, [x0, #:got_lo12:stdscr]	// tmp110, tmp111,
	ldr	x0, [x0]	// stdscr.16_1, stdscr
	mov	x2, 0	//,
	mov	w1, 256	//,
	bl	wattr_on		//
// lib/text_editor/text_editor.cpp:103:     for (size_t i = 0; i < search_length; i++)
	str	xzr, [sp, 56]	//, i
// lib/text_editor/text_editor.cpp:103:     for (size_t i = 0; i < search_length; i++)
	b	.L30		//
.L34:
// lib/text_editor/text_editor.cpp:105:         chtype original_char = mvinch(y, found_pos + i);                  // Get the original character at the current position
	adrp	x0, :got:stdscr	// tmp113,
	ldr	x0, [x0, #:got_lo12:stdscr]	// tmp112, tmp113,
	ldr	x0, [x0]	// stdscr.18_2, stdscr
	ldr	x1, [sp, 40]	// tmp114, found_pos
	mov	w2, w1	// _3, tmp114
	ldr	x1, [sp, 56]	// tmp115, i
	add	w1, w2, w1	// _5, _3, _4
	mov	w2, w1	//, _6
	ldr	w1, [sp, 28]	//, y
	bl	wmove		//
	cmn	w0, #1	// _7,
	beq	.L31		//,
// lib/text_editor/text_editor.cpp:105:         chtype original_char = mvinch(y, found_pos + i);                  // Get the original character at the current position
	adrp	x0, :got:stdscr	// tmp117,
	ldr	x0, [x0, #:got_lo12:stdscr]	// tmp116, tmp117,
	ldr	x0, [x0]	// stdscr.19_8, stdscr
	bl	winch		//
	b	.L32		//
.L31:
// lib/text_editor/text_editor.cpp:105:         chtype original_char = mvinch(y, found_pos + i);                  // Get the original character at the current position
	mov	w0, -1	// _34,
.L32:
// lib/text_editor/text_editor.cpp:105:         chtype original_char = mvinch(y, found_pos + i);                  // Get the original character at the current position
	str	w0, [sp, 52]	// _34, original_char
// lib/text_editor/text_editor.cpp:106:         chtype new_char = (original_char & A_CHARTEXT) | (COLOR_PAIR(1)); // Combine the original character with the color pair
	ldr	w0, [sp, 52]	// tmp118, original_char
	and	w0, w0, 255	// _9, tmp118,
// lib/text_editor/text_editor.cpp:106:         chtype new_char = (original_char & A_CHARTEXT) | (COLOR_PAIR(1)); // Combine the original character with the color pair
	orr	w0, w0, 256	// tmp119, _9,
	str	w0, [sp, 48]	// tmp119, new_char
// lib/text_editor/text_editor.cpp:107:         mvaddch(y, found_pos + i, new_char);                              // Print the new character to the screen
	adrp	x0, :got:stdscr	// tmp121,
	ldr	x0, [x0, #:got_lo12:stdscr]	// tmp120, tmp121,
	ldr	x0, [x0]	// stdscr.20_10, stdscr
	ldr	x1, [sp, 40]	// tmp122, found_pos
	mov	w2, w1	// _11, tmp122
	ldr	x1, [sp, 56]	// tmp123, i
	add	w1, w2, w1	// _13, _11, _12
	mov	w2, w1	//, _14
	ldr	w1, [sp, 28]	//, y
	bl	wmove		//
	cmn	w0, #1	// _15,
	beq	.L33		//,
// lib/text_editor/text_editor.cpp:107:         mvaddch(y, found_pos + i, new_char);                              // Print the new character to the screen
	adrp	x0, :got:stdscr	// tmp125,
	ldr	x0, [x0, #:got_lo12:stdscr]	// tmp124, tmp125,
	ldr	x0, [x0]	// stdscr.21_16, stdscr
	ldr	w1, [sp, 48]	//, new_char
	bl	waddch		//
.L33:
// lib/text_editor/text_editor.cpp:103:     for (size_t i = 0; i < search_length; i++)
	ldr	x0, [sp, 56]	// tmp127, i
	add	x0, x0, 1	// tmp126, tmp127,
	str	x0, [sp, 56]	// tmp126, i
.L30:
// lib/text_editor/text_editor.cpp:103:     for (size_t i = 0; i < search_length; i++)
	ldr	x1, [sp, 56]	// tmp128, i
	ldr	x0, [sp, 32]	// tmp129, search_length
	cmp	x1, x0	// tmp128, tmp129
	bcc	.L34		//,
// lib/text_editor/text_editor.cpp:109:     attroff(COLOR_PAIR(1)); // Turn off color pair 1
	adrp	x0, :got:stdscr	// tmp131,
	ldr	x0, [x0, #:got_lo12:stdscr]	// tmp130, tmp131,
	ldr	x0, [x0]	// stdscr.22_17, stdscr
	mov	x2, 0	//,
	mov	w1, 256	//,
	bl	wattr_off		//
// lib/text_editor/text_editor.cpp:110: }
	nop	
	ldr	x30, [sp], 64	//,
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1664:
	.size	_Z16highlight_searchmmi, .-_Z16highlight_searchmmi
	.align	2
	.global	_Z11search_textR10LinkedListRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS9_S9_RP4Node
	.type	_Z11search_textR10LinkedListRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS9_S9_RP4Node, %function
_Z11search_textR10LinkedListRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS9_S9_RP4Node:
.LFB1665:
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
// lib/text_editor/text_editor.cpp:125:     if (search_str.empty())
	ldr	x0, [sp, 48]	//, search_str
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5emptyEv		//
	and	w0, w0, 255	// retval.23_56, tmp135
// lib/text_editor/text_editor.cpp:125:     if (search_str.empty())
	cmp	w0, 0	// retval.23_56,
	bne	.L45		//,
// lib/text_editor/text_editor.cpp:128:     bool first_instance = true;
	mov	w0, 1	// tmp136,
	strb	w0, [sp, 111]	// tmp136, first_instance
// lib/text_editor/text_editor.cpp:130:     Node *line_it = lines.head;
	ldr	x0, [sp, 56]	// tmp137, lines
	ldr	x0, [x0]	// tmp138, lines_58(D)->head
	str	x0, [sp, 96]	// tmp138, line_it
// lib/text_editor/text_editor.cpp:131:     size_t line_idx = 0;
	str	xzr, [sp, 88]	//, line_idx
// lib/text_editor/text_editor.cpp:132:     while (line_it)
	b	.L38		//
.L44:
// lib/text_editor/text_editor.cpp:134:         std::string &line = line_it->line;
	ldr	x0, [sp, 96]	// tmp139, line_it
	str	x0, [sp, 72]	// tmp139, line
// lib/text_editor/text_editor.cpp:135:         size_t found_pos = 0;
	str	xzr, [sp, 80]	//, found_pos
// lib/text_editor/text_editor.cpp:137:         while ((found_pos = line.find(search_str, found_pos)) != std::string::npos)
	b	.L39		//
.L43:
// lib/text_editor/text_editor.cpp:139:             if (first_instance)
	ldrb	w0, [sp, 111]	// tmp140, first_instance
	cmp	w0, 0	// tmp140,
	beq	.L40		//,
// lib/text_editor/text_editor.cpp:141:                 cursor_x = found_pos;
	ldr	x0, [sp, 80]	// tmp141, found_pos
	mov	w1, w0	// _1, tmp141
	ldr	x0, [sp, 40]	// tmp142, cursor_x
	str	w1, [x0]	// _1, *cursor_x_68(D)
// lib/text_editor/text_editor.cpp:142:                 cursor_y = 3 - scroll_offset + line_idx;
	ldr	x0, [sp, 88]	// tmp143, line_idx
	mov	w1, w0	// _2, tmp143
// lib/text_editor/text_editor.cpp:142:                 cursor_y = 3 - scroll_offset + line_idx;
	ldr	x0, [sp, 24]	// tmp144, scroll_offset
	ldr	w0, [x0]	// _3, *scroll_offset_70(D)
// lib/text_editor/text_editor.cpp:142:                 cursor_y = 3 - scroll_offset + line_idx;
	sub	w0, w1, w0	// _5, _2, _4
	add	w0, w0, 3	// _6, _5,
	mov	w1, w0	// _7, _6
// lib/text_editor/text_editor.cpp:142:                 cursor_y = 3 - scroll_offset + line_idx;
	ldr	x0, [sp, 32]	// tmp145, cursor_y
	str	w1, [x0]	// _7, *cursor_y_71(D)
// lib/text_editor/text_editor.cpp:143:                 current_line = lines.head;
	ldr	x0, [sp, 56]	// tmp146, lines
	ldr	x1, [x0]	// _8, lines_58(D)->head
// lib/text_editor/text_editor.cpp:143:                 current_line = lines.head;
	ldr	x0, [sp, 16]	// tmp147, current_line
	str	x1, [x0]	// _8, *current_line_73(D)
// lib/text_editor/text_editor.cpp:144:                 current_line = list_advance(current_line, line_idx);
	ldr	x0, [sp, 16]	// tmp148, current_line
	ldr	x0, [x0]	// _9, *current_line_73(D)
	ldr	x1, [sp, 88]	// tmp149, line_idx
	bl	_Z12list_advanceP4Nodei		//
	mov	x1, x0	// _11,
// lib/text_editor/text_editor.cpp:144:                 current_line = list_advance(current_line, line_idx);
	ldr	x0, [sp, 16]	// tmp150, current_line
	str	x1, [x0]	// _11, *current_line_73(D)
// lib/text_editor/text_editor.cpp:146:                 if (cursor_y >= LINES - 1)
	ldr	x0, [sp, 32]	// tmp151, cursor_y
	ldr	w1, [x0]	// _12, *cursor_y_71(D)
// lib/text_editor/text_editor.cpp:146:                 if (cursor_y >= LINES - 1)
	adrp	x0, :got:LINES	// tmp153,
	ldr	x0, [x0, #:got_lo12:LINES]	// tmp152, tmp153,
	ldr	w0, [x0]	// LINES.24_13, LINES
	sub	w0, w0, #1	// _14, LINES.24_13,
// lib/text_editor/text_editor.cpp:146:                 if (cursor_y >= LINES - 1)
	cmp	w1, w0	// _12, _14
	blt	.L41		//,
// lib/text_editor/text_editor.cpp:148:                     scroll_offset += cursor_y - (LINES - 2);
	ldr	x0, [sp, 24]	// tmp154, scroll_offset
	ldr	w1, [x0]	// _15, *scroll_offset_70(D)
// lib/text_editor/text_editor.cpp:148:                     scroll_offset += cursor_y - (LINES - 2);
	ldr	x0, [sp, 32]	// tmp155, cursor_y
	ldr	w2, [x0]	// _16, *cursor_y_71(D)
// lib/text_editor/text_editor.cpp:148:                     scroll_offset += cursor_y - (LINES - 2);
	adrp	x0, :got:LINES	// tmp157,
	ldr	x0, [x0, #:got_lo12:LINES]	// tmp156, tmp157,
	ldr	w0, [x0]	// LINES.25_17, LINES
	sub	w0, w0, #2	// _18, LINES.25_17,
// lib/text_editor/text_editor.cpp:148:                     scroll_offset += cursor_y - (LINES - 2);
	sub	w0, w2, w0	// _19, _16, _18
// lib/text_editor/text_editor.cpp:148:                     scroll_offset += cursor_y - (LINES - 2);
	add	w1, w1, w0	// _20, _15, _19
	ldr	x0, [sp, 24]	// tmp158, scroll_offset
	str	w1, [x0]	// _20, *scroll_offset_70(D)
// lib/text_editor/text_editor.cpp:149:                     cursor_y = LINES - 2;
	adrp	x0, :got:LINES	// tmp160,
	ldr	x0, [x0, #:got_lo12:LINES]	// tmp159, tmp160,
	ldr	w0, [x0]	// LINES.26_21, LINES
	sub	w1, w0, #2	// _22, LINES.26_21,
// lib/text_editor/text_editor.cpp:149:                     cursor_y = LINES - 2;
	ldr	x0, [sp, 32]	// tmp161, cursor_y
	str	w1, [x0]	// _22, *cursor_y_71(D)
.L41:
// lib/text_editor/text_editor.cpp:152:                 first_instance = false;
	strb	wzr, [sp, 111]	//, first_instance
.L40:
// lib/text_editor/text_editor.cpp:155:             if (3 + line_idx - scroll_offset >= 3 && 3 + line_idx - scroll_offset < LINES - 1)
	ldr	x0, [sp, 24]	// tmp162, scroll_offset
	ldr	w0, [x0]	// _23, *scroll_offset_70(D)
	sxtw	x0, w0	// _24, _23
// lib/text_editor/text_editor.cpp:155:             if (3 + line_idx - scroll_offset >= 3 && 3 + line_idx - scroll_offset < LINES - 1)
	ldr	x1, [sp, 88]	// tmp163, line_idx
	sub	x0, x1, x0	// _25, tmp163, _24
	add	x0, x0, 3	// _26, _25,
// lib/text_editor/text_editor.cpp:155:             if (3 + line_idx - scroll_offset >= 3 && 3 + line_idx - scroll_offset < LINES - 1)
	cmp	x0, 2	// _26,
	bls	.L42		//,
// lib/text_editor/text_editor.cpp:155:             if (3 + line_idx - scroll_offset >= 3 && 3 + line_idx - scroll_offset < LINES - 1)
	ldr	x0, [sp, 24]	// tmp164, scroll_offset
	ldr	w0, [x0]	// _27, *scroll_offset_70(D)
	sxtw	x0, w0	// _28, _27
// lib/text_editor/text_editor.cpp:155:             if (3 + line_idx - scroll_offset >= 3 && 3 + line_idx - scroll_offset < LINES - 1)
	ldr	x1, [sp, 88]	// tmp165, line_idx
	sub	x0, x1, x0	// _29, tmp165, _28
	add	x1, x0, 3	// _30, _29,
// lib/text_editor/text_editor.cpp:155:             if (3 + line_idx - scroll_offset >= 3 && 3 + line_idx - scroll_offset < LINES - 1)
	adrp	x0, :got:LINES	// tmp167,
	ldr	x0, [x0, #:got_lo12:LINES]	// tmp166, tmp167,
	ldr	w0, [x0]	// LINES.27_31, LINES
	sub	w0, w0, #1	// _32, LINES.27_31,
	sxtw	x0, w0	// _33, _32
// lib/text_editor/text_editor.cpp:155:             if (3 + line_idx - scroll_offset >= 3 && 3 + line_idx - scroll_offset < LINES - 1)
	cmp	x1, x0	// _30, _33
	bcs	.L42		//,
// lib/text_editor/text_editor.cpp:157:                 highlight_search(found_pos, search_str.length(), 3 + line_idx - scroll_offset); // Highlight the search result on the screen
	ldr	x0, [sp, 48]	//, search_str
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv		//
	mov	x1, x0	// _34,
// lib/text_editor/text_editor.cpp:157:                 highlight_search(found_pos, search_str.length(), 3 + line_idx - scroll_offset); // Highlight the search result on the screen
	ldr	x0, [sp, 88]	// tmp168, line_idx
	mov	w2, w0	// _35, tmp168
// lib/text_editor/text_editor.cpp:157:                 highlight_search(found_pos, search_str.length(), 3 + line_idx - scroll_offset); // Highlight the search result on the screen
	ldr	x0, [sp, 24]	// tmp169, scroll_offset
	ldr	w0, [x0]	// _36, *scroll_offset_70(D)
// lib/text_editor/text_editor.cpp:157:                 highlight_search(found_pos, search_str.length(), 3 + line_idx - scroll_offset); // Highlight the search result on the screen
	sub	w0, w2, w0	// _38, _35, _37
	add	w0, w0, 3	// _39, _38,
// lib/text_editor/text_editor.cpp:157:                 highlight_search(found_pos, search_str.length(), 3 + line_idx - scroll_offset); // Highlight the search result on the screen
	mov	w2, w0	//, _40
	ldr	x0, [sp, 80]	//, found_pos
	bl	_Z16highlight_searchmmi		//
.L42:
// lib/text_editor/text_editor.cpp:160:             found_pos += search_str.length();
	ldr	x0, [sp, 48]	//, search_str
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv		//
	mov	x1, x0	// _84,
// lib/text_editor/text_editor.cpp:160:             found_pos += search_str.length();
	ldr	x0, [sp, 80]	// tmp171, found_pos
	add	x0, x0, x1	// tmp170, tmp171, _84
	str	x0, [sp, 80]	// tmp170, found_pos
.L39:
// lib/text_editor/text_editor.cpp:137:         while ((found_pos = line.find(search_str, found_pos)) != std::string::npos)
	ldr	x2, [sp, 80]	//, found_pos
	ldr	x1, [sp, 48]	//, search_str
	ldr	x0, [sp, 72]	//, line
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m		//
	str	x0, [sp, 80]	//, found_pos
// lib/text_editor/text_editor.cpp:137:         while ((found_pos = line.find(search_str, found_pos)) != std::string::npos)
	ldr	x0, [sp, 80]	// tmp173, found_pos
	cmn	x0, #1	// tmp173,
	cset	w0, ne	// tmp174,
	and	w0, w0, 255	// retval.28_65, tmp172
	cmp	w0, 0	// retval.28_65,
	bne	.L43		//,
// lib/text_editor/text_editor.cpp:163:         ++line_idx;
	ldr	x0, [sp, 88]	// tmp176, line_idx
	add	x0, x0, 1	// tmp175, tmp176,
	str	x0, [sp, 88]	// tmp175, line_idx
// lib/text_editor/text_editor.cpp:164:         line_it = line_it->next;
	ldr	x0, [sp, 96]	// tmp177, line_it
	ldr	x0, [x0, 32]	// tmp178, line_it_44->next
	str	x0, [sp, 96]	// tmp178, line_it
.L38:
// lib/text_editor/text_editor.cpp:132:     while (line_it)
	ldr	x0, [sp, 96]	// tmp179, line_it
	cmp	x0, 0	// tmp179,
	bne	.L44		//,
	b	.L35		//
.L45:
// lib/text_editor/text_editor.cpp:126:         return;
	nop	
.L35:
// lib/text_editor/text_editor.cpp:166: }
	ldr	x30, [sp], 112	//,
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1665:
	.size	_Z11search_textR10LinkedListRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS9_S9_RP4Node, .-_Z11search_textR10LinkedListRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS9_S9_RP4Node
	.align	2
	.global	_Z12replace_textR10LinkedListRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_
	.type	_Z12replace_textR10LinkedListRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_, %function
_Z12replace_textR10LinkedListRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_:
.LFB1666:
	.cfi_startproc
	stp	x19, x30, [sp, -64]!	//,,,
	.cfi_def_cfa_offset 64
	.cfi_offset 19, -64
	.cfi_offset 30, -56
	str	x0, [sp, 40]	// lines, lines
	str	x1, [sp, 32]	// search_str, search_str
	str	x2, [sp, 24]	// replace_str, replace_str
// lib/text_editor/text_editor.cpp:177:     if (search_str.empty()) // Return early if the search string is empty
	ldr	x0, [sp, 32]	//, search_str
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5emptyEv		//
	and	w0, w0, 255	// retval.29_10, tmp96
// lib/text_editor/text_editor.cpp:177:     if (search_str.empty()) // Return early if the search string is empty
	cmp	w0, 0	// retval.29_10,
	bne	.L52		//,
// lib/text_editor/text_editor.cpp:180:     Node *current = lines.head;
	ldr	x0, [sp, 40]	// tmp97, lines
	ldr	x0, [x0]	// tmp98, lines_11(D)->head
	str	x0, [sp, 56]	// tmp98, current
// lib/text_editor/text_editor.cpp:181:     while (current)
	b	.L49		//
.L51:
// lib/text_editor/text_editor.cpp:183:         size_t found_pos = current->line.find(search_str);
	ldr	x0, [sp, 56]	// _1, current
	mov	x2, 0	//,
	ldr	x1, [sp, 32]	//, search_str
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m		//
	str	x0, [sp, 48]	//, found_pos
// lib/text_editor/text_editor.cpp:185:         if (found_pos != std::string::npos) // If the search string is found in the current line, replace it with the given string
	ldr	x0, [sp, 48]	// tmp99, found_pos
	cmn	x0, #1	// tmp99,
	beq	.L50		//,
// lib/text_editor/text_editor.cpp:187:             current->line.replace(found_pos, search_str.length(), replace_str);
	ldr	x19, [sp, 56]	// _2, current
	ldr	x0, [sp, 32]	//, search_str
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv		//
	ldr	x3, [sp, 24]	//, replace_str
	mov	x2, x0	//, _3
	ldr	x1, [sp, 48]	//, found_pos
	mov	x0, x19	//, _2
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmRKS4_		//
// lib/text_editor/text_editor.cpp:188:             break; // Stop searching after the first replacement is made
	b	.L46		//
.L50:
// lib/text_editor/text_editor.cpp:190:         current = current->next;
	ldr	x0, [sp, 56]	// tmp100, current
	ldr	x0, [x0, 32]	// tmp101, current_4->next
	str	x0, [sp, 56]	// tmp101, current
.L49:
// lib/text_editor/text_editor.cpp:181:     while (current)
	ldr	x0, [sp, 56]	// tmp102, current
	cmp	x0, 0	// tmp102,
	bne	.L51		//,
	b	.L46		//
.L52:
// lib/text_editor/text_editor.cpp:178:         return;
	nop	
.L46:
// lib/text_editor/text_editor.cpp:192: }
	ldp	x19, x30, [sp], 64	//,,,
	.cfi_restore 30
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1666:
	.size	_Z12replace_textR10LinkedListRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_, .-_Z12replace_textR10LinkedListRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_
	.align	2
	.global	_Z12handle_mouseiiRiS_S_R10LinkedList
	.type	_Z12handle_mouseiiRiS_S_R10LinkedList, %function
_Z12handle_mouseiiRiS_S_R10LinkedList:
.LFB1667:
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
// lib/text_editor/text_editor.cpp:206:     if (y == 1) // If the mouse was clicked in the menu bar, ignore it
	ldr	w0, [sp, 56]	// tmp97, y
	cmp	w0, 1	// tmp97,
	beq	.L57		//,
// lib/text_editor/text_editor.cpp:211:     int max_y = std::min(LINES - 3, static_cast<int>(list_size(lines))); // Calculate the maximum valid y-coordinate based on the number of lines in the text
	adrp	x0, :got:LINES	// tmp99,
	ldr	x0, [x0, #:got_lo12:LINES]	// tmp98, tmp99,
	ldr	w0, [x0]	// LINES.30_1, LINES
	sub	w0, w0, #3	// _2, LINES.30_1,
	str	w0, [sp, 68]	// _2, D.45826
// lib/text_editor/text_editor.cpp:211:     int max_y = std::min(LINES - 3, static_cast<int>(list_size(lines))); // Calculate the maximum valid y-coordinate based on the number of lines in the text
	ldr	x0, [sp, 24]	//, lines
	bl	_Z9list_sizeR10LinkedList		//
// lib/text_editor/text_editor.cpp:211:     int max_y = std::min(LINES - 3, static_cast<int>(list_size(lines))); // Calculate the maximum valid y-coordinate based on the number of lines in the text
	str	w0, [sp, 72]	// _4, D.45827
// lib/text_editor/text_editor.cpp:211:     int max_y = std::min(LINES - 3, static_cast<int>(list_size(lines))); // Calculate the maximum valid y-coordinate based on the number of lines in the text
	add	x1, sp, 72	// tmp100,,
	add	x0, sp, 68	// tmp101,,
	bl	_ZSt3minIiERKT_S2_S2_		//
// lib/text_editor/text_editor.cpp:211:     int max_y = std::min(LINES - 3, static_cast<int>(list_size(lines))); // Calculate the maximum valid y-coordinate based on the number of lines in the text
	ldr	w0, [x0]	// tmp102, *_5
	str	w0, [sp, 76]	// tmp102, max_y
// lib/text_editor/text_editor.cpp:212:     if (y >= 3 && y <= max_y)                                            // If the mouse was clicked within the bounds of the text, update the cursor position accordingly
	ldr	w0, [sp, 56]	// tmp103, y
	cmp	w0, 2	// tmp103,
	ble	.L56		//,
// lib/text_editor/text_editor.cpp:212:     if (y >= 3 && y <= max_y)                                            // If the mouse was clicked within the bounds of the text, update the cursor position accordingly
	ldr	w1, [sp, 56]	// tmp104, y
	ldr	w0, [sp, 76]	// tmp105, max_y
	cmp	w1, w0	// tmp104, tmp105
	bgt	.L56		//,
// lib/text_editor/text_editor.cpp:214:         cursor_x = x;
	ldr	x0, [sp, 48]	// tmp106, cursor_x
	ldr	w1, [sp, 60]	// tmp107, x
	str	w1, [x0]	// tmp107, *cursor_x_18(D)
// lib/text_editor/text_editor.cpp:215:         cursor_y = y;
	ldr	x0, [sp, 40]	// tmp108, cursor_y
	ldr	w1, [sp, 56]	// tmp109, y
	str	w1, [x0]	// tmp109, *cursor_y_21(D)
	b	.L53		//
.L56:
// lib/text_editor/text_editor.cpp:217:     else if (y > max_y) // If the mouse was clicked below the last line of text, update the cursor to the last line of text
	ldr	w1, [sp, 56]	// tmp110, y
	ldr	w0, [sp, 76]	// tmp111, max_y
	cmp	w1, w0	// tmp110, tmp111
	ble	.L53		//,
// lib/text_editor/text_editor.cpp:219:         cursor_x = x;
	ldr	x0, [sp, 48]	// tmp112, cursor_x
	ldr	w1, [sp, 60]	// tmp113, x
	str	w1, [x0]	// tmp113, *cursor_x_18(D)
// lib/text_editor/text_editor.cpp:220:         cursor_y = max_y;
	ldr	x0, [sp, 40]	// tmp114, cursor_y
	ldr	w1, [sp, 76]	// tmp115, max_y
	str	w1, [x0]	// tmp115, *cursor_y_21(D)
	b	.L53		//
.L57:
// lib/text_editor/text_editor.cpp:208:         return;
	nop	
.L53:
// lib/text_editor/text_editor.cpp:222: }
	ldr	x30, [sp], 80	//,
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1667:
	.size	_Z12handle_mouseiiRiS_S_R10LinkedList, .-_Z12handle_mouseiiRiS_S_R10LinkedList
	.section	.text._ZSt3minIiERKT_S2_S2_,"axG",@progbits,_ZSt3minIiERKT_S2_S2_,comdat
	.align	2
	.weak	_ZSt3minIiERKT_S2_S2_
	.type	_ZSt3minIiERKT_S2_S2_, %function
_ZSt3minIiERKT_S2_S2_:
.LFB1916:
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
	bge	.L59		//,
// /usr/include/c++/11/bits/stl_algobase.h:236: 	return __b;
	ldr	x0, [sp]	// _3, __b
	b	.L60		//
.L59:
// /usr/include/c++/11/bits/stl_algobase.h:237:       return __a;
	ldr	x0, [sp, 8]	// _3, __a
.L60:
// /usr/include/c++/11/bits/stl_algobase.h:238:     }
	add	sp, sp, 16	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1916:
	.size	_ZSt3minIiERKT_S2_S2_, .-_ZSt3minIiERKT_S2_S2_
	.text
	.align	2
	.type	_Z41__static_initialization_and_destruction_0ii, %function
_Z41__static_initialization_and_destruction_0ii:
.LFB2090:
	.cfi_startproc
	str	x30, [sp, -32]!	//,
	.cfi_def_cfa_offset 32
	.cfi_offset 30, -32
	str	w0, [sp, 28]	// __initialize_p, __initialize_p
	str	w1, [sp, 24]	// __priority, __priority
// lib/text_editor/text_editor.cpp:222: }
	ldr	w0, [sp, 28]	// tmp92, __initialize_p
	cmp	w0, 1	// tmp92,
	bne	.L63		//,
// lib/text_editor/text_editor.cpp:222: }
	ldr	w1, [sp, 24]	// tmp93, __priority
	mov	w0, 65535	// tmp94,
	cmp	w1, w0	// tmp93, tmp94
	bne	.L63		//,
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
.L63:
// lib/text_editor/text_editor.cpp:222: }
	nop	
	ldr	x30, [sp], 32	//,
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2090:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.align	2
	.type	_GLOBAL__sub_I_text_editor.cpp, %function
_GLOBAL__sub_I_text_editor.cpp:
.LFB2091:
	.cfi_startproc
	str	x30, [sp, -16]!	//,
	.cfi_def_cfa_offset 16
	.cfi_offset 30, -16
// lib/text_editor/text_editor.cpp:222: }
	mov	w1, 65535	//,
	mov	w0, 1	//,
	bl	_Z41__static_initialization_and_destruction_0ii		//
	ldr	x30, [sp], 16	//,
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2091:
	.size	_GLOBAL__sub_I_text_editor.cpp, .-_GLOBAL__sub_I_text_editor.cpp
	.section	.init_array,"aw"
	.align	3
	.xword	_GLOBAL__sub_I_text_editor.cpp
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
