.text                       		// Start of the text (code) section
.align	2                   		// Align at 2-byte boundary
.global	make_node           		// Declare the global symbol for make_node function
.type	make_node, %function		// Specify the symbol type as function
	make_node:                      // Function label
	make_node_start:                // Local label for function begin
		stp	x29, x30, [sp, -32]!    // Store x29 (FP) and x30 (LR) on the stack, and update the stack pointer
		mov	x29, sp                 // Set x29 (FP) to the current stack pointer
		stp	x19, x20, [sp, 16]      // Store x19 and x20 on the stack
									// x20 now holds the address of the input string `line`
		mov	x20, x0                 // Move the input string `line` address to x20
		mov	x0, 40                  // Move the size of Node (40 bytes) to x0 to be used as an argument for malloc
		bl	malloc                  // Call malloc to allocate memory for Node
		cbnz	x0, .L2             // If the result of malloc (x0) is not zero, jump to .L2
		mov	x0, 8                   // Move 8 to x0 to be used as an argument for __cxa_allocate_exception
		bl	__cxa_allocate_exception // Call __cxa_allocate_exception to allocate memory for an exception object
		adrp	x1, :got:_ZTVSt9bad_alloc // Load the address of the global offset table (GOT) entry for the vtable of std::bad_alloc into x1
		adrp	x2, :got:_ZNSt9bad_allocD1Ev // Load the address of the GOT entry for the destructor of std::bad_alloc into x2
		ldr	x1, [x1, #:got_lo12:_ZTVSt9bad_alloc] // Load the actual vtable address of std::bad_alloc into x1
		ldr	x2, [x2, #:got_lo12:_ZNSt9bad_allocD1Ev] // Load the actual destructor address of std::bad_alloc into x2
		add	x1, x1, 16              // Add 16 to x1 (vtable address) to get the correct offset
		str	x1, [x0]                // Store the vtable address in the exception object
		adrp	x1, :got:_ZTISt9bad_alloc // Load the address of the GOT entry for the typeinfo of std::bad_alloc into x1
		ldr	x1, [x1, #:got_lo12:_ZTISt9bad_alloc] // Load the actual typeinfo address of std::bad_alloc into x1
		bl	__cxa_throw             // Call __cxa_throw to throw the std::bad_alloc exception
	.L2:                            // Local label .L2
		mov	x19, x0                 // Move the allocated memory address for the new node to x19
		mov	x1, x20                 // Move the input string `line` address to x1
		bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_ // Call the string copy constructor with input string `line`
		mov	x0, x19                 // Move the new node address to x0
		str	xzr, [x19, 32]          // Initialize the next pointer to null (zero)
		ldp	x19, x20, [sp, 16]      // Load x19 and x20 from the stack
		ldp	x29, x30, [sp], 32      // Load x29 (FP) and x30 (LR) from the stack and update the stack pointer
		ret                         // Return from the function
	make_node_end:                  // Local label for function end
		.size	make_node, .-make_node // Set the size of make_node function in the symbol table
		.align	2                   // Align at 2-byte boundary
		.global	destroy_node        // Declare the global symbol for destroy_node function
		.type	destroy_node, %function // Specify the symbol type as function

	destroy_node:                   // Function label
	destroy_node_start:             // Local label for function begin
		stp	x29, x30, [sp, -32]!    // Store x29 (FP) and x30 (LR) on the stack, and update the stack pointer
		mov	x29, sp                 // Set x29 (FP) to the current stack pointer
		str	x19, [sp, 16]           // Store x19 on the stack
		mov	x19, x0                 // Move the input node address to x19
		bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv // Call the string dispose function
		mov	x0, x19                 // Move the node address to x0
		ldr	x19, [sp, 16]           // Load x19 from the stack
		ldp	x29, x30, [sp], 32      // Load x29 (FP) and x30 (LR) from the stack and update the stack pointer
		b	free                    // Branch to free to deallocate memory for the node
	destroy_node_end:               // Local label for function end
		.size	destroy_node, .-destroy_node // Set the size of destroy_node function in the symbol table
		.align	2                   // Align at 2-byte boundary
		.global	list_push_back      // Declare the global symbol for list_push_back function
		.type	list_push_back, %function // Specify the symbol type as function

	list_push_back:                 // Function label
	list_push_back_start:           // Local label for function begin
		stp	x29, x30, [sp, -32]!    // Store x29 (FP) and x30 (LR) on the stack and update the stack pointer
		mov	x29, sp                 // Set x29 (FP) to the current stack pointer
		str	x19, [sp, 16]           // Store x19 on the stack
		mov	x19, x0                 // Move the input LinkedList address to x19
		mov	x0, x1                  // Move input string `line` address to x0
		bl	make_node // Call make_node function with input string `line`
		ldr	x1, [x19]               // Load the head of the LinkedList into x1
		cbnz	x1, .L7             // If x1 (head) is not zero, jump to .L7
		str	x0, [x19]               // Store the new node address as head of the LinkedList
	.L6:                            // Local label .L6
		ldr	x19, [sp, 16]           // Load x19 from the stack
		ldp	x29, x30, [sp], 32      // Load x29 (FP) and x30 (LR) from the stack, and update the stack pointer
		ret                         // Return from the function
	.L7:                            // Local label .L7
		mov	x2, x1                  // Move the head of the LinkedList to x2
		ldr	x1, [x1, 32]            // Load the next pointer of the current node into x1
		cbnz	x1, .L7             // If x1 (next pointer) is not zero, jump to .L7
		str	x0, [x2, 32]            // Store the new node address as the next pointer of the last node
		b	.L6                     // Jump to .L6
	list_push_back_end:             // Local label for function end
		.size	list_push_back, .-list_push_back // Set the size of list_push_back function in the symbol table
		.align	2                   // Align at 2-byte boundary
		.global	list_erase_next     // Declare the global symbol for list_erase_next function
		.type	list_erase_next, %function // Specify the symbol type as function

	list_erase_next:                // Function label
	list_erase_next_start:          // Local label for function begin
		ldr	x1, [x0]                // Load the input node address to x1
		ldr	x0, [x1, 32]            // Load the next pointer of the input node into x0
		cbz	x0, .L12                // If x0 (next pointer) is zero, jump to .L12
		ldr	x2, [x0, 32]            // Load the next pointer of the next node into x2
		str	x2, [x1, 32]            // Update the next pointer of the input node to skip over the next node
		b	destroy_node            // Branch to destroy_node function to deallocate the memory of the next node
	.L12:                           // Local label .L12
		ret                         // Return from the function
	list_erase_next_end:            // Local label for function end
		.size	list_erase_next, .-list_erase_next // Set the size of list_erase_next function in the symbol table
		.align	2                   // Align at 2-byte boundary
		.global	list_clear // Declare the global symbol for list_clear function
		.type	list_clear, %function // Specify the symbol type as function
	list_clear:                     // Function label
	list_clear_start:               // Local label for function begin
		stp	x29, x30, [sp, -32]!    // Store x29 (FP) and x30 (LR) on the stack, and update the stack pointer
		mov	x29, sp                 // Set x29 (FP) to the current stack pointer
		stp	x19, x20, [sp, 16]      // Store x19 and x20 on the stack
		mov	x19, x0                 // Move the input LinkedList address to x19
		ldr	x0, [x0]                // Load the head of the LinkedList into x0
	.L15:                           // Local label .L15
		cbnz	x0, .L16            // If x0 (head) is not zero, jump to .L16
		str	xzr, [x19]              // Set the head of the LinkedList to null (zero)
		ldp	x19, x20, [sp, 16]      // Load x19 and x20 from the stack
		ldp	x29, x30, [sp], 32      // Load x29 (FP) and x30 (LR) from the stack, and update the stack pointer
		ret                         // Return from the function
	.L16:                           // Local label .L16
		ldr	x20, [x0, 32]           // Load the next pointer of the current node into x20
		bl	destroy_node  // Call destroy_node function to deallocate the memory of the current node
		mov	x0, x20                 // Move the next pointer to x0
		b	.L15                    // Jump to .L15
	list_clear_end:                 // Local label for function end
		.size	list_clear, .-list_clear // Set the size of list_clear function in the symbol table
		.align	2                   // Align at 2-byte boundary
		.global	list_size // Declare the global symbol for list_size function
		.type	list_size, %function// Specify the symbol type as function

	list_size:               		// Function label
	list_size_start:                // Local label for function begin
		ldr	x1, [x0]                // Load the head of the LinkedList into x1
		mov	x0, 0                   // Initialize the list size counter to 0
	.L19:                           // Local label .L19
		cbnz	x1, .L20            // If x1 (head) is not zero, jump to .L20
		ret                         // Return from the function
	.L20:                           // Local label .L20
		add	x0, x0, 1               // Increment the list size counter
		ldr	x1, [x1, 32]            // Load the next pointer of the current node into x1
		b	.L19                    // Jump to .L19
	list_size_end:                  // Local label for function end
		.size	list_size, .-list_size // Set the size of list_size function in the symbol table
		.align	2                   // Align at 2-byte boundary
		.global	list_advance        // Declare the global symbol for list_advance function
		.type	list_advance, %function // Specify the symbol type as function

	list_advance:                   // Function label
	list_advance_start:             // Local label for function begin
	.L23:                           // Local label .L23
		cmp	w1, 0                   // Compare the input integer (w1) with 0
		ble	.L21                    // If w1 is less than or equal to 0, jump to .L21
		sub	w1, w1, #1              // Decrement w1 by 1
		cbz	x0, .L21                // If x0 (input node) is zero, jump to .L21
		ldr	x0, [x0, 32]            // Load the next pointer of the current node into x0
		b	.L23                    // Jump to .L23
	.L21:                           // Local label .L21
		ret                         // Return from the function
	list_advance_end:               // Local label for function end
		.size	list_advance, .-list_advance // Set the size of list_advance function in the symbol table
