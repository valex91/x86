global _start

_start:
	call func ;when call is used will put 
	mov eax, 1
	int 0x80

func:
	mov ebx, 42
	ret ;this is the shorthand for pop eax and jmp eax to pop the current function call from the s		  ;stack in this case 'func' and continue the execution by jumping back to the next address
	
