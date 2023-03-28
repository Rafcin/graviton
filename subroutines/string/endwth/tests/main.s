.data
    str: .asciz "This is a test String"
    suffix: .asciz "String"
    out_true: .asciz "true"
    out_false: .asciz "false"
    nl:  .asciz "\n"

.text
.global main
    main:
        // Load the target string address
        ldr x0, =str
        
        // Load the suffix string to find
        ldr x1, =suffix
        
        // Call the `endwth` subroutine
        bl  endwth
        
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
