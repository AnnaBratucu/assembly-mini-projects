include 'emu8086.inc'
org 100h

mov ax,n
mov bx,n
mov cx,1

myLoop:
    mul bx
    inc cx
    cmp cx,m
    jne myLoop

CALL PRINT_NUM

ret
n dw 2
m dw 3
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS
END