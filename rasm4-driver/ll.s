// LINKED LIST FUNCTIONS
// ASSUMES HEAD IS IN X0, AND TAIL IN X1 FOR ALL OPERATIONS
    .global ll
    .data
node_size:
    .quad 16    // size of a node in bytes
null:
    .quad 0     // null pointer value
.text
ll:
        // assuming x0 is data, x1 will create a node.
        str lr, [sp, -16]!          // copy of lr
        stp x3, x4, [sp, -16]!      // copy of x3 and x4 
        stp x19, x20, [sp, -16]!    // copy of x19 and x20        
        stp x21, x1, [sp, -16]!      // copy of head and data
        mov x20, x0     // storing data in x20
        mov x0, node_size
        bl malloc
        str x20, [x0]       // storing data in first byte
        ldp x21, x1, [sp], 16          
        ldp x19, x20, [sp], 16
        ldp x3, x4, [sp], 16
        ldr lr, [sp], 16
        ret

    addFront:
        // node in x0
        // head in x1
        str lr, [sp, -16]!          // copy of lr
        str x1, [sp, -16]!
        
        ldr x1, [x1]
        str x1, [x0, #8]

        ldr x1, [sp], 16
        ldr lr, [sp], 16

        ret
    addBack:
        // node in x0
        // tail in x1
        str lr, [sp, -16]!          // copy of lr
        stp x3, x4, [sp, -16]!      // copy of x3 and x4 
        stp x19, x20, [sp, -16]!    // copy of x19 and x20
        stp x0, x1, [sp, -16]!      // copy of tail and data


        ldp x0, x1, [sp], 16
        ldp x19, x20, [sp], 16
        ldp x3, x4, [sp], 16
        ldr lr, [sp], 16
        ret

