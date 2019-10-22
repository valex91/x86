global _start

section .data
 variable db "lello"
section .text

_start:
	mov [variable], byte 'H';replacing the bute at variable[0] address with h
	mov [variable+5], byte 'X' ; adding the byte x at the address variable + 5
	mov eax, 4 ; load the sys_write call into eax
	mov ebx, 1 ;setting the file descriptor to be stout(1)
	mov ecx, variable ; setting the actual content of the var in memory to be written
	mov edx, 6 ; setting the length of byte that we need to write
	int 0x80 ;performing the system call
	mov eax , 1 ; loading the sys_exit system call
	mov ebx, 0 ;load the exit status into the registry as 0
	int 0x80 ; perform the sys call
	
