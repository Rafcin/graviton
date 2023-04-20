.align	2                                       // Align to a 2-byte boundary
.global	open_file                               // Make the 'open_file' symbol global
.type	open_file, %function                    // Specify 'open_file' as a function
	open_file:                                  // Define the 'open_file' function
	open_file_start:
		sub	sp, sp, #640                        // Reserve 640 bytes on the stack for local variables
		stp	x29, x30, [sp]                      // Store the frame pointer (x29) and return address (x30) on the stack
		mov	x29, sp                             // Set the frame pointer (x29) to the current stack pointer (sp)
		stp	x23, x24, [sp, 48]                  // Store x23 and x24 on the stack
		mov	x23, x1                             // Move the value of x1 to x23
		adrp	x1, :got:__stack_chk_guard      // Get the address of the global stack guard variable
		stp	x19, x20, [sp, 16]                  // Store x19 and x20 on the stack
		add	x19, sp, 104                        // Add 104 to the stack pointer and store the result in x19
		ldr	x1, [x1, #:got_lo12:__stack_chk_guard] // Load the value of the stack guard variable into x1
		stp	x21, x22, [sp, 32]                  // Store x21 and x22 on the stack
		mov	x21, x2                             // Move the value of x2 to x21
		ldr	x2, [x1]                            // Load the value of the stack guard variable into x2
		str	x2, [sp, 632]                       // Store the stack guard value on the stack
		mov	x2, 0                               // Clear x2 by setting it to 0
		mov	x1, x0                              // Move the value of x0 to x1
		mov	w2, 8                               // Set w2 to 8
		mov	x0, x19                             // Move the value of x19 to x0
		mov	x22, x3                             // Move the value of x3 to x22
	open_file_ifstream:
		bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode // Call constructor of basic_ifstream
	open_file_fopen:
		add	x0, sp, 232                         // Add 232 to the stack pointer and store the result in x0
		bl	_ZNKSt12__basic_fileIcE7is_openEv   // Call 'is_open()' function to check if the file is open
		tst	w0, 255                             // Test if the return value from 'is_open()' is non-zero
		bne	open_file_null_byte_hndlr                                 // If the file is open, branch to label open_file_null_byte_hndlr
	open_file_stack:
		mov	x0, x19                             // Move the value of x19 to x0
		bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev // Call the destructor of basic_ifstream
		adrp	x0, :got:__stack_chk_guard      // Get the address of the global stack guard variable
		ldr	x0, [x0, #:got_lo12:__stack_chk_guard] // Load the value of the stack guard variable into x0
		ldr	x2, [sp, 632]                       // Load the stack guard value from the stack into x2
		ldr	x1, [x0]                            // Load the value of the stack guard variable into x1
		subs	x2, x2, x1                      // Subtract the current stack guard value from the original value and store the result in x2
		mov	x1, 0                               // Clear x1 by setting it to 0
		beq	open_file_stack_mr                                 // If the stack is not corrupted, branch to label open_file_stack_mr
		bl	__stack_chk_fail                    // If the stack is corrupted, call the stack check failure function
	open_file_null_byte_hndlr:
		add	x20, sp, 72                         // Add 72 to the stack pointer and store the result in x20
		add	x0, sp, 88                          // Add 88 to the stack pointer and store the result in x0
		mov	w24, 5                              // Set w24 to 5
		stp	x0, xzr, [sp, 72]                   // Store x0 and the zero register on the stack
		strb	wzr, [sp, 88]                   // Store a null byte on the stack at offset 88
	open_file_clnup:
		mov	x1, x20                             // Move the value of x20 to x1
		mov	x0, x19                             // Move the value of x19 to x0
	open_file_getline:
		bl	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE // Call 'getline()' to read a line from the file
		b	open_file_ldradd                                 // Unconditionally branch to label open_file_ldradd
	open_file_push:
		mov	x1, x20                             // Move the value of x20 to x1
		mov	x0, x23                             // Move the value of x23 to x0
		bl	list_push_back                      // Call 'list_push_back()' to add the line to the list
		ldr	x4, [x21]                           // Load the value at address x21 into x4
		ldr	x0, [x0, 8]                         // Load the value at address (x0 + 8) into x0
		add	x4, x4, 40                          // Add 40 to the value in x4
		add	x4, x4, x0                          // Add the value in x0 to x4
		str	x4, [x21]                           // Store the value of x4 at address x21
		ldr	x0, [x22]                           // Load the value at address x22 into x0
		add	x0, x0, 1                           // Increment the value in x0
		str	x0, [x22]                           // Store the incremented value at address x22
		b	open_file_clnup                                 // Unconditionally branch to label open_file_clnup
	open_file_ldradd:
		ldr	x1, [x0]                            // Load the value at address x0 into x1
		ldr	x1, [x1, -24]                       // Load the value at address (x1 - 24) into x1
		add	x0, x0, x1                          // Add the value in x1 to x0
		ldr	w0, [x0, 32]                        // Load the value at address (x0 + 32
		tst	w0, w24
		beq	open_file_push
		mov	x0, x19
		bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv
	open_file_bs_str_chk:
		mov	x0, x20
		bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
		b	open_file_stack
	open_file_bs_traits:
		mov	x21, x0
		mov	x0, x20
		bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
		mov	x0, x19
		bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
		mov	x0, x21
	open_file_resume:
		bl	_Unwind_Resume
	open_file_bytecd:
	open_file_stack_mr:
		ldp	x29, x30, [sp]
		ldp	x19, x20, [sp, 16]
		ldp	x21, x22, [sp, 32]
		ldp	x23, x24, [sp, 48]
		add	sp, sp, 640

		ret
	.LFE1707:
		.global	__gxx_personality_v0
	.LLSDA1707:
		.byte	0xff
		.byte	0xff
		.byte	0x1
		.uleb128 open_file_end-.LLSDACSB1707
	.LLSDACSB1707:
		.uleb128 open_file_ifstream-open_file_start
		.uleb128 open_file_fopen-open_file_ifstream
		.uleb128 0
		.uleb128 0
		.uleb128 open_file_getline-open_file_start
		.uleb128 open_file_bs_str_chk-open_file_getline
		.uleb128 open_file_bs_traits-open_file_start
		.uleb128 0
		.uleb128 open_file_resume-open_file_start
		.uleb128 open_file_bytecd-open_file_resume
		.uleb128 0
		.uleb128 0
	open_file_end:
		.text
		.size	open_file, .-open_file
		