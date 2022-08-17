.model small
.stack 100h

.data
    num1 db 7
    num2 db 2
    result db "Division result: $"
    remainder db "Remainder: $"
.code

main proc
    mov ax, @data
    mov ds, ax

    mov dl, num1 
    mov bl, num2 
    
    mov cl, 0 

    l1:
        inc cl     
        sub dl, bl 

    CMP dl, bl  
    JGE l1      

    
    mov bl, dl 

    lea dx, result 
    mov ah,9
    int 21h

    mov dl, cl
    add dl , 48
    mov ah,2
    int 21h


    MOV dl, 10
    MOV ah, 2
    INT 21h

    lea dx, remainder
    mov ah,9
    int 21h


    mov dl, bl
    add dl , 48
    mov ah,2
    int 21h


    
    mov ah, 4ch
    int 21h


main endp
end main