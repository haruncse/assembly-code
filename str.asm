; .MODEL SMALL
; .STACK 100H
; .DATA

; MSG DB 'hello     $'

; .CODE

; MAIN PROC

; 	MOV AX,@DATA
; 	MOV DS,AX


; 	LEA DX,MSG

; 	MOV AH,9
; 	INT 21h

; 	MOV AH,4CH
; 	INT 21h

; MAIN ENDP
; END MAIN

data segment
MSG DB 'hello     $'
data ends

code segment
assume cs:code, ds:data

start:

	MOV AX,DATA
	MOV DS,AX


	LEA DX,MSG

	MOV AH,9
	INT 21h

	MOV AH,4CH
	INT 21h

code ends
end start