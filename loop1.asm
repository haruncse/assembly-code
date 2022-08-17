.model small
.stack 100h
.data
    a db 'if!$'

   b db 'else!$'
   x db 7
   y db 2

.code

main proc
    mov ax, @data
    mov ds, ax
    
    mov cl, 48
    mov dl, 7
    mov bl, 2
    
    mov ah, 2

    l1:
       
       
    cmp dl, bl
    jnl l1

    mov dl, cl
    mov ah, 2
    int 21

    mov ah, 4ch
    int 21h

main endp
end main
