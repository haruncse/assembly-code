.model small
.stack 100h
.data
.code

main PROC
mov dl,'5'
mov ah,2
int 21h

mov ah,4ch
int 21h

main ENDP

end main