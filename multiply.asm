.model small
.stack 100h

.data
    num1 db 2
    num2 db 3
.code

main proc

    mov ax, @data
    mov ds, ax

    mov al, num1
    mov bl, num2
    mul bl

    mov dl, al
    add dl, 48

    mov ah,2
    int 21h

    mov ah, 4ch
    int 21h



main endp
end main