/*
  _______        _     ______    _ _ _             
 |__   __|      | |   |  ____|  | (_) |            
    | | _____  _| |_  | |__   __| |_| |_ ___  _ __ 
    | |/ _ \ \/ / __| |  __| / _` | | __/ _ \| '__|
    | |  __/>  <| |_  | |___| (_| | | || (_) | |   
    |_|\___/_/\_\\__| |______\__,_|_|\__\___/|_|   

*/
.global	text_editor
.type	text_editor, %function
text_editor:
.LFB3:
	.cfi_startproc
	sub	x12, sp, #1048576
	.cfi_def_cfa 12, 1048576
.LPSRL0:
	sub	sp, sp, 65536
	str	xzr, [sp, 1024]
	cmp	sp, x12
	b.ne	.LPSRL0
	.cfi_def_cfa_register 31
	sub	sp, sp, #80
	.cfi_def_cfa_offset 1048656
	stp	x29, x30, [sp]
	.cfi_offset 29, -1048656
	.cfi_offset 30, -1048648
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -1048640
	.cfi_offset 20, -1048632
	str	x0, [sp, 40]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	add	x1, sp, 1048576
	ldr	x2, [x0]
	str	x2, [x1, 72]
	mov	x2, 0
	add	x0, sp, 72
	mov	x1, 1048576
	mov	x2, x1
	mov	w1, 0
	bl	memset
	mov	w0, 1
	str	w0, [sp, 56]
	str	wzr, [sp, 60]
	str	wzr, [sp, 64]
