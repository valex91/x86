global _start

_start:
	call fn
	mov eax, 1
	mov ebx, 0
	int 0x80

fn:

		     ;PROLOGUE OF FUNCTION

	push ebp     ;this is a safe guard in case we got nested function call that will
		     ;use the same tecnique of storying the current start of the stack
		     ;in this way we will preserve the original address of stack
	mov ebp, esp ;ebp is the base pointer registry and we use it to store where the top of the
		     ; stack was when the function call was initiated
	sub esp,2    ; at this point we are free to modify the stack so we allocate 2 bytes

			;BODY OF FUNCTION

	mov [esp], byte 'H' ;we use the allocated byte to put the 'hi'
	mov [esp+1], byte 'i'
	mov eax, 4	;then we set the write call
	mov ebx, 1	;we set sys_out to be the write	
	mov ecx, esp	;we move into the counter registry the starting address of data
			; that we want to print
	mov edx, 2	;we store in edx how many bytes we want to print from stack
	int 0x80

			;EPILOGUE OF FUNCTION

	mov esp, ebp ;this return the space that was allocated by returning the current stack pointer
		     ;where it was at the start of the function

	pop ebp      ;cleaning the stack from the safe guard before returning
	ret
