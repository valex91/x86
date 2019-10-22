global _start

section .data
	addr db  "green" ;saving a variable called addr with the value green 
section .text
_start:
	mov eax, 4 ;sys_write system call
	mov ebx, 1 ;stdout descriptor
	mov ecx, addr ;getting how many bytes to write
	mov edx, 5; ;setting the 5 byte that compose the word green
	int 0x80
	mov eax, 1 ;sys_exit system call
	mov ebx, 0 ;setting the status of exit as 0
	int 0x80 ; running the close instruction
