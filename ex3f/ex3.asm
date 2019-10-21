
global _start

section .text

_start:
	mov ebx, 42  ;exit status is 42
	mov eax, 1   ;sys_exit system call
	jmp skip     ; the jump to label
	mov ebx, 13  ; exit status is 13
skip:
	int 0x80     ;after compiling and running trying to echo $? will result in 42 because the status 13 is not executed
