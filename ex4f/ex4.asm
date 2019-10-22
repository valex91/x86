global _start

section .text

_start:
	mov ebx, 1 ;set ebx at 1 as start of loop
	mov ecx, 4 ;number of iterations that we want to run

target:
	add ebx,1 ; add one in the ebx
	dec ecx ; ecx -1 in case of incremment use inc 
	cmp ecx, 0
	jg target ;is the previous comparison is not greater than jump back at the start of scope
	mov eax, 1
	int 0x80
