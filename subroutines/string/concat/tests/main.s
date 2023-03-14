.data
    str1: .asciz "Hello, "
    str2: .asciz "world!"
    out: .asciz "Concatenated string - "
    nl: .asciz "\n"

.text
.global main
    main:
        // Concatenate str1 and str2
        ldr x0, =str1
        mov x1, #0xffffffffffffffff // Maximum number of characters to count
        bl  length
        ldr x2, =str2
        mov x3, #0xffffffffffffffff // Maximum number of characters to count
        bl  length
        bl  concat
        
        // Check for allocation failure
        cbz x0, exit_failure

        // Save the pointer to the concatenated string
        mov x19, x0

        // Print output text
        ldr x0, =out
        bl  putstring

        // Print concatenated string
        mov x0, x19
        bl  putstring

        // Print newline
        ldr x0, =nl
        bl  putstring

        // Free the memory allocated by concat
        mov x0, x19
        mov x8, #215 // Service command code 215 for munmap
        mov x1, #0 // PROT_READ | PROT_WRITE
        mov x2, #34 // MAP_ANONYMOUS | MAP_PRIVATE
        mov x3, #-1 // fd = -1
        mov x4, #0 // offset = 0
        svc 0
        
    exit_failure:
            // Setup the parameters to exit the program and then call Linux to do it.
            mov x0, #0  // Sets return code to 0
            mov x8, #93 // Service command code 93 terminates
            svc 0       // Call linux to terminate the program