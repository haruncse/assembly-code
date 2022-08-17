.model small
.stack 100h
.data
    array db 1, 9, 3, 8
.code
main proc
    mov ax, @data
    mov ds, ax 

    mov si, offset array
    mov dl, [si]

    mov cx, 3
    back:
    l1:
        inc si
        mov bl, [si]

        cmp dl, bl
        jl change


    loop l1

    add dl, 48
    mov ah, 2
    int 21h

    jmp forword
    change:
        mov dl, bl

    jmp back

    forword:

;end  
mov ah, 4ch
int 21h
main endp
end main