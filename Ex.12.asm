include 'emu8086.inc'
org  100h             

MOV CX, n   ;loop counts ;outer loop
LEA DI, x   ;destination index register
MOV DX, n    

label0:
    PRINT 'x = ['
    PUSH CX     ;move CX to memory Stack
    MOV SI, DI  
    MOV BX, SI  ;stores the position of min
    MOV CX, DX
    label1:     ;INNER LOOP
        MOV AX, [SI]
        CALL PRINT_NUM
        PRINT ' '
        CMP [BX], AX
        JL skip     ;if is less then store
        MOV BX, SI
        skip:
            ADD SI, 2
    LOOP label1     ;CX is decremented 

DEC DX
POP CX      ;retrive value of CX from stack
            ;used for outer loop
            
PRINT '], '
PRINT 'min = '
MOV AX, [BX]        ;min is stored in DX
CALL PRINT_NUM
PRINT ', pos = '
MOV AX, DI          ;position of min in memory
CALL PRINT_NUM
PRINT ',CX = '
MOV AX, CX
CALL PRINT_NUM
PRINT ', DX = '
MOV AX, DX
CALL PRINT_NUM
PRINTN ' '

;Swap the [BX] and [DI] values
push [BX]
push [DI]
pop [BX]
pop [DI]   


ADD DI, 2

LOOP label0

PRINTN ' '
MOV CX, n
LEA SI, x
PRINT 'sorted(x) = ['

loopPrint:
    MOV AX, [SI]
    CALL PRINT_NUM
    PRINT ' '
    ADD SI, 2
LOOP loopPrint      ;CX is decremented
PRINTN ']'

ret

n DW 6
x DW 1,-2,3,10,-6,4

DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS

END



