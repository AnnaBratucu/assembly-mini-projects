;made in the laboratory

include 'emu8086.inc'
org 100h


mov cx, 3
mov ax, 1

factorial:
    mul cx
    
loop factorial  

call PRINT_NUM

ret

DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS


