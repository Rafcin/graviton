/*
 * Test driver for "chrat"
 */
.data
    targ:   .asciz  "This is a string."
    out:    .asciz  "Character at position 3 is - "
    result: .skip   4
    nl:     .asciz  "\n"
.text
.global main
    main:
        // Get the character at position 3
        ldr x0, =targ
        mov x1, #2
        bl  chrat
        
        // Convert the character to a string
        ldr x1, =result
        bl  int64asc
        
        // Print the output text
        ldr x0, =out
        bl  putstring
        
        // Print the result
        ldr x0, =result
        bl  putstring
        
        // Print newline
        ldr x0, =nl
        bl  putstring
        
        // Setup the parameters to exit the program and then call Linux to do it.
        mov	x0,	#0	// Sets return code to 0
        mov	x8,	#93	// Service command code 93 terminates
        svc	0	// Call linux to terminate the program
