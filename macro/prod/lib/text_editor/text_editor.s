.text
dmi_label: 
	.string	"Heap Memory Consumption - %zu bytes | Number of Nodes - %zu" // Declare dmi_label string with memory consumption and node count format
fmt_label: 
	.string	"%s" // Declare fmt_label string with simple string format

.text
.align	2
.global	display_memory_info
.type	display_memory_info, %function
	display_memory_info:
	display_memory_info_start:
		stp	x29, x30, [sp, -48]!      // Store x29 and x30 registers on stack and decrement stack pointer by 48 bytes
		mov	x2, 0                   // Move 0 into x2 register
		mov	x29, sp                 // Move stack pointer value into x29 register
		stp	x19, x20, [sp, 16]       // Store x19 and x20 registers on stack at offset 16 bytes
		adrp	x19, :got:stdscr        // Load address of stdscr into x19 register
		mov	x20, x0                 // Move x0 register value into x20 register
		ldr	x19, [x19, #:got_lo12:stdscr] // Load stdscr from x19 into x19 register
		ldr	x0, [x19]               // Load value from memory pointed by x19 register into x0 register
		str	x21, [sp, 32]           // Store x21 register on stack at offset 32 bytes
		mov	x21, x1                 // Move x1 register value into x21 register
		mov	w1, 2097152             // Move 2097152 into w1 register
		bl	wattr_on                // Call wattr_on function
		mov	x4, x21                 // Move x21 register value into x4 register
		mov	x3, x20                 // Move x20 register value into x3 register
		mov	w1, 0                   // Move 0 into w1 register
		adrp	x2, dmi_label           // Load address of dmi_label into x2 register
		mov	w0, 1                   // Move 1 into w0 register
		add	x2, x2, :lo12:dmi_label // Add the lower 12 bits of the dmi_label address to x2
		bl	mvprintw                // Call mvprintw function
		ldr	x0, [x19]               // Load value from memory pointed by x19 register into x0 register
		mov	x2, 0                   // Move 0 into x2 register
		ldp	x19, x20, [sp, 16]       // Load x19 and x20 registers from stack at offset 16 bytes
		mov	w1, 2097152             // Move 2097152 into w1 register
		ldr	x21, [sp, 32]           // Load x21 register from stack at offset 32 bytes
		ldp	x29, x30, [sp], 48       // Load x29 and x30 registers from stack and increment stack pointer by 48 bytes
		b	wattr_off               // Branch to wattr_off function
	display_memory_info_end:
		.size	display_memory_info, .-display_memory_info // Set the size of the display_memory_info function
	
.text
.align	2
.global	get_user_input
.type	get_user_input, %function
	get_user_input:
	get_user_input_start:
		stp	x29, x30, [sp, -320]!     // Store x29 and x30 registers on stack and decrement stack pointer by 320 bytes
		mov	x29, sp                 // Move stack pointer value into x29 register
		stp	x19, x20, [sp, 16]       // Store x19 and x20 registers on stack at offset 16 bytes
		mov	x20, x0                 // Move x0 register value into x20 register
		adrp	x0, :got:__stack_chk_guard // Load address of __stack_chk_guard into x0 register
		str	x21, [sp, 32]           // Store x21 register on stack at offset 32 bytes
		mov	x19, x8                 // Move x8 register value into x19 register
		ldr	x0, [x0, #:got_lo12:__stack_chk_guard] // Load __stack_chk_guard from x0 into x0 register
		ldr	x1, [x0]                // Load value from memory pointed by x0 register into x1 register
		str	x1, [sp, 312]           // Store x1 register on stack at offset 312 bytes
		mov	x1, 0                   // Move 0 into x1 register
		bl	nocbreak                // Call nocbreak function
		bl	echo                    // Call echo function
		mov	w0, 1                   // Move 1 into w0 register
		bl	curs_set                // Call curs_set function
		adrp	x0, :got:LINES          // Load address of LINES into x0 register
		mov	x3, x20                 // Move x20 register value into x3 register
		mov	w1, 0                   // Move 0 into w1 register
		adrp	x2, fmt_label           // Load address of fmt_label into x2 register
		ldr	x0, [x0, #:got_lo12:LINES] // Load LINES from x0 into x0 register
		add	x2, x2, :lo12:fmt_label // Add the lower 12 bits of the fmt_label address to x2
		add	x20, sp, 56             // Add 56 to stack pointer value and store the result in x20 register
		ldr	w0, [x0]                // Load value from memory pointed by x0 register into w0 register
		sub	w0, w0, #1              // Subtract 1 from w0 register value
		bl	mvprintw                // Call mvprintw function
		adrp	x0, :got:stdscr        // Load address of stdscr into x0 register
		mov	x1, x20                 // Move x20 register value into x1 register
		mov	w2, -1                  // Move -1 into w2 register
		ldr	x0, [x0, #:got_lo12:stdscr] // Load stdscr from x0 into x0 register
		ldr	x0, [x0]                // Load value from memory pointed by x0 register into x0 register
		bl	wgetnstr                // Call wgetnstr function
		mov	w0, 0                   // Move 0 into w0 register
		bl	curs_set                // Call curs_set function
		bl	noecho                  // Call noecho function
		bl	cbreak                  // Call cbreak function
		add	x0, x19, 16             // Add 16 to x19 register value and store the result in x0 register
		str	x0, [x19]               // Store x0 register value at the memory location pointed by x19 register
		mov	x0, x20                 // Move x20 register value into x0 register
		bl	strlen                  // Call strlen function
		str	x0, [sp, 48]            // Store x0 register on stack at offset 48 bytes
		add	x21, x20, x0            // Add x20 and x0 register values and store the result in x21 register
		cmp	x0, 15                  // Compare x0 register value with 15
		bls	get_user_input_gtinpt                    // Branch if lower or same (unsigned) to label get_user_input_gtinpt
		add	x1, sp, 48              // Add 48 to stack pointer value and store the result in x1 register
		mov	x0, x19                 // Move x19 register value into x0 register
		mov	x2, 0                   // Move 0 into x2 register
		bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm // Call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm function
		str	x0, [x19]               // Store x0 register value at the memory location pointed by x19 register
		ldr	x0, [sp, 48]            // Load x0 register from stack at offset 48 bytes
		str	x0, [x19, 16]           // Store x0 register value at the memory location pointed by x19 register offset by 16 bytes
	get_user_input_gtinpt:
		ldr	x0, [x19]               // Load value from memory pointed by x19 register into x0 register
		mov	x2, x21                 // Move x21 register value into x2 register
		mov	x1, x20                 // Move x20 register value into x1 register
		bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_ // Call _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_ function
		ldr	x1, [x19]               // Load value from memory pointed by x19 register into x1 register
		ldr	x0, [sp, 48]            // Load x0 register from stack at offset 48 bytes
		str	x0, [x19, 8]            // Store x0 register value at the memory location pointed by x19 register offset by 8 bytes
				strb	wzr, [x1, x0]           // Store byte with zero value (wzr) at the memory location pointed by x1 register offset by x0
		adrp	x0, :got:__stack_chk_guard // Load address of __stack_chk_guard into x0 register
		ldr	x0, [x0, #:got_lo12:__stack_chk_guard] // Load __stack_chk_guard from x0 into x0 register
		ldr	x2, [sp, 312]           // Load x2 register from stack at offset 312 bytes
		ldr	x1, [x0]                // Load value from memory pointed by x0 register into x1 register
		subs	x2, x2, x1             // Subtract x1 register value from x2 register value and store the result in x2 register
		mov	x1, 0                   // Move 0 into x1 register
		beq	get_user_input_ret                    // Branch if equal to label get_user_input_ret
		bl	__stack_chk_fail        // Call __stack_chk_fail function
	get_user_input_ret:
		mov	x0, x19                 // Move x19 register value into x0 register
		ldp	x19, x20, [sp, 16]       // Load x19 and x20 registers from stack at offset 16 bytes
		ldr	x21, [sp, 32]           // Load x21 register from stack at offset 32 bytes
		ldp	x29, x30, [sp], 320      // Load x29 and x30 registers from stack and increment stack pointer by 320 bytes

		ret                         // Return from function
	get_user_input_end:
		.size	get_user_input, .-get_user_input // Set the size of the get_user_input function

.align	2
.global	handle_mouse
.type	handle_mouse, %function
	handle_mouse:
	handle_mouse_start:
		cmp	w1, 1                   // Compare w1 register value with 1
		beq	.L13                   // Branch if equal to label .L13
		stp	x29, x30, [sp, -64]!     // Store x29 and x30 registers on stack and decrement stack pointer by 64 bytes
		mov	x29, sp                 // Move stack pointer value into x29 register
		stp	x19, x20, [sp, 16]       // Store x19 and x20 registers on stack at offset 16 bytes
		mov	w20, w1                 // Move w1 register value into w20 register
		adrp	x1, :got:LINES          // Load address of LINES into x1 register
		stp	x21, x22, [sp, 32]       // Store x21 and x22 registers on stack at offset 32 bytes
		mov	x22, x2                 // Move x2 register value into x22 register
		mov	x21, x3                 // Move x3 register value into x21 register
		ldr	x1, [x1, #:got_lo12:LINES] // Load LINES from x1 into x1 register
		ldr	w4, [x1]                // Load value from memory pointed by x1 register into w4 register
		str	x23, [sp, 48]           // Store x23 register on stack at offset 48 bytes
		mov	w23, w0                 // Move w0 register value into w23 register
		sub	w19, w4, #3              // Subtract 3 from w4 register value and store the result in w19 register
		mov	x0, x5                   // Move x5 register value into x0 register
		bl	list_size                // Call list_size function
		cmp	w19, w0                  // Compare w19 register value with w0 register value
		csel	w4, w19, w0, lt          // Conditional select: if w19 < w0, move w19 into w4, else move w0 into w4
		cmp	w20, 2                   // Compare w20 register value with 2
		ccmp	w20, w4, 0, gt           // Conditional compare: if w20 > w4, set flags accordingly
		bgt	handle_mouse_b_to_ret                    // Branch if greater to label handle_mouse_b_to_ret
		str	w23, [x22]              // Store w23 register value at the memory location pointed by x22 register
		str	w20, [x21]              // Store w20 register value at the memory location pointed by x21 register
	handle_mouse_ret:
		ldp	x19, x20, [sp, 16]       // Load x19 and x20 registers from stack at offset 16 bytes
		ldp	x21, x22, [sp, 32]       // Load x21 and x22 registers from stack at offset 32 bytes
		ldr	x23, [sp, 48]            // Load x23 register from stack at offset 48 bytes
		ldp	x29, x30, [sp], 64        // Load x29 and x30 registers from stack and increment stack pointer by 64 bytes

		ret                         // Return from function
	handle_mouse_b_to_ret:
		cmp	w20, w4                  // Compare w20 register value with w4 register value
		ble	handle_mouse_ret                     // Branch if lower or equal to label handle_mouse_ret
		str	w23, [x22]              // Store w23 register value at the memory location pointed by x22 register
		str	w4, [x21]               // Store w4 register value at the memory location pointed by x21 register
		b	handle_mouse_ret                     // Branch to label handle_mouse_ret
	.L13:
		ret                         // Return from function
	handle_mouse_end:
		.size	handle_mouse, .-handle_mouse // Set the size of the handle_mouse function
