include 'emu8086.inc'
org 100h

MOV CX, n
MOV AX, 0

fact:
ADD AX, CX

LOOP fact ; -1 at each loop

CALL PRINT_NUM

RET

n DW 255

DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS




