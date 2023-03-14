/**
factorial.s
@ Subroutine fact: Provided an integer in x0, fact will calculate the factorial of that integer and return it in x0.
@ x0: Must contain the input integer
@ LR: Must contain the return address
*/
//https://stackoverflow.com/questions/9268586/what-are-callee-and-caller-saved-registers - Fun read
.global factorial
.type factorial, %function
    factorial:
        // Prologue
        //https://developer.arm.com/documentation/den0024/a/The-ABI-for-ARM-64-bit-Architecture/Register-use-in-the-AArch64-Procedure-Call-Standard/Parameters-in-general-purpose-registers
        //x19 is used to store the input value before it is modified in the function, and x30 is used as a frame pointer to access the saved registers on the stack.
        stp x19, x30, [sp, #-16]!

        // Compare the input value with 0
        cmp x0, #0        
        // If the input value is greater than 0, jump to the base case       
        bgt base_case       
        // If the input value is 0, set the return value to 1 and jump to the exit
        mov x0, #1               
        b exit              

    base_case:
        // Save the input value in x19 register
        mov x19, x0       
        // Decrement the input value by 1       
        sub x0, x0, #1       
        // Recursively call the fact subroutine with the decremented input value     
        bl fact          
        // Multiply the result of the recursive call by the saved input value      
        mul x0, x0, x19          

    exit:
        // Exit
        ldp x19, x30, [sp], #16
        ret
