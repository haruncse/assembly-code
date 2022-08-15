.model small
.stack 100h
.data
NUM DB 04H
MSG1 DB "Number is Positive $"
MSG2 DB "Number is Negative $"
.code
MOV AX,@data

main PROC
mov dl,'5'
mov ah,2
int 21h

mov ah,4ch
int 21h

main ENDP

end main