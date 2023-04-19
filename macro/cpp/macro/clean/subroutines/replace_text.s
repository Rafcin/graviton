replace_text:
.LFB1679:
	.cfi_startproc
	stp	x19, x30, [sp, -64]!	//,,,
	.cfi_def_cfa_offset 64
	.cfi_offset 19, -64
	.cfi_offset 30, -56
	str	x0, [sp, 40]	// lines, lines
	str	x1, [sp, 32]	// search_str, search_str
	str	x2, [sp, 24]	// replace_str, replace_str
// main.cpp:314:     if (search_str.empty()) // Return early if the search string is empty
	ldr	x0, [sp, 32]	//, search_str
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5emptyEv		//
	and	w0, w0, 255	// retval.38_10, tmp96
// main.cpp:314:     if (search_str.empty()) // Return early if the search string is empty
	cmp	w0, 0	// retval.38_10,
	bne	.L87		//,
// main.cpp:317:     Node *current = lines.head;
	ldr	x0, [sp, 40]	// tmp97, lines
	ldr	x0, [x0]	// tmp98, lines_11(D)->head
	str	x0, [sp, 56]	// tmp98, current
// main.cpp:318:     while (current)
	b	.L84		//
.L86:
// main.cpp:320:         size_t found_pos = current->line.find(search_str);
	ldr	x0, [sp, 56]	// _1, current
	mov	x2, 0	//,
	ldr	x1, [sp, 32]	//, search_str
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m		//
	str	x0, [sp, 48]	//, found_pos
// main.cpp:322:         if (found_pos != std::string::npos) // If the search string is found in the current line, replace it with the given string
	ldr	x0, [sp, 48]	// tmp99, found_pos
	cmn	x0, #1	// tmp99,
	beq	.L85		//,
// main.cpp:324:             current->line.replace(found_pos, search_str.length(), replace_str);
	ldr	x19, [sp, 56]	// _2, current
	ldr	x0, [sp, 32]	//, search_str
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv		//
	ldr	x3, [sp, 24]	//, replace_str
	mov	x2, x0	//, _3
	ldr	x1, [sp, 48]	//, found_pos
	mov	x0, x19	//, _2
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmRKS4_		//
// main.cpp:325:             break; // Stop searching after the first replacement is made
	b	.L81		//
.L85:
// main.cpp:327:         current = current->next;
	ldr	x0, [sp, 56]	// tmp100, current
	ldr	x0, [x0, 32]	// tmp101, current_4->next
	str	x0, [sp, 56]	// tmp101, current
.L84:
// main.cpp:318:     while (current)
	ldr	x0, [sp, 56]	// tmp102, current
	cmp	x0, 0	// tmp102,
	bne	.L86		//,
	b	.L81		//
.L87:
// main.cpp:315:         return;
	nop	
.L81:
// main.cpp:329: }
	ldp	x19, x30, [sp], 64	//,,,
	.cfi_restore 30
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1679:
	.size	replace_text, .-replace_text
	.align	2
	.global	handle_mouse
	.type	handle_mouse, %function