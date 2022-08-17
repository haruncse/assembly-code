.model small
.stack 100h
.data
	ev db 'Even$';
	od db 'Odd$'

.code
main proc

	mov ax, @data
	mov ds, ax

	mov ah, 1 
	int 21h

	mov bl, 2
	div bl 
	

	cmp ah, 0
	je l1

	mov dl, 10
	mov ah, 2
	int 21h

	mov dx, offset od
	mov ah, 9
	int 21h
	jmp l2

	l1:
		mov dl, 10
		mov ah, 2
		int 21h

		mov dx, offset ev
		mov ah, 9
		int 21h



	l2:
	mov ah, 4ch
	int 21h

main endp
end main