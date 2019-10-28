global _start

_start:
	push 21 ;pushing the first parameter of fn to stack
	push 3	;pushing the second parameter of fn to the stack
	call multiplyByTwo
	mov ebx, eax
	mov eax, 1
	int 0x80
multiplyByTwo:
	push ebp ;pushing the current stack address onto the stack in case of nested fn
	mov ebp, esp ;saving the current stack pointer into the base pointer registry
	mov eax, [ebp+8] ; put into eax registry the fn paramenter
			 ; which in this case is stored at ebp + 8 because
			 ; we moved the stack of 8 bytes with 'push 21' and the 'push ebp'
	add eax, [ebp+12]     ; then we add  the second parameter that is stored at 'ebp+12'

			 ; because we had 3 push so far so we have to point at add -3 byte

	mov esp, ebp     ; restoring the stack state before the fn execution by restoring
			 ; the stack pointer at the correct address
	pop ebp          ; popping the safe return value at top of stack
	ret
