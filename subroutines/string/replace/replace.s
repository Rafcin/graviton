/**
 * replace.s
 */

.data
    example: .asciz "Example"

.text
.global replace
    replace:
        // Exit
        mov x0, 0       // Move 0 to x0 to indicate successful termination
        mov X8, #93     // Set x8 to 93 to indicate the "exit" system call
        svc 0           // Call the "exit" system call to terminate the program
