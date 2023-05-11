.global asmis_exp

asmis_exp:
    cmp x1, #1               // Check if length < 2
    blt done                // If length < 2, we're done (array already sorted)

    add x0, x0, #4          // Move pointer to the second element in the array

next_i:
    sub x1, x1, #1          // Decrement length

    // Save state to stack for later restoration
    stp x29, x30, [sp, #-16]!
    mov x29, sp

    mov x5, x1
    sub x5, x5, #1          // x5 = i - 1
    ldr w6, [-1, x0, , x5, lsl #2] // Load the key into w6 (key = a[i])

    sub x5, x0, x1, lsl #2  // Set x5 as the Start = x0 - 4 + i * 4

    bl binary_search        // Call the binary search function
    cmp x0, x4              // Compare the result position (x4) with the current pointer (x0)

    beq restore             // If the found position is the same as the current position, skip rotation

    // Rotate elements from pos (x4) to i (x0) one place to the right
    mov x5, x0              // Save current position to x5

rotate_loop:
    ldr w6, [-4, x5]        // Load the value from left position (a[i - 1])
    str w6, [x5]            // Store the value in the current position (a[i])
    sub x5, x5, #4          // Decrement the iterator (i = i - 1)
    cmp x5, x4              // Compare the iterator (x5) with the found position (x4)
    b.gt rotate_loop        // Repeat the loop if iterator is greater than the found position

    // Store the key (in w6) in the correct position (x4)
    str w6, [x4]

restore:
    // Restore state and prepare for the next iteration
    mov sp, x29
    ldp x29, x30, [sp], #16

    add x0, x0, #4          // Increment the pointer to the next element in the array
    cbnz x1, next_i         // If length is not equal to 0, continue with the next element

done:
    ret

binary_search:
    mov x3, #3              // Initialize the count register with 3 (required for LSR instruction)

    // Perform binary search for the correct position
bin_search_loop:
    lsr x2, x5              // Divide the difference between start and end by 2 (x2 = (x5 - x4) / 2)
    cbz x2, search_done     // If x2 == 0, we found the correct position (x4)

    sub x6, x5, x2          // Calculate the middle index (x6 = x5 - x2)
    ldr w2, [x6]            // Load the value from the middle index (a[mid])

    cmp w2, w6              // Compare a[mid] with the key (w6)
    cset w2, lt             // Set w2 to 1 if a[mid] < key, else set w2 to 0

    lsl x2, x2, x3          // Multiply x2 by 4 (required to move 4 bytes at a time)
    csel x4, x4, x6, eq     // If a[mid] == key, set x4 to x6 (mid)

    subs x5, x6, x2         // If a[mid] < key, set x5 to x6 - x2 (move the start index)
    b.ne bin_search_loop    // If a[mid] != key, repeat the binary search loop

search_done:
    ret
