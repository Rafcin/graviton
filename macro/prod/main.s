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
	.string	"WordPerfect-Resurrected | RASM4 Group 20"
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
basic_string_check_start:
	mov	x3, x0		// Move x0 to x3
	mov	x0, x1		// Move x1 to x0
	cmp	x1, x3		// Compare x1 and x3
	bls	basic_string_check_ret		// Branch if lower or same to basic_string_check_ret
	stp	x29, x30, [sp, -16]!	// Store pair x29, x30 onto the stack and decrement the stack pointer

	mov	x1, x2		// Move x2 to x1
	mov	x2, x0		// Move x0 to x2
	mov	x29, sp		// Move sp (stack pointer) to x29
	adrp	x0, pos_str	// Load the page address of the symbol pos_str into x0
	add	x0, x0, :lo12:pos_str	// Add the offset of pos_str to the value in x0
	bl	_ZSt24__throw_out_of_range_fmtPKcz	// Call the function _ZSt24__throw_out_of_range_fmtPKcz
basic_string_check_ret:
	ret			// Return from the function
basic_string_check_end:
	.size	basic_string_check.isra.0, .-basic_string_check.isra.0	// Set the size of the function basic_string_check.isra.0

.align	2
.type	basic_string.isra.0, %function
basic_string.isra.0:
basic_string_start:
	stp	x29, x30, [sp, -32]!	// Store pair x29, x30 onto the stack and decrement the stack pointer
	mov	x2, x1		// Move x1 to x2
	mov	x29, sp		// Move sp (stack pointer) to x29
	stp	x19, x20, [sp, 16]	// Store pair x19, x20 onto the stack at position [sp, 16]

	mov	x19, x1		// Move x1 to x19
	mov	x20, x0		// Move x0 to x20
	ldr	x1, [x2], 16	// Load the value at [x2] into x1 and then increment x2 by 8 bytes
	ldr	x0, [x0]	// Load the value at [x0] into x0
	cmp	x1, x2		// Compare x1 and x2
	bne	basic_string_cmp		// Branch if not equal to basic_string_cmp
	cmp	x20, x19		// Compare x20 and x19
	beq	basic_string_ret		// Branch if equal to basic_string_ret
	ldr	x2, [x19, 8]		// Load the value at [x19, 8] into x2
	cbz	x2, basic_string_strb		// Compare and branch if zero to basic_string_strb
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm	// Call the function _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm
basic_string_strb:
	ldr	x1, [x20]	// Load the value at [x20] into x1
	ldr	x0, [x19, 8]	// Load the value at [x19, 8] into x0
	str	x0, [x20, 8]	// Store x0 at [x20, 8]
	strb	wzr, [x1, x0]	// Store the zero register at [x1, x0]
basic_string_ret:
	ldr	x0, [x19]	// Load the value at [x19] into x0
	str	xzr, [x19, 8]	// Store the zero register at [x19, 8]
	strb	wzr, [x0]	// Store the zero register at [x0]
	ldp	x19, x20, [sp, 16]	// Load the values at [sp, 16] into x19 and x20
	ldp	x29, x30, [sp], 32	// Load x29, x30 from a position 32 bytes above [sp], and increment the stack pointer

	ret			// Return from the function
basic_string_cmp:
	add	x4, x20, 16	// Add x20 and 16, store result in x4
	cmp	x0, x4		// Compare x0 and x4
	beq	basic_string_jmp_check		// Branch if equal to basic_string_jmp_check
	ldr	x3, [x20, 16]	// Load the value at [x20, 16] into x3
basic_string_check:
	str	x1, [x20]	// Store x1 at [x20]
	ldr	x1, [x19, 8]	// Load the value at [x19, 8] into x1
	str	x1, [x20, 8]	// Store x1 at [x20, 8]
	ldr	x1, [x19, 16]	// Load the value at [x19, 16] into x1
	str	x1, [x20, 16]	// Store x1 at [x20, 16]
	cbz	x0, basic_string_str_and_jmp	// Compare and Branch on Zero: If x0 (first argument) is zero, branch to label basic_string_str_and_jmp
	str	x0, [x19]	// Store x0 to the memory location pointed by x19
	str	x3, [x19, 16]	// Store x3 to the memory location at x19 + 16 bytes
	b	basic_string_ret		// Unconditional branch to label basic_string_ret
