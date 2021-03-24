
org 100h


MOV AL, 12h
MOV AH, 0
INT 10h  

MOV AL, 1110b

MOV BX, 40
MOV DX, 40
MOV CX, dim


line:
  PUSH CX
  MOV AH, 0ch
  INT 10h
  DEC BX
  DEC DX
  POP CX
  
  CMP BX, 10
  JLE skipLoop
  
loop line

skipLoop:
 


ret

dim dw 30




