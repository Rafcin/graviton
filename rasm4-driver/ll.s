// PARAMS @
// X0: HEAD, IF NULL THEN WILL CREATE NODE
// X1: DATA

    .global ll
    .data
node_size:
    .quad 16    // size of a node in bytes
null:
    .quad 0     // null pointer value
.text
ll:
        str lr, [sp, -16]!          // copy of lr
        stp x3, x4, [sp, -16]!      // copy of x3 and x4 
        stp x19, x20, [sp, -16]!    // copy of x19 and x20        
        stp x21, x1, [sp, -16]!      // copy of head and data
        mov x19, x0
        mov x0, x1
        

        // X19 CONTAINS HEADPTR
        // X20 CONTAINS DATA
        // X0 WILL CONTAIN MALLOC'D BYTES OF NEW NODE

        bl strcpy
        mov x20, x0

        mov x0, 16
        bl malloc
        str x20,[x0, #0]
        
        mov x3, x19
        ldr x3,[x3]
        cmp x3, #0
        b.ne addBack

        str x0, [x19]       // new head node, being pointed to by headPtr
        mov x0, x19

    .exit:
        ldp x21, x1, [sp], 16          
        ldp x19, x20, [sp], 16
        ldp x3, x4, [sp], 16
        ldr lr, [sp], 16
        ret

addBack:
        mov x3, x19
        ldr x3,[x3]
        .addLoop:
            ldr x19, [x3, #8]
            cmp x19, #0
            b.eq .foundLast
            ldr x19, [x19]
            mov x3, x19
            b .addLoop
        .foundLast:
            str x0, [x3, #8]
            b .exit

 // *******************************************

/**
 * strcpy.s
 * PARAMETERS: X0 (STRING TO BE COPIED)
 * OUTPUT    : X0 (POINTER TO COPIED STRING)
 * The purpose of this function is to copy a string dynamically using malloc.
 * It is up to the user to free the memory when done.
 * ALL REGISTERS PRESERVED EXCEPT X0
 */
strcpy:
        // storing X0-X19 registers, as malloc will not preserve most of these
        str X1,     [sp, -16]!
        stp X2, X3, [sp, -16]!
        stp X4, X5, [sp, -16]!
        stp X6, X7, [sp, -16]!
        stp X8, X9, [sp, -16]!
        stp X10, X11, [sp, -16]!
        stp X12, X13, [sp, -16]!
        stp X14, X15, [sp, -16]!
        stp X16, X17, [sp, -16]!
        stp X18, X19, [sp, -16]!
        stp X20, X21, [sp, -16]!
        str lr, [sp, -16]!
        mov x1, #10000  // setting a theoretical max string value, can be adjusted accordingly
        mov x19, x0     // storing a copy of x0 into x19
        bl  length      // calling length to fulfill malloc's parameter of requested bytes
        add x0, x0, #1
        mov x21, x0     // move length into x21
        bl  malloc      // call malloc
        mov x20, #0     // setting variable to 0 for loop count
strcpyLoop:
        ldrb w17, [x19, x20]    // loading byte of given string into w17
        strb w17, [x0, x20]     // storing w17 into new string 
        add x20, x20, #1        // incrementing
        cmp x20, x21            // comparing x19 to x20
        b.ge strcpyend                // if it's greater than the length, goto end
        b strcpyLoop
strcpyend:
         // popping registers back from stack 
        ldr lr, [sp], 16
        ldp X20, X21, [sp], 16
        ldp X18, X19, [sp], 16
        ldp X16, X17, [sp], 16
        ldp X14, X15, [sp], 16
        ldp X12, X13, [sp], 16
        ldp X10, X11, [sp], 16
        ldp X8, X9, [sp], 16
        ldp X6, X7, [sp], 16
        ldp X4, X5, [sp], 16
        ldp X2, X3, [sp], 16
        ldr X1,     [sp], 16
        ret lr
// *******************************************      


// *******************************************

/*
 * length - counts the number of characters in a string
 * param x0: pointer to the string to count
 * @param x1: maximum number of characters to count
 * @return x0: number of characters counted, not including null terminator
 *
 * This function counts the number of characters in a string pointed to by x0, up
 * to a maximum of x1 characters. The count excludes the null terminator. If the
 * string is longer than x1 characters, the function stops counting at x1
 * characters.
 *
 * Registers used: x0, x1, x2, x3, w3
 * Registers saved: x19-x30, lr
 */

// Entry point for the `length` subroutine
length:
    // Point to the first byte of the string to count
    mov x7, x0

    // Initialize the counter to zero
    mov x2, #0

// Top of the loop to count characters
lengthTop:
    // Load the next byte of the string and update the pointer
    ldrb w1, [x7], #1

    // Check if the byte is the null terminator
    cmp w1, #0

    // If the byte is the null terminator, jump to the bottom of the loop
    b.eq lengthBottom

    // Increment the counter by one
    add x2, x2, #1

    // Jump back to the top of the loop
    b lengthTop

// Bottom of the loop to return the length
lengthBottom:
    // Return the length of the string
    mov x0, x2
    ret lr
