global _start

_start:
	mov eax,1
	mov ebx, 42
	add ebx,ebx
	int 0x80

