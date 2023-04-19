save_file:
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
// main.cpp:192:     std::ofstream outfile(filename); // Open the file for writing
	add	x0, sp, 32	// tmp98,,
	mov	w2, 16	//,
	ldr	x1, [sp, 24]	//, filename
.LEHB7:
	bl	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode		//
.LEHE7:
// main.cpp:193:     if (!outfile.is_open())          // Check if the file was successfully opened
	add	x0, sp, 32	// tmp99,,
.LEHB8:
	bl	_ZNSt14basic_ofstreamIcSt11char_traitsIcEE7is_openEv		//
	and	w0, w0, 255	// _1, tmp100
// main.cpp:193:     if (!outfile.is_open())          // Check if the file was successfully opened
	eor	w0, w0, 1	// tmp101, _1,
	and	w0, w0, 255	// retval.14_16, tmp101
// main.cpp:193:     if (!outfile.is_open())          // Check if the file was successfully opened
	cmp	w0, 0	// retval.14_16,
	beq	.L50		//,
// main.cpp:195:         return; // If not, return without doing anything
	mov	w19, 0	// finally_tmp.15_5,
	b	.L51		//
.L50:
// main.cpp:198:     Node *current = lines.head;
	ldr	x0, [sp, 16]	// tmp102, lines
	ldr	x0, [x0]	// tmp103, lines_17(D)->head
	str	x0, [sp, 552]	// tmp103, current
// main.cpp:199:     while (current)
	b	.L52		//
.L53:
// main.cpp:201:         outfile << current->line << '\n'; // Write each line to the file
	ldr	x1, [sp, 552]	// _2, current
// main.cpp:201:         outfile << current->line << '\n'; // Write each line to the file
	add	x0, sp, 32	// tmp104,,
	bl	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE		//
	mov	w1, 10	//,
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c		//
// main.cpp:202:         current = current->next;
	ldr	x0, [sp, 552]	// tmp105, current
	ldr	x0, [x0, 32]	// tmp106, current_4->next
	str	x0, [sp, 552]	// tmp106, current
.L52:
// main.cpp:199:     while (current)
	ldr	x0, [sp, 552]	// tmp107, current
	cmp	x0, 0	// tmp107,
	bne	.L53		//,
// main.cpp:204:     outfile.close(); // Close the file
	add	x0, sp, 32	// tmp108,,
	bl	_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv		//
.LEHE8:
// main.cpp:205: }
	mov	w19, 1	// finally_tmp.15_5,
.L51:
// main.cpp:205: }
	add	x0, sp, 32	// tmp109,,
	bl	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev		//
	cmp	w19, 1	// finally_tmp.15_5,
	b	.L58		//
.L57:
// main.cpp:205: }
	mov	x19, x0	// tmp111,
	add	x0, sp, 32	// tmp110,,
	bl	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev		//
	mov	x0, x19	// D.49675, tmp111
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
	.size	save_file, .-save_file
	.section	.rodata
	.align	3
.LC2:
	.string	"%s"
	.text
	.align	2
	.global	get_user_input_abi_cxx11_
	.type	get_user_input_abi_cxx11_, %function