include 'emu8086.inc'
org 100h

mov ax,x
mov cx,1
mov dx,0

myLoop:
    mul cx
    inc cx
    cmp cx,x
    jne myLoop

CALL PRINT_NUM

ret
x dw 4
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS
END