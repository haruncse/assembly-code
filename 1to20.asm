.model small
.stack 100h
.data 
	first_digit db 49
	second_digit db 48
	inner db 1

.code
main proc
	mov ax, @data
	mov ds, ax 

	mov ah, 2
    mov cx, 9

	l1:
			mov dl, first_digit
			int 21h
			mov dl, 32
			int 21h
			inc first_digit
	loop l1



	mov cx, 10
    mov first_digit, 49
	l2:
			mov dl, first_digit
			int 21h
			mov dl, second_digit
			int 21h
			mov dl, 32
			int 21h
			inc second_digit
	loop l2

	mov dl, 50
	int 21h
	mov dl, 48
	int 21h



	mov ah, 4ch
	int 21h
main endp
end main