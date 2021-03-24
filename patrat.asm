; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

MOV AL, 12h
MOV AH, 0
INT 10h   
   
MOV AL, 1110b   

MOV BX, 10
MOV DX, 30
MOV CX, dim

line1:
    PUSH CX  
    MOV CX, BX
    MOV AH, 0ch
    INT 10h
    INC BX
    POP CX
    
    CMP BX, 10
    JLE skipLoop1
loop line1

skipLoop1:
          
MOV BX, 45          
MOV DX, 30 
MOV CX, dim  
    
line2:
    PUSH CX    
    MOV CX, BX
    MOV AH, 0ch
    INT 10h
    INC DX
    POP CX
    
    CMP BX, 75
    JGE skipLoop2
loop line2

skipLoop2:
     
MOV BX, 45     
MOV DX, 65 
MOV CX, dim

line3:
    PUSH CX    
    MOV CX, BX
    MOV AH, 0ch
    INT 10h
    DEC BX
    POP CX
    
    CMP BX, 75
    JGE skipLoop3
loop line3

skipLoop3:   

MOV BX, 10
MOV DX, 65
MOV CX, dim

line4:
    PUSH CX    
    MOV CX, BX
    MOV AH, 0ch
    INT 10h
    DEC DX
    POP CX
    
    CMP BX, 75
    JGE skipLoop4
loop line4

skipLoop4:

ret

dim dw 35