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
        // assuming x0 is data, x1 will create a node.
        str lr, [sp, -16]!          // copy of lr
        stp x3, x4, [sp, -16]!      // copy of x3 and x4 
        stp x19, x20, [sp, -16]!    // copy of x19 and x20        
        stp x21, x1, [sp, -16]!      // copy of head and data
        ldr x0,[x0]
        cmp x0, #0
        b.ne addBack
        mov x20, x0     // storing data in x20
        mov x0, node_size
        bl malloc
        str x20, [x0]       // storing data in first byte
        ldp x21, x1, [sp], 16          
        ldp x19, x20, [sp], 16
        ldp x3, x4, [sp], 16
        ldr lr, [sp], 16
        ret

addBack:
        mov x19, x0
        mov x21, #0
        .addLoop:
            ldr x20, [x19, #8]
            cmp x20, #0
            b.eq .foundLast
            add x21, x21, #1
            mov x19, x20
            ldr x19, [x19]
            b .addLoop
        .foundLast:

