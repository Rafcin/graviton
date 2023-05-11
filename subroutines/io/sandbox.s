fact:
    str x19, [sp, #-16]!
    str x30, [sp, #-16]!

    cmp x0, #0
    b.gt base
    mov x0, #1
    b finished
base:
    mov x19, x0
    sub x0, x0, #1
    mul x0, x0, x19

finished:
    ldr x30, [sp], #16
    ldr x19, [sp], #16
    ret lr