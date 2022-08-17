.model small
.stack 100h

.data
    char1 db 'F'
.code

main proc
    mov ax, @data
    mov ds, ax

    mov dl, char1
    sub dl, 'A' 

    add dl, 'a'
    mov ah, 2
    int 21h

   
mov ah, 4ch
int 21h

main endp
end main