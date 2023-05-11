.global asmbs

asmbs:
    cmp x1, #1               // Check if length < 2
    blt done                // If length < 2, we're done (array already sorted)

    sub x2, x1, #1          // x2 = endIndex = length - 1

outer_loop:
    mov x3, x2              // x3 = i = endIndex
    mov w4, wzr             // w4 = swapFlag = 0

inner_loop:
    cbz x3, check_swap      // If i == 0, check if any swap was made

    // Load elements a[i - 1] and a[i] into w5 and w6
    sub x5, x3, #1          // x5 = i - 1
    add x6, x0, x5, lsl #2
    ldr w5, [x6]
    ldr w6, [x6, #4]

    cmp w5, w6              // Compare a[i - 1] and a[i]
    bls next_i              // If a[i - 1] <= a[i], move to next_i

    // Swap elements a[i - 1] and a[i]
    str w5, [x6, #4]
    str w6, [x6]
    mov w4, #1              // w4 = swapFlag = 1

next_i:
    sub x3, x3, #1          // i = i - 1
    b inner_loop

check_swap:
    cmp w4, #0              // Check if swapFlag == 0
    beq done                // If swapFlag == 0, array is sorted (done)

    sub x2, x2, #1          // endIndex = endIndex - 1
    b outer_loop            // Repeat the outer_loop

done:
    ret
