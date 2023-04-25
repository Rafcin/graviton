/**
 * inprdr - Asks the user to input some value or string and stores it using malloc.
 *
 * @return x0: Pointer to the input buffer.
 *
 * Registers used: x0, w8, lr
 * Registers saved: lr
 */

.text
.global inprdr
    inprdr:
        // Save return address
        str lr, [sp, #-16]!

        // Read from stdin into a buffer
        mov x0, #0
        ldr w8, =1024                    // Declare the buffer size 1024
        bl malloc                        // Allocate memory and get the pointer in x0
        str x0, [sp, #-16]!              // Store the pointer on the stack
        
        mov x2, #1024                    // Set size of buffer
        mov x8, #63                      // Linux syscall number for read STDIN_FD
        mov w1, w0                       // Move the malloc pointer into w1
        mov w0, #0                       // STDIN_FD is file descriptor 0
        svc 0                            // Linux syscall to read from STDIN_FD
        
        ldr x0, [sp], #16                // Retrieve the malloc pointer from stack

        // Restore return address and return
        ldr x30, [sp], #16          
        ret