.model small
.stack 100h
.data
    x db 2
    a db 2
    b db 1
    first_digit db 49
    second_digit db 48
    char db ?
    ev db 'Even$';
    od db 'Odd$'
.code
main proc 
    mov ax, @data
    mov ds, ax

    mov ah, 1
    int 21h
    mov dl, 2
    div dl 
    cmp ah, 0
    je yes


    mov dl, 10
        mov ah, 2
        int 21h
    lea dx, od
    mov ah, 9
    int 21h

    jmp no
    yes:
        mov dl, 10
        mov ah, 2
        int 21h
        lea dx, ev
        mov ah, 9
        int 21h 
    no:
    mov ah, 4ch
    int 21h

main endp
end main