include 'emu8086.inc'
org  100h	           

MOV AL, 13h
MOV AH, 0
INT 10h 


MOV AL, 1110b ;set color 

MOV BX, 10   ;x coord
MOV DX, 30   ;y coord
MOV CX, dim 
 
label1:
    PUSH CX  
    MOV CX, BX  ;set column
    MOV AH, 0ch ;prepare interrupt
    INT 10h     ;10h/AH = 0ch
    INC BX      ;change column
   
     
    POP CX 
    
    CMP BX, 45  ;skip loop up to 10
    JE skipLoop1
LOOP label1 


 
skipLoop1:

MOV BX, 45   ;x coord
MOV DX, 30   ;y coord
MOV CX, dim 

label2:
    PUSH CX  
    MOV CX, BX  ;set column
    MOV AH, 0ch ;prepare interrupt
    INT 10h     ;10h/AH = 0ch
    INC DX      ;change line
   
     
    POP CX 
    
    CMP DX, 75  ;skip loop up to 10
    JE skipLoop2
LOOP label2 


 
skipLoop2:  

MOV BX, 45   ;x coord
MOV DX, 65   ;y coord
MOV CX, dim 
 
label3:
    PUSH CX  
    MOV CX, BX  ;set column
    MOV AH, 0ch ;prepare interrupt
    INT 10h     ;10h/AH = 0ch
    DEC BX      ;change column
    DEC DX
     
    POP CX 
    
    CMP BX, 10  ;skip loop up to 10
    JLE skipLoop3
LOOP label3
 
skipLoop3:

      

ret 


dim DW 35 

