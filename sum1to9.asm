.model small
.stack 100h

.data
    num db 1
.code

main proc
    mov ax, @data
    mov ds, ax

    mov cx, 9
    mov dl, 0

    l1:
        add dl, num
        inc num
    loop l1
  
   mov ah, 2
   int 21h


mov ah, 4ch
int 21h

main endp
end main