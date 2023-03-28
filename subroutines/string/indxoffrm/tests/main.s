.data
    str: .asciz "This is a test string."
    out: .asciz "Index of 't' after index 10 - "
    result: .skip 21
    nl:  .asciz "\n"
    
.text
.global main
main:
    // Load the target string address
    ldr x0, =str
    
    // Set the search character to 't'
    mov w1, #'t'
    
    // Set the search starting index to 10
    mov x2, #10
    
    // Call the `indxoffrm` subroutine
    bl  indxoffrm
    
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
