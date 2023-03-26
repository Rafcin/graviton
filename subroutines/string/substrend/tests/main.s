.data
    str1:   .asciz "cat in the hat."
    szsub: .quad  0
    nl:     .asciz "\n"

.text
.global main
    main:
        // generate sbstring from str1, at index 3 to 7 (begin inclusive, end exclusive)
        ldr x0, =str1
        mov x1, 4
        bl  substrend 

        ldr x1,=szsub
        str x0,[x1]     // storing pointer to string in sbstr. needed to free memory later.

        // Print output text
        ldr x0,=szsub
        ldr x0,[x0]
        bl  putstring

        // Print newline
        ldr x0, =nl
        bl  putstring

        // freeing memory
        ldr x0,=szsub
        ldr x0,[x0]
        bl free

    exit:
        // Setup the parameters to exit the program and then call Linux to do it.
        mov x0, #0  // Sets return code to 0
        mov x8, #93 // Service command code 93 terminates
        svc 0       // Call linux to terminate the program
