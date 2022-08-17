.model small
.stack 100h
.data
	n db 51
	m db 100	

.code
main proc
	
	mov ax, @data
	mov ds, ax

	mov bl, n
	mov dl, m

	sub dl, bl 

	mov ah, 2
	int 21h

	mov ah, 4ch
	int 21h


main endp
end main