.data
    str: .asciz "This is a BeginnersBook tutorial"
    out: .asciz "Last 'B' in str1 whose index<=15 - "
    result: .skip 21
    nl:  .asciz "\n"
    
.text
.global main
    // Last 'B' in str1 whose index<=15:10
    main:
        // Load the target string address
        ldr x0, =str
        
        // Set the search character to 'B'
        mov w1, #'B'
        
        // Set the search starting index to 15
        mov x2, #15
        
        // Call the `lstindxoffrm` subroutine
        bl  lstindxoffrm
        
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
