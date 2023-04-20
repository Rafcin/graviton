.text
.align	2                         // Aligns the next instruction at a 2^2 = 4-byte boundary.
.global	save_file                 // Exports the symbol 'save_file' for external use.
.type	save_file, %function      // Specifies that 'save_file' is a function.
	save_file:                    // Start of the 'save_file' function.
		save_file_start:                 // Local label for the function beginning.
			sub	sp, sp, #592      // Subtract 592 from the stack pointer (SP) to allocate space on the stack.
			stp	x29, x30, [sp]    // Store the frame pointer (X29) and the return address (X30) on the stack.
			mov	x29, sp           // Set the frame pointer (X29) to the current stack pointer (SP).
			stp	x19, x20, [sp, 16]// Store registers X19 and X20 on the stack, 16 bytes after the stack pointer.
			mov	x20, x1           // Move the value of register X1 to X20.

			adrp	x1, :got:__stack_chk_guard  // Load the address of the global offset table entry for '__stack_chk_guard' into X1.
			stp	x21, x22, [sp, 32]// Store registers X21 and X22 on the stack, 32 bytes after the stack pointer.
			add	x19, sp, 64       // Add 64 to the stack pointer and store the result in register X19.

			ldr	x1, [x1, #:got_lo12:__stack_chk_guard]  // Load the lower 12 bits of the address of '__stack_chk_guard' into X1.
			ldr	x2, [x1]          // Load the value at the address in X1 into X2.
			str	x2, [sp, 584]     // Store the value in X2 on the stack, 584 bytes after the stack pointer.

			mov	x2, 0             // Set register X2 to 0.
			mov	x1, x0            // Move the value of register X0 to X1.
			mov	w2, 16            // Set register W2 (lower 32 bits of X2) to 16.
			mov	x0, x19           // Move the value of register X19 to X0.

		save_file_exp_hndl:       // Local label for exception handling.
			bl	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode // Call the constructor of basic_ofstream with given parameters.
		save_file_exp_bs_file:                   // Local label for exception handling end.

			add	x0, sp, 184       // Add 184 to the stack pointer and store the result in register X0.
			bl	_ZNKSt12__basic_fileIcE7is_openEv  // Call the is_open() function of the basic_file class.

			tst	w0, 255           // Test the lower 8 bits of the result (W0) of the is_open() function.
			bne	save_file_lwbr               // If the result is not zero, branch to label save_file_lwbr.

		save_file_stk:                      // Local label.
			mov	x0, x19           // Move the value of register X19 to X0.
			bl	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev  // Call the destructor of basic_ofstream.


			adrp	x0, :got:__stack_chk_guard  // Load the address of the global offset table entry for '__stack_chk_guard' into X0.
			ldr	x0, [x0, #:got_lo12:__stack_chk_guard]  // Load the lower 12 bits of the address of '__stack_chk_guard' into X0.
			ldr	x2, [sp, 584]     // Load the value on the stack, 584 bytes after the stack pointer, into X2.
			ldr	x1, [x0]          // Load the value at the address in X0 into X1.
			subs	x2, x2, x1    // Subtract the value in X1 from X2 and update the condition flags.
			mov	x1, 0             // Set register X1 to 0.
			beq	save_file_stack               // If the result of the subtraction is zero, branch to label save_file_stack.

			bl	__stack_chk_fail  // Call the '__stack_chk_fail' function to handle a stack corruption.

		save_file_lwbr:                      // Local label.
			ldr	x20, [x20]        // Load the value at the address in X20 into X20.
			add	x22, sp, 63       // Add 63 to the stack pointer and store the result in register X22.
			mov	w21, 10           // Set register W21 (lower 32 bits of X21) to 10.

		save_file_notzro:                      // Local label.
			cbnz	x20, save_file_newl_ostream      // If X20 is not zero, branch to label save_file_newl_ostream.
			mov	x0, x19           // Move the value of register X19 to X0.

		save_file_exp_ostream:                   // Local label for exception handling.
			bl	_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv  // Call the 'close()' function of basic_ofstream.
			b	save_file_stk               // Branch to label save_file_stk.

		save_file_newl_ostream:                      // Local label.
			mov	x1, x20           // Move the value of register X20 to X1.
			mov	x0, x19           // Move the value of register X19 to X0.

			bl	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE // Call the output stream insertion operator to write the string in X20 to the basic_ofstream.

			mov	x1, x22           // Move the value of register X22 to X1.
			mov	x2, 1             // Set register X2 to 1.
			strb	w21, [sp, 63] // Store the value in W21 (newline character) on the stack, 63 bytes after the stack pointer.

			bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l  // Call the '__ostream_insert' function to insert the newline character into the basic_ofstream.

		save_file_exp_notzro:                   // Local label for exception handling end.
			ldr	x20, [x20, 32]    // Load the value at the address in X20 plus an offset of 32 bytes into X20.
			b	save_file_notzro               // Branch to label save_file_notzro.

		save_file_destr:                      // Local label.
			mov	x20, x0           // Move the value of register X0 to X20.
			mov	x0, x19           // Move the value of register X19 to X0.
			bl	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev  // Call the destructor of basic_ofstream.

			mov	x0, x20           // Move the value of register X20 to X0.

		save_file_unwind:                   // Local label for exception handling.
			bl	_Unwind_Resume    // Call the '_Unwind_Resume' function to continue unwinding the stack after handling an exception.
		save_file_exp:                   // Local label for exception handling end.

		save_file_stack:                      // Local label.
			ldp	x29, x30, [sp]    // Load the frame pointer (X29) and the return address (X30) from the stack into their respective registers.
			ldp	x19, x20, [sp, 16]// Load the values of X19 and X20 from the stack, 16 bytes after the stack pointer, into their respective registers.
			ldp	x21, x22, [sp, 32]// Load the values of X21 and X22 from the stack, 32 bytes after the stack pointer, into their respective registers.
			add	sp, sp, 592       // Add 592 to the stack pointer (SP) to deallocate the stack space.

			ret                   // Return from the 'save_file' function.

		save_file_end_tb_srt:                 // Local label for the function end.

		save_file_end_byt_tbl:               // Local label for the exception handling table.
			.byte	0xff          // Exception handling table data.
			.byte	0xff          // Exception handling table data.
			.byte	0x1           // Exception handling table data.
			.uleb128 save_file_end-save_file_end_byt_tbl_end  // Encoded difference between the two labels.

		save_file_end_byt_tbl_end:            // Local label for the exception handling table start.
			.uleb128 save_file_exp_hndl-save_file_start  // Encoded difference between the two labels.
			.uleb128 save_file_exp_bs_file-save_file_exp_hndl    // Encoded difference between the two labels.
			.uleb128 0                // Exception handling table data.
			.uleb128 0                // Exception handling table data.
			.uleb128 save_file_exp_ostream-save_file_start  // Encoded difference between the two labels.
			.uleb128 save_file_exp_notzro-save_file_exp_ostream    // Encoded difference between the two labels.
			.uleb128 save_file_destr-save_file_start     // Encoded difference between the two labels.
			.uleb128 0                // Exception handling table data.
			.uleb128 save_file_unwind-save_file_start  // Encoded difference between the two labels.
			.uleb128 save_file_exp-save_file_unwind    // Encoded difference between the two labels.
			.uleb128 0                // Exception handling table data.
			.uleb128 0                // Exception handling table data.
		save_file_end:
			.text
			.size	save_file, .-save_file
