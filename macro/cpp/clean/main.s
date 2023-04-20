.text
pos_str:
	.string	"%s: __pos (which is %zu) > this->size() (which is %zu)"
replace_with:
	.string	"Replace with: "
	.global	SEARCHFOR
search_for:
	.string	"Search for: "
	.global	SEARCH
search_key:
	.string	"Search: "
	.global	NAME
name_key:
	.string	"WordPerfect-Resurrected"
	.global	CONTROLS
shortcuts_str:
	.string	"^X:Exit  ^O:Save  ^W:Search  ^T:Replace"
empty_str:
	.string	""
fmt_str:
	.string	"%s"
erase_str:
	.string	"basic_string::erase"
insert_str:
	.string	"basic_string::insert"

.data
.align	2
.type	NODE_MEMORY_SIZE, %object
.size	NODE_MEMORY_SIZE, 4
NODE_MEMORY_SIZE:
	.word	40
	.bss
	.set	.LANCHOR0,. + 0

.type	_ZStL8__ioinit, %object
.size	_ZStL8__ioinit, 1
_ZStL8__ioinit:
	.zero	1
	.section	.data.rel.local,"aw"
	
.align	3
.type	REPLACEWITH, %object
.size	REPLACEWITH, 8
REPLACEWITH:
	.xword	replace_with

.type	SEARCHFOR, %object
.size	SEARCHFOR, 8
SEARCHFOR:
	.xword	search_for

.type	SEARCH, %object
.size	SEARCH, 8
SEARCH:
	.xword	search_key

.type	NAME, %object
.size	NAME, 8
NAME:
	.xword	name_key

.type	CONTROLS, %object
.size	CONTROLS, 8
CONTROLS:
	.xword	shortcuts_str

.text
.align	2
.type	basic_string_check.isra.0, %function
basic_string_check.isra.0:
.LFB2096:
	mov	x3, x0		// Move x0 to x3
	mov	x0, x1		// Move x1 to x0
	cmp	x1, x3		// Compare x1 and x3
	bls	.L2		// Branch if lower or same to .L2
	stp	x29, x30, [sp, -16]!	// Store pair x29, x30 onto the stack and decrement the stack pointer

	mov	x1, x2		// Move x2 to x1
	mov	x2, x0		// Move x0 to x2
	mov	x29, sp		// Move sp (stack pointer) to x29
	adrp	x0, pos_str	// Load the page address of the symbol pos_str into x0
	add	x0, x0, :lo12:pos_str	// Add the offset of pos_str to the value in x0
	bl	_ZSt24__throw_out_of_range_fmtPKcz	// Call the function _ZSt24__throw_out_of_range_fmtPKcz
.L2:
	ret			// Return from the function
.LFE2096:
	.size	basic_string_check.isra.0, .-basic_string_check.isra.0	// Set the size of the function basic_string_check.isra.0

.align	2
.type	basic_string.isra.0, %function
basic_string.isra.0:
.LFB2097:
	stp	x29, x30, [sp, -32]!	// Store pair x29, x30 onto the stack and decrement the stack pointer
	mov	x2, x1		// Move x1 to x2
	mov	x29, sp		// Move sp (stack pointer) to x29
	stp	x19, x20, [sp, 16]	// Store pair x19, x20 onto the stack at position [sp, 16]

	mov	x19, x1		// Move x1 to x19
	mov	x20, x0		// Move x0 to x20
	ldr	x1, [x2], 16	// Load the value at [x2] into x1 and then increment x2 by 8 bytes
	ldr	x0, [x0]	// Load the value at [x0] into x0
	cmp	x1, x2		// Compare x1 and x2
	bne	.L7		// Branch if not equal to .L7
	cmp	x20, x19		// Compare x20 and x19
	beq	.L8		// Branch if equal to .L8
	ldr	x2, [x19, 8]		// Load the value at [x19, 8] into x2
	cbz	x2, .L9		// Compare and branch if zero to .L9
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm	// Call the function _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm
.L9:
	ldr	x1, [x20]	// Load the value at [x20] into x1
	ldr	x0, [x19, 8]	// Load the value at [x19, 8] into x0
	str	x0, [x20, 8]	// Store x0 at [x20, 8]
	strb	wzr, [x1, x0]	// Store the zero register at [x1, x0]
.L8:
	ldr	x0, [x19]	// Load the value at [x19] into x0
	str	xzr, [x19, 8]	// Store the zero register at [x19, 8]
	strb	wzr, [x0]	// Store the zero register at [x0]
	ldp	x19, x20, [sp, 16]	// Load the values at [sp, 16] into x19 and x20
	ldp	x29, x30, [sp], 32	// Load x29, x30 from a position 32 bytes above [sp], and increment the stack pointer

	ret			// Return from the function
.L7:
	add	x4, x20, 16	// Add x20 and 16, store result in x4
	cmp	x0, x4		// Compare x0 and x4
	beq	.L12		// Branch if equal to .L12
	ldr	x3, [x20, 16]	// Load the value at [x20, 16] into x3
.L10:
	str	x1, [x20]	// Store x1 at [x20]
	ldr	x1, [x19, 8]	// Load the value at [x19, 8] into x1
	str	x1, [x20, 8]	// Store x1 at [x20, 8]
	ldr	x1, [x19, 16]	// Load the value at [x19, 16] into x1
	str	x1, [x20, 16]	// Store x1 at [x20, 16]
	cbz	x0, .L11	// Compare and Branch on Zero: If x0 (first argument) is zero, branch to label .L11
	str	x0, [x19]	// Store x0 to the memory location pointed by x19
	str	x3, [x19, 16]	// Store x3 to the memory location at x19 + 16 bytes
	b	.L8		// Unconditional branch to label .L8
.L12:
	mov	x0, 0		// Move 0 into x0
	b	.L10		// Unconditional branch to label .L10
.L11:
	str	x2, [x19]	// Store x2 to the memory location pointed by x19
	b	.L8		// Unconditional branch to label .L8
.LFE2097:
	.size	basic_string.isra.0, .-basic_string.isra.0	// Size definition for the basic_string.isra.0 function

