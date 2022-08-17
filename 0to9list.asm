.model small
.stack 100h
.data 
	first_digit db 48
	second_digit db 48
	inner db 49

.code
main proc
	mov ax, @data
	mov ds, ax 

	l1:
		mov dl, inner
		mov ah, 2
		int 21h

		inc inner
		inc inner


	cmp inner, 57
	jle l1

	mov dl, 10
	mov ah, 2
	int 21h
	
	mov inner, 48
	l2:
		mov dl, inner
		mov ah, 2
		int 21h

		inc inner
		inc inner


	cmp inner, 57
	jle l2


	mov ah, 4ch
	int 21h
main endp
end main