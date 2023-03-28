.data
    prompt: .asciz "Does string Hello contain He? "
    str: .asciz "Hello"
    he_str: .asciz "He"
    out_true: .asciz "true"
    out_false: .asciz "false"
    nl:  .asciz "\n"

.text
.global main
    main:
        // Print prompt
        ldr x0, =prompt
        bl  putstring
        // Load the target string address
        ldr x0, =str
        
        // Load the string to find
        ldr x1, =he_str
        
        // Set the starting index
        mov x2, #0
        
        // Call the `strtwthpos` subroutine
        bl  strtwthpos
        
        // Print the output text
        ldr x0, =out_false
        cmp x0, x29
        b.eq is_true
        ldr x0, =out_true
    is_true:
        bl putstring
        
        // Print newline
        ldr x0, =nl
        bl  putstring
        
        // Setup the parameters to exit the program and then call Linux to do it.
        mov x0, #0  // Sets return code to 0
        mov x8, #93 // Service command code 93 terminates
        svc 0       // Call linux to terminate the program
