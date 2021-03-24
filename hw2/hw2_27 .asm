include 'emu8086.inc'
ORG 100h


PRINT 'Compute the sum of 2 arrays:'
LEA SI,X
MOV CX,n

l1:
    MOV AX, [SI]
    ADD BX,AX
    PRINT ' '
    CALL PRINT_NUM
    ADD SI,2
loop l1 
        
GOTOXY 0,1              
mov CX,m  

PRINT 'The second array'
l2:
    MOV AX, [SI]
    ADD BX,AX
    PRINT ' '
    CALL PRINT_NUM
    ADD SI,2
loop l2           
          
GOTOXY 0,2    
MOV AX,BX    
PRINT 'The sum of the 2 arrays is:'   
CALL PRINT_NUM


   
    

ret
n dw 7    
m dw 6
x dw 3,-6,1,10,5, 9, 0  
y dw 1,2,3,4,5,6
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS
END



