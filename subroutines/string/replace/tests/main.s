.data
    szHello: .asciz "Hello, world!"
    nl:  .asciz "\n"
.text
.global main
    main:
        // Load the address of the string to replace
        ldr x0, =szHello

        // Load the character to be replaced
        mov x1, #'e'

        // Load the character to replace with
        mov x2, #'a'

        // Call the `replace` subroutine to replace all occurrences of 'o' with 'x'
        bl replace

        // Save the result on the stack
        str x0, [sp, #-16]!

        // Print the output string
        bl putstring
        ldr x0, [sp], #16

        // Free the memory allocated for the output string
        bl free

        // Print newline
        ldr x0, =nl
        bl  putstring
        
        // Setup the parameters to exit the program and then call Linux to do it.
        mov x0, #0  // Sets return code to 0
        mov x8, #93 // Service command code 93 terminates
        svc 0       // Call linux to terminate the program
