.data
    prompt: .asciz "Enter a string or value - "
    entered: .asciz "You entered - "
    nl:  .asciz "\n"
    
.text
.global main
    main:
        // Print the prompt
        ldr x0, =prompt
        bl  putstr
        
        // Call the `inprdr` subroutine
        bl  inprdr
        
        // Save the pointer to the input buffer
        str x0, [sp, #-16]!
        
        // Print the entered text
        ldr x0, =entered
        bl  putstr

        // Print the user's input
        ldr x0, [sp]   // Load the pointer without modifying the stack pointer
        bl  putstr

        // Load the pointer and readjust the stack pointer
        ldr x0, [sp], #16
        
        // Call `free` subroutine to free the allocated memory
        bl free
        
        // Print newline
        ldr x0, =nl
        bl  putstr
        
        // Setup the parameters to exit the program and then call Linux to do it.
        mov x0, #0  // Sets return code to 0
        mov x8, #93 // Service command code 93 terminates
        svc 0       // Call linux to terminate the program
