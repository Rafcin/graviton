/**
 * endwth.s
 * PARAMETERS: X0 (STRING)
 *             X1 (STRING TO CHECK)
 * OUTPUT    : X0 (BOOLEAN VALUE)
 * This routine checks whether the string in X0 ends with the suffix string in X1.
 * If the suffix is found at the end of the string, it returns true, otherwise it returns false.
 * ALL REGISTERS PRESERVED EXCEPT X0
 */

.text
.global endwth
    endwth:
        // storing X0-X19 registers, as malloc will not preserve most of these
        str X1, [sp, -16]!
        stp X2, X3, [sp, -16]!
        stp X4, X5, [sp, -16]!
        stp X6, X7, [sp, -16]!
        stp X8, X9, [sp, -16]!
        stp X10, X11, [sp, -16]!
        stp X12, X13, [sp, -16]!
        stp X14, X15, [sp, -16]!
        stp X16, X17, [sp, -16]!
        stp X18, X19, [sp, -16]!
        str lr, [sp, -16]!
        
        // finding length of the suffix
        mov x2, #0
    suffixLoop:
        ldrb w3, [x1, x2]
        cmp w3, #0
        b.eq stringEnd
        add x2, x2, #1
        b suffixLoop
    stringEnd:
        mov x3, x0
        add x4, x0, x2

        // finding length of the string
        mov x2, #0
    stringLoop:
        ldrb w3, [x0, x2]
        cmp w3, #0
        b.eq checkSuffix
        add x2, x2, #1
        b stringLoop
    checkSuffix:
        sub x2, x2, x4
        cmp x2, #0
        b.lt false
        add x0, x0, x2
        
        // checking if suffix matches
    suffixCheckLoop:
        ldrb w2, [x0], #1
        ldrb w3, [x1], #1
        cmp w2, w3
        b.ne false
        cmp w3, #0
        b.ne suffixCheckLoop
        
        true:
            mov x0, #1
            b end
        false:
            mov x0, #0
    end:
        // popping registers back from stack
        ldr lr, [sp], 16
        ldp X18, X19, [sp], 16
        ldp X16, X17, [sp], 16
        ldp X14, X15, [sp], 16
        ldp X12, X13, [sp], 16
        ldp X10, X11, [sp], 16
        ldp X8, X9, [sp], 16
        ldp X6, X7, [sp], 16
        ldp X4, X5, [sp], 16
        ldp X2, X3, [sp], 16
        ldr X1, [sp], 16
        ret lr
