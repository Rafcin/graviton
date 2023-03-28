.data
    str: .asciz "This is a test string."
    find: .asciz "test"
    out: .asciz "Index of 'test' - "
    result: .skip 21
    nl:  .asciz "\n"
    
.text
.global main
    main:
        // Load the target string address
        ldr x0, =str
        
        // Load the string to find address
        ldr x1, =find
        
        // Call the `indxofstr` subroutine
        bl  indxofstr
        
        // Convert the result to a string
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
        mov x0, #0  // Sets return code to 0
        mov x8, #93 // Service command code 93 terminates
        svc 0       // Call linux to terminate the program
