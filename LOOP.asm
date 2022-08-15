.model small
.stack 100h
.data

.code
main proc 

    mov dl, 48     ; store the number of iteration in AL
    MOV CX, 10
    
    mov ah,2

    L1:

    int 21h
    INC dl
    DEC CX        ; decrement AL
    JNZ L1

    mov ah, 4ch
    int 21h

main endp
end main