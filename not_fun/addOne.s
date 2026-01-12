	global _start
	section .text

_start:

	mov rax, 1		;this is for output
	mov rdi, 1		;STDOUT_FILENO
	mov rcx, msg1		;mgs1
	mov rbx, msg1_len	;sizeof(msg1)
	int 0x80		;call syscall

	
	section .data
	
	msg1 db "Enter your first num: "
	msg1_len equ $ - mgs1

	msg2 db "Enter second num: "
	msg2_len equ $ - msg2

	msg db "Total is: "
	msg_len equ $ - msg

	section .bss

	msg1 resb 5
	msg2 resb 5
	res resb 5