main_loop:
	add	x0, sp, 72
	ldr	w4, [sp, 64]
	ldr	w3, [sp, 60]
	ldr	w2, [sp, 56]
	mov	x1, x0
	ldr	x0, [sp, 40]
	bl	draw_editor
	adrp	x0, :got:stdscr
	ldr	x0, [x0, #:got_lo12:stdscr]
	ldr	x0, [x0]
	bl	wgetch
	str	w0, [sp, 68]
	ldr	w0, [sp, 68]
	cmp	w0, 343
	beq	enter_key
	ldr	w0, [sp, 68]
	cmp	w0, 343
	bgt	.L21
	ldr	w0, [sp, 68]
	cmp	w0, 263
	beq	backspace_key
	ldr	w0, [sp, 68]
	cmp	w0, 263
	bgt	.L21
	ldr	w0, [sp, 68]
	cmp	w0, 261
	beq	left_key
	ldr	w0, [sp, 68]
	cmp	w0, 261
	bgt	.L21
	ldr	w0, [sp, 68]
	cmp	w0, 260
	beq	up_key
	ldr	w0, [sp, 68]
	cmp	w0, 260
	bgt	.L21
	ldr	w0, [sp, 68]
	cmp	w0, 259
	beq	down_key
	ldr	w0, [sp, 68]
	cmp	w0, 259
	bgt	.L21
	ldr	w0, [sp, 68]
	cmp	w0, 258
	beq	right_key
	ldr	w0, [sp, 68]
	cmp	w0, 258
	bgt	.L21
	ldr	w0, [sp, 68]
	cmp	w0, 127
	beq	backspace_key
	ldr	w0, [sp, 68]
	cmp	w0, 127
	bgt	.L21
	ldr	w0, [sp, 68]
	cmp	w0, 24
	beq	text_editor_stk_chk
	ldr	w0, [sp, 68]
	cmp	w0, 24
	bgt	.L21
	ldr	w0, [sp, 68]
	cmp	w0, 19
	beq	no_op
	ldr	w0, [sp, 68]
	cmp	w0, 19
	bgt	.L21
	ldr	w0, [sp, 68]
	cmp	w0, 18
	beq	no_op
	ldr	w0, [sp, 68]
	cmp	w0, 18
	bgt	.L21
	ldr	w0, [sp, 68]
	cmp	w0, 15
	beq	no_op
	ldr	w0, [sp, 68]
	cmp	w0, 15
	bgt	.L21
	ldr	w0, [sp, 68]
	cmp	w0, 10
	beq	enter_key
	ldr	w0, [sp, 68]
	cmp	w0, 10
	bgt	.L21
	ldr	w0, [sp, 68]
	cmp	w0, 6
	beq	no_op
	ldr	w0, [sp, 68]
	cmp	w0, 9
	beq	no_op
	b	.L21
backspace_key:
	ldr	w0, [sp, 64]
	cmp	w0, 0
	ble	.L35
	ldr	w0, [sp, 64]
	sub	w0, w0, #1
	add	x1, sp, 72
	sxtw	x2, w0
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 10
	add	x0, x2, x0
	add	x19, x1, x0
	add	x1, sp, 72
	ldrsw	x2, [sp, 64]
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 10
	add	x0, x2, x0
	add	x20, x1, x0
	add	x1, sp, 72
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 10
	add	x0, x1, x0
	bl	strlen
	mov	x1, x0
	ldrsw	x0, [sp, 64]
	sub	x0, x1, x0
	add	x0, x0, 1
	mov	x2, x0
	mov	x1, x20
	mov	x0, x19
	bl	memmove
	ldr	w0, [sp, 64]
	sub	w0, w0, #1
	str	w0, [sp, 64]
	b	no_op
.L35:
	ldr	w0, [sp, 60]
	cmp	w0, 0
	ble	no_op
	ldr	w0, [sp, 60]
	sub	w0, w0, #1
	add	x1, sp, 72
	sxtw	x0, w0
	lsl	x0, x0, 10
	add	x0, x1, x0
	bl	strlen
	str	w0, [sp, 64]
	ldr	w0, [sp, 60]
	sub	w0, w0, #1
	add	x1, sp, 72
	sxtw	x0, w0
	lsl	x0, x0, 10
	add	x2, x1, x0
	add	x1, sp, 72
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 10
	add	x0, x1, x0
	mov	x1, x0
	mov	x0, x2
	bl	strcat
	add	x1, sp, 72
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 10
	add	x3, x1, x0
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	add	x1, sp, 72
	sxtw	x0, w0
	lsl	x0, x0, 10
	add	x4, x1, x0
	ldr	w1, [sp, 56]
	ldr	w0, [sp, 60]
	sub	w0, w1, w0
	lsl	w0, w0, 10
	sxtw	x0, w0
	mov	x2, x0
	mov	x1, x4
	mov	x0, x3
	bl	memmove
	ldr	w0, [sp, 56]
	sub	w0, w0, #1
	str	w0, [sp, 56]
	ldr	w0, [sp, 60]
	sub	w0, w0, #1
	str	w0, [sp, 60]
	b	no_op
enter_key:
	ldr	w0, [sp, 56]
	cmp	w0, 1023
	bgt	no_op
	ldr	w0, [sp, 60]
	add	w0, w0, 2
	add	x1, sp, 72
	sxtw	x0, w0
	lsl	x0, x0, 10
	add	x3, x1, x0
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	add	x1, sp, 72
	sxtw	x0, w0
	lsl	x0, x0, 10
	add	x4, x1, x0
	ldr	w1, [sp, 56]
	ldr	w0, [sp, 60]
	sub	w0, w1, w0
	sub	w0, w0, #1
	lsl	w0, w0, 10
	sxtw	x0, w0
	mov	x2, x0
	mov	x1, x4
	mov	x0, x3
	bl	memmove
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	add	x1, sp, 72
	sxtw	x0, w0
	lsl	x0, x0, 10
	add	x3, x1, x0
	add	x1, sp, 72
	ldrsw	x2, [sp, 64]
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 10
	add	x0, x2, x0
	add	x0, x1, x0
	mov	x2, 1023
	mov	x1, x0
	mov	x0, x3
	bl	strncpy
	ldrsw	x0, [sp, 64]
	ldrsw	x1, [sp, 60]
	lsl	x1, x1, 10
	add	x1, x1, 1048576
	add	x1, x1, 80
	add	x1, sp, x1
	add	x0, x1, x0
	sub	x0, x0, #1052672
	strb	wzr, [x0, 4088]
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
	str	wzr, [sp, 64]
	b	no_op
down_key:
	ldr	w0, [sp, 60]
	cmp	w0, 0
	ble	no_op
	ldr	w0, [sp, 60]
	sub	w0, w0, #1
	str	w0, [sp, 60]
	ldrsw	x19, [sp, 64]
	add	x1, sp, 72
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 10
	add	x0, x1, x0
	bl	strlen
	cmp	x19, x0
	bcc	.L39
	add	x1, sp, 72
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 10
	add	x0, x1, x0
	bl	strlen
	b	.L40
.L39:
	ldr	w0, [sp, 64]
.L40:
	str	w0, [sp, 64]
	b	no_op
right_key:
	ldr	w0, [sp, 56]
	sub	w0, w0, #1
	ldr	w1, [sp, 60]
	cmp	w1, w0
	bge	no_op
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
	ldrsw	x19, [sp, 64]
	add	x1, sp, 72
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 10
	add	x0, x1, x0
	bl	strlen
	cmp	x19, x0
	bcc	.L42
	add	x1, sp, 72
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 10
	add	x0, x1, x0
	bl	strlen
	b	.L43
.L42:
	ldr	w0, [sp, 64]
.L43:
	str	w0, [sp, 64]
	b	no_op
up_key:
	ldr	w0, [sp, 64]
	cmp	w0, 0
	ble	.L44
	ldr	w0, [sp, 64]
	sub	w0, w0, #1
	str	w0, [sp, 64]
	b	no_op
.L44:
	ldr	w0, [sp, 60]
	cmp	w0, 0
	ble	no_op
	ldr	w0, [sp, 60]
	sub	w0, w0, #1
	str	w0, [sp, 60]
	add	x1, sp, 72
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 10
	add	x0, x1, x0
	bl	strlen
	str	w0, [sp, 64]
	b	no_op
left_key:
	ldrsw	x19, [sp, 64]
	add	x1, sp, 72
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 10
	add	x0, x1, x0
	bl	strlen
	cmp	x19, x0
	bcs	.L46
	ldr	w0, [sp, 64]
	add	w0, w0, 1
	str	w0, [sp, 64]
	b	no_op
.L46:
	ldr	w0, [sp, 56]
	sub	w0, w0, #1
	ldr	w1, [sp, 60]
	cmp	w1, w0
	bge	no_op
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
	str	wzr, [sp, 64]
	b	no_op
.L21:
	ldr	w0, [sp, 68]
	bl	isprint
	cmp	w0, 0
	beq	no_op
	add	x1, sp, 72
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 10
	add	x0, x1, x0
	bl	strlen
	cmp	x0, 1022
	bhi	no_op
	ldr	w0, [sp, 64]
	add	w0, w0, 1
	add	x1, sp, 72
	sxtw	x2, w0
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 10
	add	x0, x2, x0
	add	x19, x1, x0
	add	x1, sp, 72
	ldrsw	x2, [sp, 64]
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 10
	add	x0, x2, x0
	add	x20, x1, x0
	add	x1, sp, 72
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 10
	add	x0, x1, x0
	bl	strlen
	mov	x1, x0
	ldrsw	x0, [sp, 64]
	sub	x0, x1, x0
	add	x0, x0, 1
	mov	x2, x0
	mov	x1, x20
	mov	x0, x19
	bl	memmove
	ldr	w0, [sp, 68]
	and	w2, w0, 255
	ldrsw	x0, [sp, 64]
	ldrsw	x1, [sp, 60]
	lsl	x1, x1, 10
	add	x1, x1, 1048576
	add	x1, x1, 80
	add	x1, sp, x1
	add	x0, x1, x0
	sub	x0, x0, #1052672
	mov	w1, w2
	strb	w1, [x0, 4088]
	ldr	w0, [sp, 64]
	add	w0, w0, 1
	str	w0, [sp, 64]
	b	no_op
no_op:
	nop
	b	main_loop
text_editor_stk_chk:
	nop
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	add	x2, sp, 1048576
	ldr	x3, [x2, 72]
	ldr	x1, [x0]
	subs	x3, x3, x1
	mov	x1, 0
	beq	text_editor_exit
	bl	__stack_chk_fail
text_editor_exit:
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp]
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 19
	.cfi_restore 20
	add	sp, sp, 80
	.cfi_def_cfa_offset 1048576
	add	sp, sp, 1048576
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
text_editor_end:
	.size	text_editor, .-text_editor