basic_string_jmp_check:
	mov	x0, 0		// Move 0 into x0
	b	basic_string_check		// Unconditional branch to label basic_string_check
basic_string_str_and_jmp:
	str	x2, [x19]	// Store x2 to the memory location pointed by x19
	b	basic_string_ret		// Unconditional branch to label basic_string_ret
basic_string_end:
	.size	basic_string.isra.0, .-basic_string.isra.0	// Size definition for the basic_string.isra.0 function

.section	.text.startup	// Begin the .text.startup section with flags "ax"
.align	2				// Align to a 2^2 = 4 byte boundary
.global	main				// Declare main as a global symbol
.type	main, %function			// Declare main as a function
main:					// Start the label for main function
main_start:
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
main_setup_ncurses:
	bl	initscr		// Branch with Link: Call initscr(), which initializes the curses library and the terminal
	bl	raw		// Branch with Link: Call raw(), which disables line buffering for the terminal
	ldr	x0, [x19, #:got_lo12:stdscr]	// Load Register: Load the lower 12 bits of the GOT entry for stdscr to x0
	mov	w1, 1		// Move the value 1 to w1
	ldr	x0, [x0]	// Load Register: Load the value from memory location stored in x0 to x0
	bl	keypad		// Branch with Link: Call keypad(), enabling special keys handling
	bl	noecho		// Branch with Link: Call noecho(), disabling the display of typed characters
main_setup:
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
	bgt	main_ui_inter		// Branch if Greater Than: If comparison result (CMP) is greater than, branch to label main_ui_inter
basic_string_check_ret0:
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
main_not_lines_pushback:
	bl	list_push_back	// Branch with Link: Call list_push_back() to add an element to the list
main_str_check:
	b	basic_string_check7		// Unconditional branch to label basic_string_check7
main_ui_inter:
	ldr	x21, [x21, 8]	// Load Register: Load the value from memory location [x21 + 8] to x21
	mov	x0, x21		// Move x21 to x0
	bl	strlen		// Branch with Link: Call strlen() to get the length
	mov	x3, x21                                // Move x21 into x3
	mov	x4, x0                                 // Move x0 into x4
	mov	x2, 0                                  // Move 0 into x2
	mov	x0, x23                                // Move x23 into x0
	mov	x1, 0                                  // Move 0 into x1
	main_ui_inter_opn_file:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm   // Call basic_string::_M_replace with the given parameters
	ldr	x0, [sp, 184]                             // Load the value at sp+184 into x0
	add	x3, sp, 136                              // Add sp+136 to x3 and store the result in x3
	add	x2, sp, 128                              // Add sp+128 to x2 and store the result in x2
	mov	x1, x20                                // Move x20 into x1
	bl	open_file                               // Call open_file function with given parameters
	main_ui_inter_str_check:
	ldr	x0, [sp, 144]                             // Load the value at sp+144 into x0
	cbz	x0, basic_string_check_ret0                                // Check if x0 is 0, if it is, branch to label basic_string_check_ret0
	basic_string_check_ret1:
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
	main_ui_inter_check_colors:
	bl	has_colors                              // Call has_colors function
	b	basic_string_check8                     // Unconditionally branch to label basic_string_check8
	basic_string_check7:
	mov	x0, x21                                // Move x21 into x0
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv // Call basic_string::_M_dispose with given parameters
	ldr	x0, [sp, 136]                             // Load the value at sp+136 into x0
	add	x0, x0, 1                                // Add 1 to x0 and store the result in x0
	str	x0, [sp, 136]                             // Store x0 into the memory location at sp+136
	b	basic_string_check_ret1                                     // Unconditionally branch to label basic_string_check_ret1
	basic_string_check8:
	tst	w0, 255                                  // Test bitwise AND between w0 and 255
	beq	basic_string_check_ret2                                    // If result of test was zero, branch to basic_string_check_ret2
	bl	start_color                              // Call start_color function
	mov	w2, 0                                   // Move 0 into w2
	mov	w1, 3                                   // Move 3 into w1
	mov	w0, 1                                   // Move 1 into w0
	bl	init_pair                               // Call init_pair function with given parameters
	basic_string_check_ret2:
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
	main_ui_inter_window_stp:
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
	basic_string_check_ret3:
	cbnz	x21, basic_string_check_ret5                                // Compare x21 with 0, if not equal, branch to label basic_string_check_ret5
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
	b	basic_string_check9                                   // Unconditionally branch to label basic_string_check9
	basic_string_check_ret5:
	ldr	w1, [sp, 124]                             // Load the value at sp+124 into w1
	cmp	w1, w24                                 // Compare w1 with w24
	bgt	basic_string_check_ret4                                    // If w1 is greater than w24, branch to label basic_string_check_ret4
	ldr	x1, [sp, 104]                             // Load the value at sp+104 into x1
	ldr	w1, [x1]                               // Load the value pointed by x1 into w1
	sub	w1, w1, #1                              // Subtract 1 from w1 and store the result in w1
	cmp	w1, w0                                 // Compare w1 with w0
	ble	basic_string_check_ret4                                    // If w1 is less than or equal to w0, branch to label basic_string_check_ret4
	ldr	x3, [x21]                               // Load the value pointed by x21 into x3
	add	w26, w0, 1                              // Add 1 to w0 and store the result in w26
    mov     x2, x25         // Move the value from x25 register to x2 register
    mov     w1, 0           // Set the value of w1 register to 0
    bl      mvprintw        // Call the function mvprintw with arguments stores in w1 and x2 registers
    mov     w0, w26         // Move the value from w26 register to w0 register
basic_string_check_ret4:
    add     w24, w24, 1     // Increment the value stored in w24 register by 1
    ldr     x21, [x21, 32]  // Load the value from the memory address (x21 + 32) into x21 register
    b       basic_string_check_ret3            // Unconditionally branch to the basic_string_check_ret3 label
basic_string_check9:
	/**
	Moves the values between the various registers, calls the mvprintw 
	function with proper arguments, increments the 
	value in one register, and loads data from the memory 
	address (x21+32) into x21 register. It then branches to the basic_string_check_ret3 labe
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
	bgt	basic_string_check_ret6             // Branch to label basic_string_check_ret6 if the value is greater than 263.
	cmp	w0, 257          // Compare the value in w0 to 257.
	bgt	basic_string_check_ret7             // Branch to label basic_string_check_ret7 if the value is greater than 257.
	cmp	w0, 24           // Compare the value in w0 to 24.
	bgt	basic_string_check_ret8             // Branch to label basic_string_check_ret8 if the value is greater than 24.
	cmp	w0, 9            // Compare the value in w0 to 9.
	bgt	basic_string_check_ret9             // Branch to label basic_string_check_ret9 if the value is greater than 9.
main_ui_inter_can_print_chr:
	mov	w0, w28          // Move the value of w28 to w0.
	bl	isprint          // Call isprint() function to check whether the character in w0 is printable.
	cbz	w0, main_ui_inter_window_stp         // If w0 is zero (i.e. character is not printable), branch to label main_ui_inter_window_stp.
	ldr	x21, [sp, 152]   // Load the value at memory address (sp + 152) into x21.
	adrp	x2, insert_str  // Load the address of 'insert_str' into x2.
	ldrsw	x1, [sp, 116]   // Load the signed word value at memory address (sp + 116) into x1.
	and	w28, w28, 255    // Perform a bitwise AND operation between w28 and 255, store the result in w28.
	add	x2, x2, :lo12:insert_str  // Add the lower 12 bits of the offset of 'insert_str' to x2.
	ldr	x0, [x21, 8]     // Load the value at memory address (x21 + 8) into x0.
	bl	basic_string_check.isra.0  // Call basic_string_check.isra.0() function.
	b	basic_string_str_and_jmp0             // Branch to label basic_string_str_and_jmp0.
basic_string_check_ret7:
	sub	w1, w0, #258      // Subtract 258 from w0, store the result in w1.
	cmp	w1, 5            // Compare the value in w1 to 5.
	bhi	main_ui_inter_can_print_chr             // Branch to label main_ui_inter_can_print_chr if the value is greater than 5.
	adrp	x0, .L32         // Load the address of '.L32' into x0.
	add	x0, x0, :lo12:.L32 // Add the lower 12 bits of the address offset of '.L32' to x0.
	ldrh	w0, [x0,w1,uxtw #1] // Load the halfword value stored in memory at address (x0 + 2 * w1) into w0.
	adr	x1, .Lrtx32      // Load the address of '.Lrtx32' into x1.
	add	x0, x1, w0, sxth #2   // Add x1, w0 (sign-extended half-word element) * 4 to x0.
	br	x0              // Branch to the address held in x0.

// Avoid mem issues
.Lrtx32:
	.section	.rodata     // Switch to the read-only data section.
	.align	0               // Align to the next power-of-2 bytes boundary.
	.align	2               // Align to next 2^2=4 bytes boundary.
.L32:
	.2byte	(main_ui_inter_handle_keydown - .Lrtx32) / 4       // Store the relative offset, divided by 4, between labels 'main_ui_inter_handle_keydown' and '.Lrtx32' as a 16-bit value.
	.2byte	(main_ui_inter_handle_keyup_cmp - .Lrtx32) / 4       // Same as above, for labels 'main_ui_inter_handle_keyup_cmp' and '.Lrtx32'.
	.2byte	(main_ui_inter_handle_key_advance - .Lrtx32) / 4       // Same as above, for labels 'main_ui_inter_handle_key_advance' and '.Lrtx32'.
	.2byte	(main_ui_inter_handle_key_advance_check - .Lrtx32) / 4       // Same as above, for labels 'main_ui_inter_handle_key_advance_check' and '.Lrtx32'.
	.2byte	(main_ui_inter_can_print_chr - .Lrtx32) / 4       // Same as above, for labels 'main_ui_inter_can_print_chr' and '.Lrtx32'.
	.2byte	(main_ui_inter_advance_key_bkspc - .Lrtx32) / 4       // Same as above, for labels 'main_ui_inter_advance_key_bkspc' and '.Lrtx32'.
	.section	.text.startup // Switch to the startup text section.
basic_string_check_ret9:
	sub	w1, w0, #10         // Subtract 10 from w0, store the result in w1.
	cmp	w1, 14            // Compare the value in w1 to 14.
	bhi	main_ui_inter_can_print_chr             // Branch to label 'main_ui_inter_can_print_chr' if the value is greater than 14.
	adrp	x0, main_ui_inter_chr_table         // Load the address of 'main_ui_inter_chr_table' into x0.
	add	x0, x0, :lo12:main_ui_inter_chr_table // Add the lower 12 bits of the address offset of 'main_ui_inter_chr_table' to x0.
	ldrh	w0, [x0,w1,uxtw #1] // Load the halfword value stored in memory at address (x0 + 2 * w1) into w0.
	adr	x1, main_ui_inter_chr_ro      // Load the address of 'main_ui_inter_chr_ro' into x1.
	add	x0, x1, w0, sxth #2   // Add x1, w0 (sign-extended half-word element) * 4 to x0.
	br	x0              // Branch to the address held in x0.

main_ui_inter_chr_ro:
	.section	.rodata        // Switch to the read-only data section.
	.align	0               // Align to the next power-of-2 bytes boundary.
	.align	2               // Align to next 2^2=4 bytes boundary.
main_ui_inter_chr_table:
	.2byte	(main_ui_inter_handle_enter_key - main_ui_inter_chr_ro) / 4       // Store the relative offset, divided by 4, between labels 'main_ui_inter_handle_enter_key' and 'main_ui_inter_chr_ro' as a 16-bit value.
	.2byte	(main_ui_inter_can_print_chr - main_ui_inter_chr_ro) / 4
	.2byte	(main_ui_inter_can_print_chr - main_ui_inter_chr_ro) / 4
	.2byte	(main_ui_inter_can_print_chr - main_ui_inter_chr_ro) / 4
	.2byte	(main_ui_inter_can_print_chr - main_ui_inter_chr_ro) / 4
	.2byte	(main_ui_inter_save_changes - main_ui_inter_chr_ro) / 4
	.2byte	(main_ui_inter_can_print_chr - main_ui_inter_chr_ro) / 4
	.2byte	(main_ui_inter_can_print_chr - main_ui_inter_chr_ro) / 4
	.2byte	(main_ui_inter_can_print_chr - main_ui_inter_chr_ro) / 4
	.2byte	(main_ui_inter_can_print_chr - main_ui_inter_chr_ro) / 4
	.2byte	(main_ui_inter_search_and_replc_text - main_ui_inter_chr_ro) / 4
	.2byte	(main_ui_inter_can_print_chr - main_ui_inter_chr_ro) / 4
	.2byte	(main_ui_inter_can_print_chr - main_ui_inter_chr_ro) / 4
	.2byte	(main_ui_inter_search_text - main_ui_inter_chr_ro) / 4
	.2byte	(main_ui_inter_stk - main_ui_inter_chr_ro) / 4       // Same as above, for labels 'main_ui_inter_stk' and 'main_ui_inter_chr_ro'.
	.section	.text.startup // Switch to the startup text section.
basic_string_check_ret8:
	cmp	w0, 127           // Compare the value in w0 to 127.
	bne	main_ui_inter_can_print_chr             // Branch to label 'main_ui_inter_can_print_chr' if the value is not equal to 127.
main_ui_inter_advance_key_bkspc:
	ldr	w21, [sp, 116]   // Load the value at memory address (sp + 116) into w21.
	cmp	w21, 0           // Compare the value in w21 to 0.
	cbnz	w21, main_ui_inter_erase // Compare & branch if w21 is not zero, branch to main_ui_inter_erase
	ldr	w1, [sp, 120] // Load w1 with the value at the memory address (sp + 120)
	cmp	w1, 3 // Compare w1 with 3
	ble	main_ui_inter_window_stp // Branch if less than or equal to main_ui_inter_window_stp
	ldr	w0, [sp, 124] // Load w0 with the value at the memory address (sp + 124)
	sub	w1, w1, #4 // Subtract 4 from w1
	add	w1, w1, w0 // Add w1 and w0 and store the result in w1
	ldr	x0, [sp, 144] // Load x0 with the value at the memory address (sp + 144)
	bl	list_advance // Call the list_advance function
	b	basic_string_str_and_jmp1 // Unconditionally branch to basic_string_str_and_jmp1
basic_string_check_ret6:
	cmp	w0, 343 // Compare w0 with 343
	beq	main_ui_inter_handle_enter_key // Branch if equal to main_ui_inter_handle_enter_key
	cmp	w0, 409 // Compare w0 with 409
	beq	main_ui_inter_handle_mouse_click // Branch if equal to main_ui_inter_handle_mouse_click
	cmp	w0, 330 // Compare w0 with 330
	bne	main_ui_inter_can_print_chr // Branch if not equal to main_ui_inter_can_print_chr
	ldr	x25, [sp, 152] // Load x25 with the value at the memory address (sp + 152)
	ldr	w21, [sp, 116] // Load w21 with the value at the memory address (sp + 116)
	ldr	x0, [x25, 8] // Load x0 with the value at the offset 8 of x25
	cmp	w21, w0 // Compare w21 and w0
	bge	main_ui_inter_erase_next_frm_list // Branch if greater than or equal to main_ui_inter_erase_next_frm_list
	sxtw	x21, w21 // Sign extend w21 and store the result in x21
	adrp	x2, erase_str // Load the address of erase_str into x2
	mov	x1, x21 // Move x21 into x1
	add	x2, x2, :lo12:erase_str // Add the 12-bit signed address offset of erase_str to x2
	bl	basic_string_check.isra.0 // Call the basic_string_check.isra.0 function with x1 and x2 as arguments
	b	basic_string_str_and_jmp2 // Unconditionally branch to basic_string_str_and_jmp2
// THIS IS NOW BROKEN, I DID NOT CALC MOUSE POS CORRECTRLY
// L
main_ui_inter_handle_mouse_click:
	add	x0, sp, 160 // Add x0 with the value at the memory address (sp + 160)
	bl	getmouse // Call the getmouse function
	cbnz	w0, main_ui_inter_window_stp // Compare & branch if w0 is not zero, branch to main_ui_inter_window_stp
	ldp	w0, w1, [sp, 164] // Load w0 and w1 with the values at the memory address (sp + 164)
	mov	x5, x20 // Move x20 into x5
	mov	x4, x27 // Move x27 into x4
	mov	x3, x26 // Move x26 into x3
	mov	x2, x25 // Move x25 into x2
	bl	handle_mouse // Call the handle_mouse function with x2, x3, x4, x5 as arguments
	ldp	w1, w0, [sp, 116] // Load w1 and w0 with the values at the memory address (sp + 116)
	bl	move // Call the move function
	b	main_ui_inter_window_stp // Unconditionally branch to main_ui_inter_window_stp
main_ui_inter_search_text:
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
	b	basic_string_check1 // Unconditionally branch to basic_string_check1
main_ui_inter_search_and_replc_text:
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
basic_string_check1:
	bl	refresh // Call the refresh function
	b	main_ui_inter_window_stp // Unconditionally branch to main_ui_inter_window_stp
main_ui_inter_stk:
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
	beq	main_ui_preserve // Branch if equal (zero flag set) to main_ui_preserve
	bl	__stack_chk_fail // Call the __stack_chk_fail function
main_ui_inter_save_changes:
	ldr	x0, [sp, 184] // Load x0 with the value at the memory address (sp + 184)
	mov	x1, x20 // Move x20 into x1
	bl	save_file // Call the save_file function with x0 and x1 as arguments
	b	main_ui_inter_window_stp // Unconditionally branch to main_ui_inter_window_stp
basic_string_str_and_jmp2:
	ldr	x2, [x25, 8] // Load x2 with the value at the offset 8 of x25
	mov	x1, x21 // Move x21 into x1
	mov	x0, x25 // Move x25 into x0
	subs	x2, x2, x21 // Subtract x21 from x2 and store the result in x2
	csinc	x2, x2, xzr, eq // Conditional select increment if equal flag set (x2 = x2 + 1 if x2 == xzr)
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm // Call the _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm function with x0, x1, x2 as arguments
	b	main_ui_inter_window_stp // Unconditionally branch to main_ui_inter_window_stp
main_ui_inter_erase_next_frm_list:
	ldr	x0, [x25, 32] // Load x0 with the value at the offset 32 of x25
	cbz	x0, main_ui_inter_window_stp // Compare & branch if x0 is zero, branch to main_ui_inter_window_stp
	ldp	x1, x2, [x0] // Load x1 and x2 with the values at the memory address x0
	mov	x0, x25 // Move x25 into x0
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm // Call the _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm function with x0, x1, x2 as arguments
	mov	x0, x24 // Move x24 into x0
	bl	list_erase_next // Call the list_erase_next function with x0 as argument
	ldr	x0, [sp, 136] // Load x0 with the value at the memory address (sp + 136)
	sub	x0, x0, #1 // Subtract 1 from x0
	str	x0, [sp, 136] // Store x0 at the memory address (sp + 136)
	b	main_ui_inter_window_stp // Unconditionally branch to main_ui_inter_window_stp
basic_string_str_and_jmp1:
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
	b	main_ui_inter_window_stp // Unconditionally branch to main_ui_inter_window_stp
main_ui_inter_erase:
	ble	main_ui_inter_window_stp // Branch if less than or equal to main_ui_inter_window_stp
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
basic_string_check2:
	sub	w0, w0, #1 // Subtract 1 from w0
basic_string_check5:
	str	w0, [sp, 116] // Store w0 at the memory address (sp + 116)
	b	main_ui_inter_window_stp // Unconditionally branch to main_ui_inter_window_stp
main_ui_inter_handle_enter_key:
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
main_ui_inter_handle_enter_key_erase:
	ldr	x25, [sp, 152]                 // Load the value at sp + 152 into x25
	adrp	x2, erase_str                 // Load the memory address containing erase_str into x2
	ldrsw	x24, [sp, 116]                // Load the value at address sp + 116 and sign-extend it to a 64-bit value in x24
	add	x2, x2, :lo12:erase_str        // Add the lower 12 bits of the offset for erase_str to x2
	ldr	x0, [x25, 8]                   // Load the value at x25 + 8 into x0
	mov	x1, x24                         // Move the value in x24 into x1
main_ui_inter_handle_enter_key_alloc:
	bl	basic_string_check.isra.0        // Call basic_string_check.isra.0 function
	ldr	x0, [x25]                      // Load the value at the address pointed to by x25 into x0
	str	x24, [x25, 8]                  // Store the value of x24 at address x25 + 8
	strb	wzr, [x0, x24]                 // Store zero (wzr) as a byte at x0 + x24
	mov	x0, x21                         // Move the value in x21 into x0
	bl	make_node                      // Call make_node function
main_ui_inter_handle_enter_key_getlns:
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
	blt	main_ui_inter_handle_enter_key_end                            // Branch to label main_ui_inter_handle_enter_key_end if w3 is less than w1 (signed comparison)

	ldr	w1, [sp, 124]                  // Load the value at sp + 124 into w1
	add	w1, w1, 1                      // Increment w1 by 1
	stp	w2, w1, [sp, 120]              // Store the pair of values (w2, w1) at address sp + 120

main_ui_inter_handle_enter_key_end:
	str	x0, [sp, 152]                  // Store the value of x0 at address sp + 152
	mov	x0, x21                         // Move the value in x21 into x0
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv // Call basic_string::_M_dispose function
	b	main_ui_inter_window_stp                            // Branch to label main_ui_inter_window_stp

main_ui_inter_handle_keyup_cmp:
	ldp	w1, w0, [sp, 120]              // Load the pair of values at sp + 120 into w1 and w0
	cmp	w1, 3                          // Compare w1 and 3
	ble	main_ui_inter_handle_keyup_end                           // Branch to label main_ui_inter_handle_keyup_end if w1 is less than or equal to 3 (signed comparison)
	sub	w1, w1, #1                     // Decrement w1 by 1
	str	w1, [sp, 120]                  // Store the decremented value of w1 at address sp + 120
main_ui_inter_handle_keyup_ldr:
	ldp	w0, w1, [sp, 120]              // Load the pair of values at sp + 120 into w0 and w1
	sub	w0, w0, #3                     // Subtract 3 from w0
	add	w1, w0, w1                     // Add w0 and w1, store the result in w1
	ldr	x0, [sp, 144]                  // Load the value at sp + 144 into x0
main_ui_inter_handle_keyup_advnc:
	bl	list_advance                    // Call list_advance function
	b	basic_string_check3                           // Branch to label basic_string_check3

main_ui_inter_handle_keyup_end:
	cmp	w0, 0                          // Compare w0 and 0
	ble	main_ui_inter_handle_keyup_ldr                            // Branch to label main_ui_inter_handle_keyup_ldr if w0 is less than or equal to 0 (signed comparison)
	sub	w0, w0, #1                     // Decrement w0 by 1
	str	w0, [sp, 124]                  // Store the decremented value of w0 at address sp + 124
	b	main_ui_inter_handle_keyup_ldr                            // Branch to label main_ui_inter_handle_keyup_ldr

main_ui_inter_handle_keydown:
	ldr	x2, [x22, #:got_lo12:LINES]   // Load the lower 12 bits from an entry in the GOT corresponding to LINES
	ldr	x0, [sp, 152]                  // Load the value at sp + 152 into x0
	ldr	w2, [x2]                       // Load the value at the address pointed to by x2 into w2
	ldr	w1, [sp, 120]                  // Load the value at sp + 120 into w1
	sub	w2, w2, #2                     // Subtract 2 from w2
	ldr	x0, [x0, 32]                   // Load the value at x0 + 32 into x0
	cmp	w2, w1                         // Compare w2 and w1
	ble	main_ui_inter_handle_keydown_end                            // Branch to label main_ui_inter_handle_keydown_end if w2 is less than or equal to w1 (signed comparison)
	cbz	x0, main_ui_inter_window_stp                        // Compare x0 with zero, branch to label main_ui_inter_window_stp if equal

	add	w1, w1, 1                      // Increment w1 by 1
	str	w1, [sp, 120]                  // Store the incremented value of w1 at address sp + 120
basic_string_check3:
	str	x0, [sp, 152]                  // Store the value of x0 at address sp + 152
	b	main_ui_inter_window_stp                            // Branch to label main_ui_inter_window_stp

main_ui_inter_handle_keydown_end:
	cbz	x0, main_ui_inter_window_stp                        // Compare x0 with zero, branch to label main_ui_inter_window_stp if equal
	ldr	w1, [sp, 124]                  // Load the value at sp + 124 into w1
	add	w1, w1, 1                      // Increment w1 by 1
	str	w1, [sp, 124]                  // Store the incremented value of w1 at address sp + 124
	b	basic_string_check3                           // Branch to label basic_string_check3

main_ui_inter_handle_key_advance:
	ldr	w0, [sp, 116]                  // Load the value at sp + 116 into w0
	cmp	w0, 0                          // Compare w0 and 0
	bgt	basic_string_check2                          // Branch to label basic_string_check2 if w0 is greater than 0 (signed comparison)
	ldr	w1, [sp, 120]                  // Load the value at sp + 120 into w1
	cmp	w1, 3                          // Compare w1 and 3
	ble	main_ui_inter_window_stp                            // Branch to label main_ui_inter_window_stp if w1 is less than or equal to 3 (signed comparison)
	sub	w0, w1, #1
	str	w0, [sp, 120]
	ldr	w0, [sp, 124]
	sub	w1, w1, #4
	add	w1, w1, w0
	ldr	x0, [sp, 144]
	bl	list_advance
	str	x0, [sp, 152]
	ldr	x0, [x0, 8]
	b	basic_string_check5
main_ui_inter_handle_key_advance_check:
	ldr	x1, [sp, 152]
	ldr	w0, [sp, 116]
	ldr	x2, [x1, 8]
	cmp	w0, w2
	bge	main_ui_inter_handle_key_window
basic_string_check4:
	add	w0, w0, 1
	b	basic_string_check5
main_ui_inter_handle_key_window:
	ldr	x1, [x1, 32]
	cbz	x1, main_ui_inter_window_stp
	ldr	w0, [sp, 120]
	str	x1, [sp, 152]
	add	w0, w0, 1
	stp	wzr, w0, [sp, 116]
	b	main_ui_inter_window_stp
basic_string_str_and_jmp0:
	mov	x1, x0
	mov	w4, w28
	mov	x0, x21
	mov	x3, 1
	mov	x2, 0
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc
main_ui_inter_handle_key_bs_chk:
	ldr	w0, [sp, 116]
	b	basic_string_check4
main_ui_inter_handle_key_bs_chk_mov:
	mov	x19, x0
	mov	x0, x21
basic_string_check6:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
main_ui_inter_handle_key_bs_str_disp:
	mov	x0, x23
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	mov	x0, x19
main_ui_inter_handle_key_unwind:
	bl	_Unwind_Resume
main_ui_str_dipose:
main_ui_str_dipose_ev:
	mov	x19, x0
	mov	x0, x21
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
main_ui_str_dipose_check:
	add	x0, sp, 248
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	add	x0, sp, 216
	b	basic_string_check6
main_ui_str_dipose_mov_and_check:
	mov	x19, x0
	b	main_ui_str_dipose_check
main_ui_str_dipose_mov_check_disp:
	mov	x19, x0
	b	main_ui_inter_handle_key_bs_str_disp
main_ui_preserve:
	mov	w0, 0
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	ldp	x29, x30, [sp], 384

	ret
main_byt_tbl:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 main_end-main_uleb_table
main_uleb_table:
	.uleb128 main_setup_ncurses-main_start
	.uleb128 main_setup-main_setup_ncurses
	.uleb128 0
	.uleb128 0
	.uleb128 main_not_lines_pushback-main_start
	.uleb128 main_str_check-main_not_lines_pushback
	.uleb128 main_ui_inter_handle_key_bs_chk_mov-main_start
	.uleb128 0
	.uleb128 main_ui_inter_opn_file-main_start
	.uleb128 main_ui_inter_str_check-main_ui_inter_opn_file
	.uleb128 main_ui_str_dipose_mov_check_disp-main_start
	.uleb128 0
	.uleb128 main_ui_inter_check_colors-main_start
	.uleb128 main_ui_inter_handle_enter_key_erase-main_ui_inter_check_colors
	.uleb128 main_ui_str_dipose_mov_and_check-main_start
	.uleb128 0
	.uleb128 main_ui_inter_handle_enter_key_alloc-main_start
	.uleb128 main_ui_inter_handle_enter_key_getlns-main_ui_inter_handle_enter_key_alloc
	.uleb128 main_ui_str_dipose_ev-main_start
	.uleb128 0
	.uleb128 main_ui_inter_handle_keyup_advnc-main_start
	.uleb128 main_ui_inter_handle_key_bs_chk-main_ui_inter_handle_keyup_advnc
	.uleb128 main_ui_str_dipose_mov_and_check-main_start
	.uleb128 0
	.uleb128 main_ui_inter_handle_key_unwind-main_start
	.uleb128 main_ui_str_dipose-main_ui_inter_handle_key_unwind
	.uleb128 0
	.uleb128 0
main_end:
	.section	.text.startup
	.size	main, .-main

	