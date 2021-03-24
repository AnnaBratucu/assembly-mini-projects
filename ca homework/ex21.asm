
include 'emu8086.inc'

org 100h

 mov ax,1
 mov bx,2
 cmp n,0
 je factorial
 cmp n,1
 je factorial
 dec n
 mov cx,n
 1:
 mul bx
 inc bx
 loop 1     ;repeats loop until cx becomes 0
 factorial:
 call print_num
 
 

ret
n dw 4
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS
end




