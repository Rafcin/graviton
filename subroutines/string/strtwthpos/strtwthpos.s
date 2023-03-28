/**
 * strtwthpos - Returns true if the String begins with str, starting from the specified index "fromIndex".
 *
 * @param x0: Address of the main string to check.
 * @param x1: Address of the substring to check.
 * @param x2: Starting index in the main string.
 * @return x0: 1 if the main string begins with the substring from the specified index, 0 otherwise.
 * Registers used: x0, x1, x2, x3, x4, x5
 * Registers saved: none
 */
.text
.global strtwthpos
    strtwthpos:
        str x0, [sp, #-16]!
        str x2, [sp, #-16]!
        mov x3, #0 // Initialize x3 to 0
        loop:
            ldrb w4, [x0, x2] // Load byte from main string
            ldrb w5, [x1, x3] // Load byte from substring
            cmp w5, #0 // If the substring byte is null, return true
            beq end_of_substring
            cmp w4, w5
            b.ne not_equal
            add x3, x3, #1 // Increment substring index
            add x2, x2, #1 // Increment main string index
            b loop
        not_equal:
            mov x0, #0 // Return 0 (false)
            b end
        end_of_substring:
            mov x0, #1 // Return 1 (true)
        end:
            ldr x2, [sp], #16
            ldr x0, [sp], #16
            ret
