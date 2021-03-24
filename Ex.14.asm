include 'emu8086.inc'
org  100h	
  
  MOV CX, n
  PRINT 'x =' 
  LEA SI, x
  MOV BX, [SI]
  label1:   
  
    MOV AX,[SI] 
    CALL PRINT_NUM
    ADD SI, 2
    PRINT ','
            
  CMP BX, AX ;Compare
  JG skip    ;If greater, jump to 'skip'
  MOV BX, AX ;This is the FALSE case
  skip:      ;This is the TRUE case
    
  LOOP label1   
  ;End of loop 
  PRINTN ''
  PRINT 'max ='
  MOV AX, BX
  CALL PRINT_NUM
  
RET 

n DW 10
x DW 1,2,3,-3,12,9,-1,8,20,14

DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS

END