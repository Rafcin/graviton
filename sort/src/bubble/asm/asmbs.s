.global asmbs

asmbs:
    mov x4, xzr                  // x4 = i = 0
    sub x5, x1, #1               // x5 = length - 1

outer_loop:
    cmp x4, x1                   // Check if i < length
    b.ge done                    // If i >= length, we're done

    mov x6, xzr                  // x6 = j = 0

inner_loop:
    cmp x6, x5          // Check if j < length - i - 1 (considering each element is 4 bytes in the array)
    b.ge next_i                  // If j >= length - i - 1, move to next i

    // Load elements a[j] and a[j + 1] into w7 and w8
    add x9, x0, x6, lsl #2
    ldr w7, [x9]
    ldr w8, [x9, #4]

    cmp w8, w7                   // Compare a[j + 1] and a[j]
    b.hs next_j                  // If a[j + 1] >= a[j], move to next j

    // Swap elements a[j] and a[j + 1]
    str w8, [x9]
    str w7, [x9, #4]

next_j:
    add x6, x6, #1               // j = j + 1
    b inner_loop

next_i:
    add x4, x4, #1               // i = i + 1
    b outer_loop

done:
    ret
