
org 100h

MOV AL, 13h     ;video card
MOV AH, 0
INT 10h


mov al, 1110b              ;set color

mov BX, 10                           ;x coord
mov dx, 30                            ;y coor
MOV CX, dim
   

line:    
 PUSH CX
MOV CX, BX 
MOV AH, 0ch

int 10h 
inc BX
POP CX

Loop line



ret 
dim dw 35





