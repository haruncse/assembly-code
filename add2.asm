.MODEL SMALL
.STACK 100H
.data
  num1 DB 3
  num2 DB 2

.CODE

MAIN PROC


mov ax, @data
mov ds, ax

mov al, num1
mov dl, num2

add dl, al


add dl, 48

mov ah, 2
int 21h

mov ah, 4ch
int 21h



MAIN ENDP
END MAIN



; data segment
; a db 80
; b db 32
; data ends

; code segment
; assume cs:code, ds:data

; start:

; 	mov ax, data
; 	mov ds, ax

; 	mov bl, a
; 	mov dl, b

; 	add dl, bl
; 	; add dl, 48

; 	mov ah, 2
; 	int 21h

; 	mov ah, 4ch
; 	int 21h

; code ends
; end start

















