global main
extern printf

section .data
	msg db "testing %1..", 0x0a, 0x00 ;we are here passing the character /n(0x0a) then
					  ; we are passing a null terminator  byte(0x00) to tell C
					  ; where the string ends

main:
	push ebp
	mov ebp, esp
			; <Functions PARAMETERS passed through stack >
			;NB: Parameters are passed into a revers order because of nature of stack
	push 123    ;pushing the first argument of printF to the stack
	push msg    ; pushing the second argument of print f the stack

	call printf	; in this case we are using C printf function
	mov eax, 0	; put the status 0 into eax registy
	mov esp, ebp	; restoring status of stack as previous to function call
	pop ebp		; pop the safe value off the stack 
	ret		; return
