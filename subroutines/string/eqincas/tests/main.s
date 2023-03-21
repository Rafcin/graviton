.data
    str1:   .asciz "this IS EQUAL!"
    str2:   .asciz "This is equal!"
    strOut: .skip   2
    nl:     .asciz "\n"

.text
.global main
    main:
        // Concatenate str1 and str2
        ldr x1,=str1
        ldr x2,=str2
        bl  eqincas

        // Print output text
        ldr x1,=strOut
        bl  int64asc
        ldr x0,=strOut
        bl  putstring

        // Print newline
        ldr x0,=nl 
        bl  putstring

    exit:
        // Setup the parameters to exit the program and then call Linux to do it.
        mov x0, #0  // Sets return code to 0
        mov x8, #93 // Service command code 93 terminates
        svc 0       // Call linux to terminate the program
