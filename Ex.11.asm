include 'emu8086.inc'
org  100h             

mov CX, n
PRINT 'x = ['
LEA SI, x
printLoop:
    MOV AX, [SI]
    CALL PRINT_NUM
    ADD SI, 2
    PRINT ' '
LOOP printLoop
PRINTN ']'

startSort:     ;bubble sort
    MOV DX, 1  ;flag is sorted
    MOV CX, n
    LEA SI, x
    changeLoop: ;for i 1:n
        MOV AX, [SI]
        CMP AX, [SI+2]
        JL noSwap
            ;COMPARE AND IF < THEN SWAP
            XCHG AX, [SI+2]
            MOV [SI], AX
            MOV DX, 0 ;if any SWAP was made
        noSwap:
            ADD SI, 2
    LOOP changeLoop
;if CMP here then final result is printed
;CMP DX, 1
;JNE startSort

PRINT 'x = ['
MOV CX, n
LEA SI, x
printLoop2:
    MOV AX, [SI]
    CALL PRINT_NUM
    ADD SI, 2
    PRINT ' '
LOOP printLoop2
PRINTN ']'

;if CMP here then partial result are printed
CMP DX, 1
JNE startSort

ret

n DW 5
x DW 1,-4,3,-7,2

DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS

END



