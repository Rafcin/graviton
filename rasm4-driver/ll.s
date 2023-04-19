// PARAMS @
// X0: HEAD, IF NULL THEN WILL CREATE NODE
// X1: DATA

    .global ll
    .data
newNode:  .quad   0
currentNode: .quad 0
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
        //ldr x0, [x0] 
        // x1: head
        // x2: tail
        // x3: data
        mov x10, x19
        mov x11, x20
        mov x12, x21

        mov x19, x11
        mov x20, x12
        mov x21, x10


        mov x0, x21
        bl strcpy
        mov x21, x0

        mov x0, 16
        bl malloc

        ldr x1,=newNode
        str x0,[x1]
        
        ldr x1,=newNode
        ldr x1,[x1]
        str x21,[x1]

        mov x3, #0
        add x1, x1, #8
        str x3, [x1]

        mov x0, x19
        ldr x0,[x0]
        cmp x0, #0
        b.ne addBack

        ldr x1,=newNode
        ldr x1,[x1]

        mov x0, x19
        str x1,[x0]
        mov x0, x20
        str x1,[x0]

    .exit:
        ldp x21, x1, [sp], 16          
        ldp x19, x20, [sp], 16
        ldp x3, x4, [sp], 16
        ldr lr, [sp], 16
        ret


addBack:
        mov x0, x20
        ldr x0,[x0]
        ldr x1,=newNode
        ldr x1,[x1]

        str x1,[x0, #8]
        mov x0, x20
        str x1,[x0]
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
        mov x1, #1024  // setting a theoretical max string value, can be adjusted accordingly
        mov x19, x0     // storing a copy of x0 into x19
        bl String_length   // calling length to fulfill malloc's parameter of requested bytes
        //add x0, x0, #1
        mov x21, x0     // move length into x21
        bl  malloc      // call malloc
        mov x20, #0     // setting variable to 0 for loop count
strcpyLoop:
        ldrb w17, [x19, x20]    // loading byte of given string into w17
        strb w17, [x0, x20]     // storing w17 into new string 
        add x20, x20, #1        // incrementing
        cmp x20, x21            // comparing x19 to x20
        b.lt strcpyLoop
        cmp w17, 0xa
        b.eq strcpyend
        mov w17, 0xa
        strb w17, [x0, x20]
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

/**

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
**/
