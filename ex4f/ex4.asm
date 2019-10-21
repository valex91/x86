global _start

section .text

_start:
	mov ebx, 1 ;set ebx at 1 as start of loop
	mov ecx, 4 ;number of iterations that we want to run
	cmp ebx,ecx ;comparing the registry entries
	jle target ; if the result of the comparison is less or equal then jump to 'target'


target:
	add ebx,1 ;add one in the ebx
