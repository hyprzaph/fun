	global _start

	section .text

_start:
	mov rax, 1		;write in unistd
	mov rdi, 1		;STDOUT_FILENO
	mov rsi, msg		;"HELLO WORLD"
	mov rdx, msglen		;sizeof("HELLO WORLD");
	syscall

	mov rax, 60		;exit
	mov rdi, 0		;EXIT_SUCCESS
	syscall

	section .data
msg:	db "HELLO WORLD", 11
msglen: equ $ - msg
	
