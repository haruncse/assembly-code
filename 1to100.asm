.model small
.stack 100h
.data
	;nums dw '1', '2', '3', '4', '5', '6', '7', '8', '9', '01', '11', '21', '31', '41', '51', '61', '71', '81', '91','02'
	;d DW 20  '1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11'

	second_digit db 49
	first_digit db 49
	whitespace db ' $'
	inner db 1


.code
main proc
	mov ax, @data
	mov ds, ax

	mov cx, 9
	mov ah, 2

	l1:
		mov dl, second_digit
		int 21h
		inc second_digit
		mov dl, 32
		int 21h
	loop l1

	mov cx, 9
	mov second_digit, 48

	l3:
		l2:
			mov dl, first_digit
			int 21h
			mov dl, second_digit
			int 21h
			mov dl, 32
			int 21h
			inc second_digit
			inc inner

		cmp inner, 10
		jle l2

		mov inner, 1
		mov second_digit, 48
		inc first_digit

	loop l3

	mov dl, 49
	int 21h
	mov dl, 48
	int 21h
	mov dl, 48
	int 21h

mov ah, 4ch
int 21h


main endp
end main