.section	.text.startup,"ax",@progbits	// Begin the .text.startup section with flags "ax"
.align	2				// Align to a 2^2 = 4 byte boundary
.global	main				// Declare main as a global symbol
.type	main, %function			// Declare main as a function
main:					// Start the label for main function
.LFB1707:
	stp	x29, x30, [sp, -384]!	// Store Pair: Store x29 (frame pointer) and x30 (link register) at location pointed by (stack pointer - 384) and update stack pointer with new value
	mov	x29, sp		// Move current value of stack pointer to x29 (frame pointer)
	stp	x19, x20, [sp, 16]	// Store the pair x19 and x20 at memory location [sp + 16]
	mov	w20, w0		// Move w0 (lower 32 bits of x0) to w20
	adrp	x0, :got:__stack_chk_guard	// Address of Page: Get the page address of the GOT entry for __stack_chk_guard symbol and store in x0

	stp	x21, x22, [sp, 32]	// Store the pair x21 and x22 at memory location [sp + 32]
	mov	x21, x1		// Move x1 (2nd argument) to x21
	adrp	x19, :got:stdscr	// Address of Page: Get the page address of the GOT entry for 'stdscr' symbol and store in x19
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// Load Register: Load the lower 12 bits of the GOT entry for __stack_chk_guard to x0
	stp	x23, x24, [sp, 48]	// Store the pair x23 and x24 at memory location [sp + 48]

	add	x23, sp, 184	// Add: Add 184 to stack pointer and store the result in x23
	stp	x25, x26, [sp, 64]	// Store the pair x25 and x26 at memory location [sp + 64]
	stp	x27, x28, [sp, 80]	// Store the pair x27 and x28 at memory location [sp + 80]

	ldr	x1, [x0]	// Load Register: Load the value from memory location stored in x0 to x1
	str	x1, [sp, 376]	// Store x1 at memory location [sp + 376]
	mov	x1, 0		// Move 0 into x1
