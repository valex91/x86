global _start

section .text

_start:
	mov ecx, 99  ;set the ecx registry to 100
	mov ebx, 42  ;setting the exit status to 42
	mov eax, 1   ; sys_exit system call
	cmp ecx, 100 ; the cmp instruction will compare the current value of ecx(99) with 100 and set the result in the flag registry
	jl target    ; if the result is less then jump to 'target' instruction
	mov ebx,13   ; changing again the exit status but if the comparison is properly done will never run

target: 
	int 0x80

