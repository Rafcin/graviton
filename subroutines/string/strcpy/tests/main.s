.data
    str1:   .asciz "This is a copied string!"
    szcopy: .quad 0
    nl:     .asciz "\n"

.text
.global main
    main:
        ldr x0, =str1
        bl  strcpy
        ldr x1, =szcopy
        str x0,[x1]


        // Print output text
        ldr x0,=szcopy
        ldr x0,[x0]
        bl  putstring

        // Print newline
        ldr x0, =nl
        bl  putstring
        ldr x0,=szcopy
        ldr x0,[x0]
        bl  free

    exit:
        // Setup the parameters to exit the program and then call Linux to do it.
        mov x0, #0  // Sets return code to 0
        mov x8, #93 // Service command code 93 terminates
        svc 0       // Call linux to terminate the program
