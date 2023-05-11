.global asmbs

asmbs:
    sub x2, x1, #1                // x2 = length - 1 (last index)

outer_loop:
    cbz x1, done                 // If length == 0, we're done
    mov x3, #0                   // x3 = Swap counter for inner loop

inner_loop:
    add x4, x0, x3, sxtw #2       // x4 = a + (i * sizeof(int))
    ldr w5, [x4]                 // w5 = a[i]
    ldr w6, [x4, #4]             // w6 = a[i+1]
    cmp w5, w6                   // Compare a[i] and a[i+1]
    bls skip_swap                // If a[i] <= a[i+1], skip swap
    str w6, [x4]                 // Swap a[i] and a[i+1]
    str w5, [x4, #4]

skip_swap:
    add x3, x3, #4               // Increment x3
    cmp x3, x2, lsl #2           // Compare x3 with (length-1)*4
    b.lt inner_loop

    sub x2, x2, #1               // Decrement last index
    sub x1, x1, #1               // Decrement length
    b outer_loop

done:
    ret