.LEHB0:
	bl	initscr		// Branch with Link: Call initscr(), which initializes the curses library and the terminal
	bl	raw		// Branch with Link: Call raw(), which disables line buffering for the terminal
	ldr	x0, [x19, #:got_lo12:stdscr]	// Load Register: Load the lower 12 bits of the GOT entry for stdscr to x0
	mov	w1, 1		// Move the value 1 to w1
	ldr	x0, [x0]	// Load Register: Load the value from memory location stored in x0 to x0
	bl	keypad		// Branch with Link: Call keypad(), enabling special keys handling
	bl	noecho		// Branch with Link: Call noecho(), disabling the display of typed characters
.LEHE0:
	str	wzr, [sp, 124]	// Store the zero (wzr) register at memory location [sp + 124]
	mov	w0, 3		// Move the value 3 to w0
	stp	wzr, w0, [sp, 116]	// Store the pair zero (wzr) and w0 at memory location [sp + 116]
	add	x0, sp, 200	// Add: Add 200 to stack pointer and store the result in x0
	stp	xzr, xzr, [sp, 128]	// Store the pair zero (xzr) and zero (xzr) at memory location [sp + 128]
	cmp	w20, 1		// Compare w20 with 1
	str	xzr, [sp, 144]	// Store the zero (xzr) register at memory location [sp + 144]
	add	x20, sp, 144	// Add: Add 144 to stack pointer and store the result in x20
	str	x0, [sp, 184]	// Store x0 at memory location [sp + 184]
	str	xzr, [sp, 192]	// Store the zero (xzr) register at memory location [sp + 192]
	strb	wzr, [sp, 200]	// Store the zero register (wzr) at memory location [sp + 200] as a byte
	bgt	.L18		// Branch if Greater Than: If comparison result (CMP) is greater than, branch to label .L18
.L20:
	adrp	x2, empty_str	// Address of Page: Get the page address of empty_str and store it in x2
	add	x2, x2, :lo12:empty_str	// Add: Add lower 12 bits of empty_str to x2
	add	x0, sp, 360	// Add: Add 360 to stack pointer and store the result in x0
	mov	x1, x2		// Move x2 (empty_str) to x1
	str	x0, [sp, 344]	// Store x0 at memory location [sp + 344]
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_	// Branch with Link: Call _ZNSt7__cxx...(truncated)
	ldr	x0, [sp, 344]	// Load Register: Load the value from memory location [sp + 344] to x0
	str	xzr, [sp, 352]	// Store the zero (xzr) register at memory location [sp + 352]
	add	x21, sp, 344	// Add: Add 344 to stack pointer and store the result in x21
	mov	x1, x21		// Move x21 to x1
	strb	wzr, [x0]	// Store the zero (wzr) register at memory location [x0] as a byte
	mov	x0, x20		// Move x20 to x0
.LEHB1:
	bl	list_push_back	// Branch with Link: Call list_push_back() to add an element to the list
.LEHE1:
	b	.L107		// Unconditional branch to label .L107
.L18:
	ldr	x21, [x21, 8]	// Load Register: Load the value from memory location [x21 + 8] to x21
	mov	x0, x21		// Move x21 to x0
	bl	strlen		// Branch with Link: Call strlen() to get the length
	mov	x3, x21                                // Move x21 into x3
	mov	x4, x0                                 // Move x0 into x4
	mov	x2, 0                                  // Move 0 into x2
	mov	x0, x23                                // Move x23 into x0
	mov	x1, 0                                  // Move 0 into x1
	.LEHB2:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm   // Call basic_string::_M_replace with the given parameters
	ldr	x0, [sp, 184]                             // Load the value at sp+184 into x0
	add	x3, sp, 136                              // Add sp+136 to x3 and store the result in x3
	add	x2, sp, 128                              // Add sp+128 to x2 and store the result in x2
	mov	x1, x20                                // Move x20 into x1
	bl	open_file                               // Call open_file function with given parameters
	.LEHE2:
	ldr	x0, [sp, 144]                             // Load the value at sp+144 into x0
	cbz	x0, .L20                                // Check if x0 is 0, if it is, branch to label .L20
	.L21:
	ldr	x0, [sp, 144]                             // Load the value at sp+144 into x0
	str	x0, [sp, 152]                             // Store x0 into the memory location at sp+152
	add	x0, sp, 232                              // Add sp+232 to x0 and store the result in x0
	str	x0, [sp, 216]                             // Store x0 into the memory location at sp+216
	add	x0, sp, 264                              // Add sp+264 to x0 and store the result in x0
	str	xzr, [sp, 224]                            // Store zero register value (0) into the memory location at sp+224
	strb	wzr, [sp, 232]                            // Store zero register value (0) into the memory location at sp+232 as a byte
	str	x0, [sp, 248]                             // Store x0 into the memory location at sp+248
	str	xzr, [sp, 256]                            // Store zero register value (0) into the memory location at sp+256
	strb	wzr, [sp, 264]                            // Store zero register value (0) into the memory location at sp+264 as a byte
	.LEHB3:
	bl	has_colors                              // Call has_colors function
	b	.L108                                   // Unconditionally branch to label .L108
	.L107:
	mov	x0, x21                                // Move x21 into x0
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv // Call basic_string::_M_dispose with given parameters
	ldr	x0, [sp, 136]                             // Load the value at sp+136 into x0
	add	x0, x0, 1                                // Add 1 to x0 and store the result in x0
	str	x0, [sp, 136]                             // Store x0 into the memory location at sp+136
	b	.L21                                     // Unconditionally branch to label .L21
	.L108:
	tst	w0, 255                                  // Test bitwise AND between w0 and 255
	beq	.L22                                    // If result of test was zero, branch to .L22
	bl	start_color                              // Call start_color function
	mov	w2, 0                                   // Move 0 into w2
	mov	w1, 3                                   // Move 3 into w1
	mov	w0, 1                                   // Move 1 into w0
	bl	init_pair                               // Call init_pair function with given parameters
	.L22:
	mov	w2, 4                                   // Move 4 into w2
	mov	w1, 7                                   // Move 7 into w1
	mov	w0, 1                                   // Move 1 into w0
	bl	init_pair                               // Call init_pair function with given parameters
	mov	x1, 0                                   // Move 0 into x1
	mov	w0, 536870911                           // Move 536870911 into w0
	bl	mousemask                                // Call mousemask function with given parameters
	adrp	x0, :got:NAME                           // Load the address containing the _GLOBAL_OFFSET_TABLE_ entry of NAME into x0
	adrp	x22, :got:LINES                         // Load the address containing the _GLOBAL_OFFSET_TABLE_ entry of LINES into x22
	ldr	x0, [x0, #:got_lo12:NAME]              // Load the _GLOBAL_OFFSET_TABLE_ entry of NAME into x0
	str	x0, [sp, 96]                             // Store x0 into the memory location at sp+96
	ldr	x0, [x22, #:got_lo12:LINES]            // Load the _GLOBAL_OFFSET_TABLE_ entry of LINES into x0
	str	x0, [sp, 104]                             // Store x0 into the memory location at sp+104
	.L56:
	bl	clear                                   // Call clear function
	ldr	x0, [x19, #:got_lo12:stdscr]               // Load the _GLOBAL_OFFSET_TABLE_ entry of stdscr into x0
	mov	x2, 0                                   // Move 0 into x2
	mov	w1, 262144                              // Move 262144 into w1
	ldr	x0, [x0]                               // Load the value pointed by x0 into x0
	bl	wattr_on                                // Call wattr_on function with given parameters
	ldr	x0, [sp, 96]                             // Load the value at sp+96 into x0
	mov	w1, 0                                   // Move 0 into w1
	ldr	x2, [x0]                               // Load the value pointed by x0 into x2
	mov	w0, 0                                   // Move 0 into w0
	bl	mvprintw                                // Call mvprintw function with given parameters
	ldr	x0, [x19, #:got_lo12:stdscr]               // Load the _GLOBAL_OFFSET_TABLE_ entry of stdscr into x0
	mov	x2, 0                                   // Move 0 into x2
	mov	w1, 262144                              // Move 262144 into w1
	ldr	x0, [x0]                               // Load the value pointed by x0 into x0
	bl	wattr_off                              // Call wattr_off function with given parameters
	ldp	x0, x1, [sp, 128]                             // Load pair of 64-bit values from memory at sp+128 into register pair x0, x1
	bl	display_memory_info                       // Call display_memory_info function with given parameters
	ldr	x21, [sp, 144]                             // Load the value at sp+144 into x21
	adrp	x25, fmt_str                            // Load the address containing fmt_str into x25
	add	x25, x25, :lo12:fmt_str                   // Add the low 12 bits of fmt_str to x25
	mov	w24, 0                                   // Move 0 into w24
	mov	w0, 3                                   // Move 3 into w0
	.L23:
	cbnz	x21, .L25                                // Compare x21 with 0, if not equal, branch to label .L25
	add	x24, sp, 152                             // Add sp+152 to x24 and store the result in x24
	add	x27, sp, 124                             // Add sp+124 to x27 and store the result in x27
	add	x26, sp, 120                             // Add sp+120 to x26 and store the result in x26
	add	x25, sp, 116                             // Add sp+116 to x25 and store the result in x25
	add	x21, sp, 216                             // Add sp+216 to x21 and store the result in x21
	mov	x5, x24                                 // Move x24 into x5
	mov	x4, x27                                 // Move x27 into x4
	mov	x3, x26                                 // Move x26 into x3
	mov	x2, x25                                 // Move x25 into x2
	mov	x1, x21                                 // Move x21 into x1
	mov	x0, x20                                 // Move x20 into x0
	bl	search_text                              // Call search_text function with given parameters
	b	.L109                                   // Unconditionally branch to label .L109
	.L25:
	ldr	w1, [sp, 124]                             // Load the value at sp+124 into w1
	cmp	w1, w24                                 // Compare w1 with w24
	bgt	.L24                                    // If w1 is greater than w24, branch to label .L24
	ldr	x1, [sp, 104]                             // Load the value at sp+104 into x1
	ldr	w1, [x1]                               // Load the value pointed by x1 into w1
	sub	w1, w1, #1                              // Subtract 1 from w1 and store the result in w1
	cmp	w1, w0                                 // Compare w1 with w0
	ble	.L24                                    // If w1 is less than or equal to w0, branch to label .L24
	ldr	x3, [x21]                               // Load the value pointed by x21 into x3
	add	w26, w0, 1                              // Add 1 to w0 and store the result in w26
    mov     x2, x25         // Move the value from x25 register to x2 register
    mov     w1, 0           // Set the value of w1 register to 0
    bl      mvprintw        // Call the function mvprintw with arguments stores in w1 and x2 registers
    mov     w0, w26         // Move the value from w26 register to w0 register
.L24:
    add     w24, w24, 1     // Increment the value stored in w24 register by 1
    ldr     x21, [x21, 32]  // Load the value from the memory address (x21 + 32) into x21 register
    b       .L23            // Unconditionally branch to the .L23 label
.L109:
	/**
	Moves the values between the various registers, calls the mvprintw 
	function with proper arguments, increments the 
	value in one register, and loads data from the memory 
	address (x21+32) into x21 register. It then branches to the .L23 labe
	**/
    ldp     w1, w0, [sp, 116] // Load the values from the memory address (sp + 116) into w1 and w0 registers
    bl      move                // Call the function 'move' with arguments stored in w1 and w0 registers
    /**
	This code first loads values into the w1 and w0 registers and then 
	calls the 'move' function with those arguments.
	**/
	ldr     x0, [x19, #:got_lo12:stdscr]  // Load the address of stdscr into x0 register
    mov     x2, 0                         // Move the value 0 into x2 register
    mov     w1, 2359296                   // Move the value 2359296 into w1 register
    ldr     x0, [x0]                      // Load the value of the x0 register from memory
    bl      wattr_on                      // Call wattr_on function with arguments stored in w1 and x2 registers
	/**
	The above code calls the wattr_on function, 
	which enables the attributes for the specified window.
	**/
    adrp    x1, :got:CONTROLS                                      // Load the high part of the address of CONTROLS into x1 register
    ldr     x0, [x22, #:got_lo12:LINES]                            // Load the low part of the address of LINES into x0 register
    ldr     x1, [x1, #:got_lo12:CONTROLS]                          // Load the low part of the address of CONTROLS into x1 register
    ldr     w0, [x0]                                                // Load the value from the memory at address x0 into the w0 register
    ldr     x2, [x1]                                                // Load the value from the memory at address x1 into the x2 register
    sub     w0, w0, #1                                              // Subtract 1 from the value in the w0 register and store the result in w0
	/**
	Above code loads the addresses of the LINES and CONTROLS variables 
	from memory into their respective registers, then subtracts 1 from 
	the value in w0 register.
	**/
    mov     w1, 0                        // Move the value 0 into w1 register
    bl      mvprintw                     // Call the mvprintw function with the arguments stored in w0 and w1 registers

    ldr     x0, [x19, #:got_lo12:stdscr]  // Load the address of stdscr into x0 register
    mov     x2, 0                         // Move the value 0 into x2 register
    mov     w1, 2359296                   // Move the value 2359296 into w1 register
    ldr     x0, [x0]                      // Load the value of the x0 register from memory
    bl      wattr_off                     // Call wattr_off function with arguments stored in w1 and x2 registers

	ldp	w1, w0, [sp, 116] // Load the values stored in memory at address (sp + 116) into w1 and w0.
	bl	move            // Branch with link to subroutine 'move' with arguments in w1 and w0.
	ldr	x0, [x19, #:got_lo12:stdscr] // Load the address of 'stdscr' into x0 (using global offset table).
	ldr	x0, [x0]         // Load the value of 'stdscr' into x0.
	bl	wgetch           // Call wgetch() function to get a character from the user.
	mov	w28, w0          // Store the returned value from wgetch() in w28.
	cmp	w0, 263          // Compare the value in w0 to 263.
	bgt	.L26             // Branch to label .L26 if the value is greater than 263.
	cmp	w0, 257          // Compare the value in w0 to 257.
	bgt	.L27             // Branch to label .L27 if the value is greater than 257.
	cmp	w0, 24           // Compare the value in w0 to 24.
	bgt	.L28             // Branch to label .L28 if the value is greater than 24.
	cmp	w0, 9            // Compare the value in w0 to 9.
	bgt	.L29             // Branch to label .L29 if the value is greater than 9.
.L30:
	mov	w0, w28          // Move the value of w28 to w0.
	bl	isprint          // Call isprint() function to check whether the character in w0 is printable.
	cbz	w0, .L56         // If w0 is zero (i.e. character is not printable), branch to label .L56.
	ldr	x21, [sp, 152]   // Load the value at memory address (sp + 152) into x21.
	adrp	x2, insert_str  // Load the address of 'insert_str' into x2.
	ldrsw	x1, [sp, 116]   // Load the signed word value at memory address (sp + 116) into x1.
	and	w28, w28, 255    // Perform a bitwise AND operation between w28 and 255, store the result in w28.
	add	x2, x2, :lo12:insert_str  // Add the lower 12 bits of the offset of 'insert_str' to x2.
	ldr	x0, [x21, 8]     // Load the value at memory address (x21 + 8) into x0.
	bl	basic_string_check.isra.0  // Call basic_string_check.isra.0() function.
	b	.L110             // Branch to label .L110.
.L27:
	sub	w1, w0, #258      // Subtract 258 from w0, store the result in w1.
	cmp	w1, 5            // Compare the value in w1 to 5.
	bhi	.L30             // Branch to label .L30 if the value is greater than 5.
	adrp	x0, .L32         // Load the address of '.L32' into x0.
	add	x0, x0, :lo12:.L32 // Add the lower 12 bits of the address offset of '.L32' to x0.
	ldrh	w0, [x0,w1,uxtw #1] // Load the halfword value stored in memory at address (x0 + 2 * w1) into w0.
	adr	x1, .Lrtx32      // Load the address of '.Lrtx32' into x1.
	add	x0, x1, w0, sxth #2   // Add x1, w0 (sign-extended half-word element) * 4 to x0.
	br	x0              // Branch to the address held in x0.

.Lrtx32:
	.section	.rodata        // Switch to the read-only data section.
	.align	0               // Align to the next power-of-2 bytes boundary.
	.align	2               // Align to next 2^2=4 bytes boundary.
.L32:
	.2byte	(.L36 - .Lrtx32) / 4       // Store the relative offset, divided by 4, between labels '.L36' and '.Lrtx32' as a 16-bit value.
	.2byte	(.L35 - .Lrtx32) / 4       // Same as above, for labels '.L35' and '.Lrtx32'.
	.2byte	(.L34 - .Lrtx32) / 4       // Same as above, for labels '.L34' and '.Lrtx32'.
	.2byte	(.L33 - .Lrtx32) / 4       // Same as above, for labels '.L33' and '.Lrtx32'.
	.2byte	(.L30 - .Lrtx32) / 4       // Same as above, for labels '.L30' and '.Lrtx32'.
	.2byte	(.L31 - .Lrtx32) / 4       // Same as above, for labels '.L31' and '.Lrtx32'.
	.section	.text.startup // Switch to the startup text section.
.L29:
	sub	w1, w0, #10         // Subtract 10 from w0, store the result in w1.
	cmp	w1, 14            // Compare the value in w1 to 14.
	bhi	.L30             // Branch to label '.L30' if the value is greater than 14.
	adrp	x0, .L38         // Load the address of '.L38' into x0.
	add	x0, x0, :lo12:.L38 // Add the lower 12 bits of the address offset of '.L38' to x0.
	ldrh	w0, [x0,w1,uxtw #1] // Load the halfword value stored in memory at address (x0 + 2 * w1) into w0.
	adr	x1, .Lrtx38      // Load the address of '.Lrtx38' into x1.
	add	x0, x1, w0, sxth #2   // Add x1, w0 (sign-extended half-word element) * 4 to x0.
	br	x0              // Branch to the address held in x0.

.Lrtx38:
	.section	.rodata        // Switch to the read-only data section.
	.align	0               // Align to the next power-of-2 bytes boundary.
	.align	2               // Align to next 2^2=4 bytes boundary.
.L38:
	.2byte	(.L42 - .Lrtx38) / 4       // Store the relative offset, divided by 4, between labels '.L42' and '.Lrtx38' as a 16-bit value.
	.2byte	(.L30 - .Lrtx38) / 4
	.2byte	(.L30 - .Lrtx38) / 4
	.2byte	(.L30 - .Lrtx38) / 4
	.2byte	(.L30 - .Lrtx38) / 4
	.2byte	(.L41 - .Lrtx38) / 4
	.2byte	(.L30 - .Lrtx38) / 4
	.2byte	(.L30 - .Lrtx38) / 4
	.2byte	(.L30 - .Lrtx38) / 4
	.2byte	(.L30 - .Lrtx38) / 4
	.2byte	(.L40 - .Lrtx38) / 4
	.2byte	(.L30 - .Lrtx38) / 4
	.2byte	(.L30 - .Lrtx38) / 4
	.2byte	(.L39 - .Lrtx38) / 4
	.2byte	(.L37 - .Lrtx38) / 4       // Same as above, for labels '.L37' and '.Lrtx38'.
	.section	.text.startup // Switch to the startup text section.
.L28:
	cmp	w0, 127           // Compare the value in w0 to 127.
	bne	.L30             // Branch to label '.L30' if the value is not equal to 127.
.L31:
	ldr	w21, [sp, 116]   // Load the value at memory address (sp + 116) into w21.
	cmp	w21, 0           // Compare the value in w21 to 0.
	cbnz	w21, .L49 // Compare & branch if w21 is not zero, branch to .L49
	ldr	w1, [sp, 120] // Load w1 with the value at the memory address (sp + 120)
	cmp	w1, 3 // Compare w1 with 3
	ble	.L56 // Branch if less than or equal to .L56
	ldr	w0, [sp, 124] // Load w0 with the value at the memory address (sp + 124)
	sub	w1, w1, #4 // Subtract 4 from w1
	add	w1, w1, w0 // Add w1 and w0 and store the result in w1
	ldr	x0, [sp, 144] // Load x0 with the value at the memory address (sp + 144)
	bl	list_advance // Call the list_advance function
	b	.L111 // Unconditionally branch to .L111
.L26:
	cmp	w0, 343 // Compare w0 with 343
	beq	.L42 // Branch if equal to .L42
	cmp	w0, 409 // Compare w0 with 409
	beq	.L43 // Branch if equal to .L43
	cmp	w0, 330 // Compare w0 with 330
	bne	.L30 // Branch if not equal to .L30
	ldr	x25, [sp, 152] // Load x25 with the value at the memory address (sp + 152)
	ldr	w21, [sp, 116] // Load w21 with the value at the memory address (sp + 116)
	ldr	x0, [x25, 8] // Load x0 with the value at the offset 8 of x25
	cmp	w21, w0 // Compare w21 and w0
	bge	.L48 // Branch if greater than or equal to .L48
	sxtw	x21, w21 // Sign extend w21 and store the result in x21
	adrp	x2, erase_str // Load the address of erase_str into x2
	mov	x1, x21 // Move x21 into x1
	add	x2, x2, :lo12:erase_str // Add the 12-bit signed address offset of erase_str to x2
	bl	basic_string_check.isra.0 // Call the basic_string_check.isra.0 function with x1 and x2 as arguments
	b	.L112 // Unconditionally branch to .L112
.L43:
	add	x0, sp, 160 // Add x0 with the value at the memory address (sp + 160)
	bl	getmouse // Call the getmouse function
	cbnz	w0, .L56 // Compare & branch if w0 is not zero, branch to .L56
	ldp	w0, w1, [sp, 164] // Load w0 and w1 with the values at the memory address (sp + 164)
	mov	x5, x20 // Move x20 into x5
	mov	x4, x27 // Move x27 into x4
	mov	x3, x26 // Move x26 into x3
	mov	x2, x25 // Move x25 into x2
	bl	handle_mouse // Call the handle_mouse function with x2, x3, x4, x5 as arguments
	ldp	w1, w0, [sp, 116] // Load w1 and w0 with the values at the memory address (sp + 116)
	bl	move // Call the move function
	b	.L56 // Unconditionally branch to .L56
.L39:
	ldr	x0, [x19, #:got_lo12:stdscr] // Load x0 with the value at the memory address (x19's GOT entry + 12-bit signed offset stdscr)
	mov	x2, 0 // Move 0 into x2
	mov	w1, 2359296 // Load w1 with the constant 2359296
	ldr	x0, [x0] // Load x0 with the value at the memory address x0
	bl	wattr_on // Call the wattr_on function with x0, w1, x2 as arguments
	adrp	x0, :got:SEARCH // Load the address of SEARCH into x0
	add	x28, sp, 280 // Add x28 with the value at the memory address (sp + 280)
	mov	x8, x28 // Move x28 into x8
	ldr	x0, [x0, #:got_lo12:SEARCH] // Load x0 with the value at the memory address (x0's GOT entry + 12-bit signed offset SEARCH)
	ldr	x0, [x0] // Load x0 with the value at the memory address x0
	bl	get_user_input // Call the get_user_input function with x0 and x8 as arguments
	mov	x1, x28 // Move x28 into x1
	mov	x0, x21 // Move x21 into x0
	bl	basic_string.isra.0 // Call the basic_string.isra.0 function with x1 and x0 as arguments
	mov	x0, x28 // Move x28 into x0
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv // Call the _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv function with x0 as argument
	ldr	x0, [x19, #:got_lo12:stdscr] // Load x0 with the value at the memory address (x19's GOT entry + 12-bit signed offset stdscr)
	mov	x2, 0 // Move 0 into x2
	mov	w1, 2359296 // Load w1 with the constant 2359296
	ldr	x0, [x0] // Load x0 with the value at the memory address x0
	bl	wattr_off // Call the wattr_off function with x0, w1, x2 as arguments
	mov	x5, x24 // Move x24 into x5
	mov	x4, x27 // Move x27 into x4
	mov	x3, x26 // Move x26 into x3
	mov	x2, x25 // Move x25 into x2
	mov	x1, x21 // Move x21 into x1
	mov	x0, x20 // Move x20 into x0
	bl	search_text // Call the search_text function with x0, x1, x2, x3, x4, x5 as arguments
	ldp	w1, w0, [sp, 116] // Load w1 and w0 with the values at the memory address (sp + 116)
	bl	move // Call the move function
	b	.L101 // Unconditionally branch to .L101
.L40:
	ldr	x0, [x19, #:got_lo12:stdscr] // Load x0 with the value at the memory address (x19's GOT entry + 12-bit signed offset stdscr)
	mov	x2, 0 // Move 0 into x2
	mov	w1, 2359296 // Load w1 with the constant 2359296
	ldr	x0, [x0] // Load x0 with the value at the memory address x0
	bl	wattr_on // Call the wattr_on function with x0, w1, x2 as arguments
	adrp	x0, :got:SEARCHFOR // Load the address of SEARCHFOR into x0
	add	x24, sp, 312 // Add x24 with the value at the memory address (sp + 312)
	mov	x8, x24 // Move x24 into x8
	ldr	x0, [x0, #:got_lo12:SEARCHFOR] // Load x0 with the value at the memory address (x0's GOT entry + 12-bit signed offset SEARCHFOR)
	ldr	x0, [x0] // Load x0 with the value at the memory address x0
	bl	get_user_input // Call the get_user_input function with x0 and x8 as arguments
	mov	x1, x24 // Move x24 into x1
	mov	x0, x21 // Move x21 into x0
	bl	basic_string.isra.0 // Call the basic_string.isra.0 function with x1 and x0 as arguments
	add	x25, sp, 344 // Add x25 with the value at the memory address (sp + 344)
	mov	x0, x24 // Move x24 into x0
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv // Call the _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv function with x0 as argument
	adrp	x0, :got:REPLACEWITH // Load the address of REPLACEWITH into x0
	mov	x8, x25 // Move x25 into x8
	ldr	x0, [x0, #:got_lo12:REPLACEWITH] // Load x0 with the value at the memory address (x0's GOT entry + 12-bit signed offset REPLACEWITH)
	ldr	x0, [x0] // Load x0 with the value at the memory address x0
	bl	get_user_input // Call the get_user_input function with x0 and x8 as arguments
	mov	x1, x25 // Move x25 into x1
	add	x24, sp, 248 // Add x24 with the value at the memory address (sp + 248)
	mov	x0, x24 // Move x24 into x0
	bl	basic_string.isra.0 // Call the basic_string.isra.0 function with x1 and x0 as arguments
	mov	x0, x25 // Move x25 into x0
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv // Call the _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv function with x0 as argument
	ldr	x0, [x19, #:got_lo12:stdscr] // Load x0 with the value at the memory address (x19's GOT entry + 12-bit signed offset stdscr)
	mov	x2, 0 // Move 0 into x2
	mov	w1, 2359296 // Load w1 with the constant 2359296
	ldr	x0, [x0] // Load x0 with the value at the memory address x0
	bl	wattr_off // Call the wattr_off function with x0, w1, x2 as arguments
	mov	x2, x24 // Move x24 into x2
	mov	x1, x21 // Move x21 into x1
	mov	x0, x20 // Move x20 into x0
	bl	replace_text // Call the replace_text function with x0, x1, x2 as arguments
.L101:
	bl	refresh // Call the refresh function
	b	.L56 // Unconditionally branch to .L56
.L37:
	mov	x0, x20 // Move x20 into x0
	bl	list_clear // Call the list_clear function with x0 as argument
	bl	endwin // Call the endwin function
	add	x0, sp, 248 // Add x0 with the value at the memory address (sp + 248)
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv // Call the _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv function with x0 as argument
	mov	x0, x21 // Move x21 into x0
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv // Call the _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv function with x0 as argument
	mov	x0, x23 // Move x23 into x0
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv // Call the _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv function with x0 as argument
	adrp	x0, :got:__stack_chk_guard // Load the address of __stack_chk_guard into x0
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard] // Load x0 with the value at the memory address (x0's GOT entry + 12-bit signed offset __stack_chk_guard)
	ldr	x2, [sp, 376] // Load x2 with the value at the memory address (sp + 376)
	ldr	x1, [x0] // Load x1 with the value at the memory address x0
	subs	x2, x2, x1 // Subtract x1 from x2 and store the result in x2
	mov	x1, 0 // Move 0 into x1
	beq	.L61 // Branch if equal (zero flag set) to .L61
	bl	__stack_chk_fail // Call the __stack_chk_fail function
.L41:
	ldr	x0, [sp, 184] // Load x0 with the value at the memory address (sp + 184)
	mov	x1, x20 // Move x20 into x1
	bl	save_file // Call the save_file function with x0 and x1 as arguments
	b	.L56 // Unconditionally branch to .L56
.L112:
	ldr	x2, [x25, 8] // Load x2 with the value at the offset 8 of x25
	mov	x1, x21 // Move x21 into x1
	mov	x0, x25 // Move x25 into x0
	subs	x2, x2, x21 // Subtract x21 from x2 and store the result in x2
	csinc	x2, x2, xzr, eq // Conditional select increment if equal flag set (x2 = x2 + 1 if x2 == xzr)
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm // Call the _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm function with x0, x1, x2 as arguments
	b	.L56 // Unconditionally branch to .L56
.L48:
	ldr	x0, [x25, 32] // Load x0 with the value at the offset 32 of x25
	cbz	x0, .L56 // Compare & branch if x0 is zero, branch to .L56
	ldp	x1, x2, [x0] // Load x1 and x2 with the values at the memory address x0
	mov	x0, x25 // Move x25 into x0
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm // Call the _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm function with x0, x1, x2 as arguments
	mov	x0, x24 // Move x24 into x0
	bl	list_erase_next // Call the list_erase_next function with x0 as argument
	ldr	x0, [sp, 136] // Load x0 with the value at the memory address (sp + 136)
	sub	x0, x0, #1 // Subtract 1 from x0
	str	x0, [sp, 136] // Store x0 at the memory address (sp + 136)
	b	.L56 // Unconditionally branch to .L56
.L111:
	ldr	x1, [sp, 152] // Load x1 with the value at the memory address (sp + 152)
	ldr	x2, [x1, 8] // Load x2 with the value at the offset 8 of x1
	ldr	x1, [x1] // Load x1 with the value at the memory address x1
	str	x0, [sp, 160] // Store x0 at the memory address (sp + 160)
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm // Call the _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm function with x1, x2 as arguments
	add	x0, sp, 160 // Add x0 with the value at the memory address (sp + 160)
	bl	list_erase_next // Call the list_erase_next function with x0 as argument
	ldr	x0, [sp, 136] // Load x0 with the value at the memory address (sp + 136)
	sub	x0, x0, #1 // Subtract 1 from x0
	str	x0, [sp, 136] // Store x0 at the memory address (sp + 136)
	ldr	x0, [sp, 160] // Load x0 with the value at the memory address (sp + 160)
		ldr	x0, [x0, 8] // Load x0 with the value at the offset 8 of x0
	str	w0, [sp, 116] // Store the lower 32 bits of x0 (w0) at the memory address (sp + 116)
	ldr	w0, [sp, 120] // Load w0 with the value at the memory address (sp + 120)
	sub	w0, w0, #1 // Subtract 1 from w0
	str	w0, [sp, 120] // Store w0 at the memory address (sp + 120)
	b	.L56 // Unconditionally branch to .L56
.L49:
	ble	.L56 // Branch if less than or equal to .L56
	ldr	x24, [sp, 152] // Load x24 with the value at the memory address (sp + 152)
	sub	w21, w21, #1 // Subtract 1 from w21
	adrp	x2, erase_str // Load the address of erase_str into x2
	add	x2, x2, :lo12:erase_str // Add the 12-bit signed address offset of erase_str to x2
	sxtw	x21, w21 // Sign extend w21 and store the result in x21
	ldr	x0, [x24, 8] // Load x0 with the value at the offset 8 of x24
	mov	x1, x21 // Move x21 into x1
	bl	basic_string_check.isra.0 // Call the basic_string_check.isra.0 function with x1 and x2 as arguments
	ldr	x2, [x24, 8] // Load x2 with the value at the offset 8 of x24
	mov	x1, x21 // Move x21 into x1
	mov	x0, x24 // Move x24 into x0
	subs	x2, x2, x21 // Subtract x21 from x2 and store the result in x2
	csinc	x2, x2, xzr, eq // Conditional select increment if equal flag set (x2 = x2 + 1 if x2 == xzr)
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm // Call the _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm function with x0, x1, x2 as arguments
	ldr	w0, [sp, 116] // Load w0 with the value at the memory address (sp + 116)
.L102:
	sub	w0, w0, #1 // Subtract 1 from w0
.L105:
	str	w0, [sp, 116] // Store w0 at the memory address (sp + 116)
	b	.L56 // Unconditionally branch to .L56
.L42:
	adrp	x0, :got:NODE_MEMORY_SIZE       // Load the memory address of the global symbol NODE_MEMORY_SIZE into x0
	add	x21, sp, 344                   // Add 344 to the stack pointer (sp) and store the result in x21
	mov	x8, x21                         // Move the value from x21 to x8
	mov	x2, -1                          // Load -1 into x2
	ldr	x0, [x0, #:got_lo12:NODE_MEMORY_SIZE] // Load the lower 12 bits from an entry in the Global Offset Table (GOT) corresponding to NODE_MEMORY_SIZE
	ldrsw	x1, [x0]                      // Load the value stored at address x0 and sign-extend it to a 64-bit value in x1
	ldr	x0, [sp, 128]                  // Load the value at sp + 128 into x0
	add	x0, x0, x1                     // Add x0 and x1, store the result in x0
	str	x0, [sp, 128]                  // Store the value of x0 at address sp + 128

	ldr	x0, [sp, 136]                  // Load value at sp + 136 into x0
	ldrsw	x1, [sp, 116]                 // Load the value at address sp + 116 and sign-extend it to a 64-bit value in x1
	add	x0, x0, 1                      // Increment x0 by 1
	str	x0, [sp, 136]                  // Store the incremented value of x0 at address sp + 136
	ldr	x0, [sp, 152]                  // Load value at sp + 152 into x0
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm // Call member function basic_string::substr
.LEHE3:
	ldr	x25, [sp, 152]                 // Load the value at sp + 152 into x25
	adrp	x2, erase_str                 // Load the memory address containing erase_str into x2
	ldrsw	x24, [sp, 116]                // Load the value at address sp + 116 and sign-extend it to a 64-bit value in x24
	add	x2, x2, :lo12:erase_str        // Add the lower 12 bits of the offset for erase_str to x2
	ldr	x0, [x25, 8]                   // Load the value at x25 + 8 into x0
	mov	x1, x24                         // Move the value in x24 into x1
.LEHB4:
	bl	basic_string_check.isra.0        // Call basic_string_check.isra.0 function
	ldr	x0, [x25]                      // Load the value at the address pointed to by x25 into x0
	str	x24, [x25, 8]                  // Store the value of x24 at address x25 + 8
	strb	wzr, [x0, x24]                 // Store zero (wzr) as a byte at x0 + x24
	mov	x0, x21                         // Move the value in x21 into x0
	bl	make_node                      // Call make_node function
.LEHE4:
	ldr	x1, [sp, 152]                  // Load the value at sp + 152 into x1
	ldr	x2, [x1, 32]                   // Load the value at x1 + 32 into x2
	str	x2, [x0, 32]                   // Store the value of x2 at address x0 + 32
	str	x0, [x1, 32]                   // Store the value of x0 at address x1 + 32
	ldr	x1, [x22, #:got_lo12:LINES]    // Load the lower 12 bits from an entry in the GOT corresponding to LINES
	ldr	w2, [sp, 120]                  // Load the value at sp + 120 into w2
	ldr	w1, [x1]                       // Load the value at the address pointed to by x1 into w1
	add	w3, w2, 1                      // Increment w2 by 1 and store the result in w3
	stp	wzr, w3, [sp, 116]             // Store the pair of values (wzr, w3) at address sp + 116
	sub	w1, w1, #1                     // Decrement w1 by 1
	cmp	w3, w1                         // Compare w3 and w1
	blt	.L50                            // Branch to label .L50 if w3 is less than w1 (signed comparison)

	ldr	w1, [sp, 124]                  // Load the value at sp + 124 into w1
	add	w1, w1, 1                      // Increment w1 by 1
	stp	w2, w1, [sp, 120]              // Store the pair of values (w2, w1) at address sp + 120

.L50:
	str	x0, [sp, 152]                  // Store the value of x0 at address sp + 152
	mov	x0, x21                         // Move the value in x21 into x0
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv // Call basic_string::_M_dispose function
	b	.L56                            // Branch to label .L56

.L35:
	ldp	w1, w0, [sp, 120]              // Load the pair of values at sp + 120 into w1 and w0
	cmp	w1, 3                          // Compare w1 and 3
	ble	.L51                            // Branch to label .L51 if w1 is less than or equal to 3 (signed comparison)
	sub	w1, w1, #1                     // Decrement w1 by 1
	str	w1, [sp, 120]                  // Store the decremented value of w1 at address sp + 120
.L52:
	ldp	w0, w1, [sp, 120]              // Load the pair of values at sp + 120 into w0 and w1
	sub	w0, w0, #3                     // Subtract 3 from w0
	add	w1, w0, w1                     // Add w0 and w1, store the result in w1
	ldr	x0, [sp, 144]                  // Load the value at sp + 144 into x0
.LEHB5:
	bl	list_advance                    // Call list_advance function
	b	.L103                           // Branch to label .L103

.L51:
	cmp	w0, 0                          // Compare w0 and 0
	ble	.L52                            // Branch to label .L52 if w0 is less than or equal to 0 (signed comparison)
	sub	w0, w0, #1                     // Decrement w0 by 1
	str	w0, [sp, 124]                  // Store the decremented value of w0 at address sp + 124
	b	.L52                            // Branch to label .L52

.L36:
	ldr	x2, [x22, #:got_lo12:LINES]   // Load the lower 12 bits from an entry in the GOT corresponding to LINES
	ldr	x0, [sp, 152]                  // Load the value at sp + 152 into x0
	ldr	w2, [x2]                       // Load the value at the address pointed to by x2 into w2
	ldr	w1, [sp, 120]                  // Load the value at sp + 120 into w1
	sub	w2, w2, #2                     // Subtract 2 from w2
	ldr	x0, [x0, 32]                   // Load the value at x0 + 32 into x0
	cmp	w2, w1                         // Compare w2 and w1
	ble	.L53                            // Branch to label .L53 if w2 is less than or equal to w1 (signed comparison)
	cbz	x0, .L56                        // Compare x0 with zero, branch to label .L56 if equal

	add	w1, w1, 1                      // Increment w1 by 1
	str	w1, [sp, 120]                  // Store the incremented value of w1 at address sp + 120
.L103:
	str	x0, [sp, 152]                  // Store the value of x0 at address sp + 152
	b	.L56                            // Branch to label .L56

.L53:
	cbz	x0, .L56                        // Compare x0 with zero, branch to label .L56 if equal
	ldr	w1, [sp, 124]                  // Load the value at sp + 124 into w1
	add	w1, w1, 1                      // Increment w1 by 1
	str	w1, [sp, 124]                  // Store the incremented value of w1 at address sp + 124
	b	.L103                           // Branch to label .L103

.L34:
	ldr	w0, [sp, 116]                  // Load the value at sp + 116 into w0
	cmp	w0, 0                          // Compare w0 and 0
	bgt	.L102                          // Branch to label .L102 if w0 is greater than 0 (signed comparison)
	ldr	w1, [sp, 120]                  // Load the value at sp + 120 into w1
	cmp	w1, 3                          // Compare w1 and 3
	ble	.L56                            // Branch to label .L56 if w1 is less than or equal to 3 (signed comparison)
	sub	w0, w1, #1
	str	w0, [sp, 120]
	ldr	w0, [sp, 124]
	sub	w1, w1, #4
	add	w1, w1, w0
	ldr	x0, [sp, 144]
	bl	list_advance
	str	x0, [sp, 152]
	ldr	x0, [x0, 8]
	b	.L105
.L33:
	ldr	x1, [sp, 152]
	ldr	w0, [sp, 116]
	ldr	x2, [x1, 8]
	cmp	w0, w2
	bge	.L55
.L104:
	add	w0, w0, 1
	b	.L105
.L55:
	ldr	x1, [x1, 32]
	cbz	x1, .L56
	ldr	w0, [sp, 120]
	str	x1, [sp, 152]
	add	w0, w0, 1
	stp	wzr, w0, [sp, 116]
	b	.L56
.L110:
	mov	x1, x0
	mov	w4, w28
	mov	x0, x21
	mov	x3, 1
	mov	x2, 0
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc
.LEHE5:
	ldr	w0, [sp, 116]
	b	.L104
.L63:
	mov	x19, x0
	mov	x0, x21
.L106:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
.L58:
	mov	x0, x23
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	mov	x0, x19
.LEHB6:
	bl	_Unwind_Resume
.LEHE6:
.L65:
	mov	x19, x0
	mov	x0, x21
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
.L60:
	add	x0, sp, 248
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	add	x0, sp, 216
	b	.L106
.L64:
	mov	x19, x0
	b	.L60
.L62:
	mov	x19, x0
	b	.L58
.L61:
	mov	w0, 0
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	ldp	x29, x30, [sp], 384

	ret
.LFE1707:
	.global	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA1707:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1707-.LLSDACSB1707
.LLSDACSB1707:
	.uleb128 .LEHB0-.LFB1707
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB1707
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L63-.LFB1707
	.uleb128 0
	.uleb128 .LEHB2-.LFB1707
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L62-.LFB1707
	.uleb128 0
	.uleb128 .LEHB3-.LFB1707
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L64-.LFB1707
	.uleb128 0
	.uleb128 .LEHB4-.LFB1707
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L65-.LFB1707
	.uleb128 0
	.uleb128 .LEHB5-.LFB1707
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L64-.LFB1707
	.uleb128 0
	.uleb128 .LEHB6-.LFB1707
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
.LLSDACSE1707:
	.section	.text.startup
	.size	main, .-main

	