.model small
.stack 100h
.data
.code
main proc
	
	mov cx, 26
	mov ah, 2
	mov dl, 65

	l1: 
		int 21h
		inc dl
		mov bl, dl
		mov dl, 32
		int 21h

		mov dl, bl

	loop l1

	mov dl, 10
	int 21h

	mov cx, 26
	mov dl, 97

	l2: 
		int 21h
		inc dl
		mov bl, dl
		mov dl, 32
		int 21h

		mov dl, bl

	loop l2


	mov ah, 4ch
	int 21h

main endp
end main