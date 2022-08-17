.model small
.stack 100h
.data
    a db 9
    b db 2
    result db 48
.code
main proc
    mov ax, @data
    mov ds, ax 
    mov dl, a
    l1:
        sub dl, b
        inc result
        cmp dl, b
    jge l1

    add dl, 48
    mov ah, 2
    int 21h

    mov dl, 10
    int 21h
    
    mov dl, result
    int 21h
mov ah, 4ch
int 21h
main endp
end main