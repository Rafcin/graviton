.data
    message: .asciz "Hello, world!\n"

.text
.global main
    main:
        // Load the address of the message
        ldr x0, =message
        
        // Call the `putstr` subroutine to print the message
        bl putstr
        
        // Terminate the program
        mov x0, #0
        mov x8, #93
        svc 0
