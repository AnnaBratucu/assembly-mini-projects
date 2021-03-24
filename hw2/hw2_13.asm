include emu8086.inc  
ORG 100h  


MOV CX, N      
LEA SI, X
PRINT 'Array not sorted: ' 
l1: 
MOV AX, [SI] 
CALL PRINT_NUM 
ADD SI, 2 
PRINT ' ' 
loop l1 

GOTOXY 0,1

MOV CX, N                 
LEA SI, X

l2: 
    MOV AX, [SI] 
    MOV BX, SI
    MOV DI, SI
    PUSH CX
l3:
    CMP AX, [BX]
    JLE next
    MOV AX, [BX]
    MOV DI, BX
next:
    ADD BX, 2                 
LOOP l3
    MOV DX, [SI]
    MOV [DI], DX
    MOV [SI], AX
    ADD SI, 2         
    POP CX         
LOOP l2        
 
MOV CX, N 
LEA SI, X

PRINT 'Selection sorted array: ' 
l4:
MOV AX, [SI] 
CALL PRINT_NUM 
ADD SI, 2 
PRINT ' '  
loop l4   
       

RET

X DW 1, 4, 3, 2, 6, 5 
N DW 6    

DEFINE_SCAN_NUM
DEFINE_PRINT_STRING
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS 
DEFINE_PTHIS
  

END