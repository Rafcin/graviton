// Subroutine String_length: Provided a pointer to a null terminated string, String_length will
//      return the length of the string in X0
// X0: Must point to a null terminated string
// LR: Must contain the return address
// All registers are preserved, except X0

    .global String_length
// Entry point for the `length` subroutine
String_length:
    // Point to the first byte of the string to count
    mov x7, x0

    // Initialize the counter to zero
    mov x2, #0

// Top of the loop to count characters
lengthTop:
    // Load the next byte of the string and update the pointer
    ldrb w1, [x7], #1

    // Check if the byte is the null terminator
    cmp w1, #0

    // If the byte is the null terminator, jump to the bottom of the loop
    b.eq lengthBottom

    // Increment the counter by one
    add x2, x2, #1

    // Jump back to the top of the loop
    b lengthTop

// Bottom of the loop to return the length
lengthBottom:
    // Return the length of the string
    mov x0, x2
    ret lr
