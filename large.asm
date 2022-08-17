.model small
.stack 100h
.data
	array db 8, 5, 6, 9, 2
.code
main proc
	mov ax, @data
	mov ds, ax

	mov si, offset array
	mov cx, 4
	mov dl, [si]
	inc si 

	back:
	l1: 
		mov bl, [si]
		inc si
		cmp bl, dl
		jg l2

	loop l1

	add dl, 48
	mov ah, 2
	int 21h

	jmp go
	l2:
	mov dl, bl
	jmp back

	go:

	mov ah, 4ch
	int 21h

main endp
end main