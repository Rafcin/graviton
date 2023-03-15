.data
    str1:   .asciz "123-Hello-world-HOW@are{z}you?"
    nl:     .asciz "\n"

.text
.global main
    main:
        // Concatenate str1 and str2
        ldr x0, =str1
        bl  toupr 

        // Print output text
        ldr x0, =str1
        bl  putstring

        // Print newline
        ldr x0, =nl
        bl  putstring

    exit:
        // Setup the parameters to exit the program and then call Linux to do it.
        mov x0, #0  // Sets return code to 0
        mov x8, #93 // Service command code 93 terminates
        svc 0       // Call linux to terminate the program
