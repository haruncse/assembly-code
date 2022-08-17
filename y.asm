.model small
.stack 100h

.data
    a db 2
    b db 1
    x db 2
.code

main proc
    mov ax, @data
    mov ds, ax

    mov dl, a 
    add dl, b
    mov al, x
    mul dl

   mov dl, al
   add dl, 48
   mov ah, 2
   int 21h


mov ah, 4ch
int 21h

main endp
end main