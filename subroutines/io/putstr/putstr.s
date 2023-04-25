/**
 * putstr - Prints a null-terminated string using write syscall
 * 
 * @param x0: Pointer to the null-terminated string
 *
 * Registers used: x0, x2, x30, lr
 * Registers saved: lr
 */

.text
.global putstr
    putstr:
        // Save the link register
        str lr, [sp, #-16]!

        // Prepare parameters for the `write` syscall
        mov x2, #0
        // Get the string length
    loop:
        ldrb w1, [x0, x2]
        cbz w1, out
        add x2, x2, #1
        b loop
    out:
        mov x8, #64
        mov x1, x0
        mov w0, #1
        svc 0
        
        // Restore the link register
        ldr lr, [sp], #16
        
        ret
