global _start

_start:
	sub esp, 4 ;move ourself at the location esp(stack pointer) - 4 allocating 4 bytes
		   ;so that sub,esp 4 is pretty much the equvalent of pop()
	           ;on the contrary add,esp 4 is the equivalent of push()
		   ;because the lowestmemory address of stack is the top where the higher is the 
	           ; bottom, so this is the same 



	mov [esp], byte "V"
	mov [esp+1], byte "a"
	mov [esp+2], byte "l"
	mov [esp+3], byte "e"
	mov eax, 4 ; loading the sys_write call
	mov ebx, 1 ; setting the output to be stout
	mov ecx,esp ;pointing at the data to write
	mov edx, 4 ;setting how many byte from the address write
	int 0x80
	mov eax,1
	mov ebx,0
	int 0x80
	
