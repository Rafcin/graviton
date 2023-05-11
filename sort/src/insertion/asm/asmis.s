.global asmis

asmis:
    cmp x1, #1        // Check if length < 2
    blt done          // If length < 2, we're done (array already sorted)

    mov x2, #1        // x2 = i (starting index)
i_loop:
    cmp x2, x1        // Check if i < length
    b.ge done         // If i >= length, we're done

    mov x3, x2        // x3 = j = i
    ldr w4, [x0, x2, lsl #2]  // w4 = key = a[i]

j_loop:
    cbz x3, skip_swap         // If j == 0, skip swap (first element)

    sub x5, x3, #1            // x5 = j - 1
    ldr w6, [x0, x5, lsl #2]  // w6 = a[j - 1]

    cmp w6, w4                // Check if a[j - 1] > key
    bls skip_swap             // If a[j - 1] <= key, skip swap

    str w6, [x0, x3, lsl #2]  // a[j] = a[j - 1]
    sub x3, x3, #1            // j = j - 1
    b j_loop

skip_swap:
    str w4, [x0, x3, lsl #2]  // a[j] = key
    add x2, x2, #1            // i = i + 1
    b i_loop

done:
    ret
