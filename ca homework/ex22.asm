
include 'emu8086.inc'
org 100h
mov ax,a
mov cx,b
mov dx,a ;ew store the base
cmp b,0  ;if b is 0, jump
je 1
cmp b,1 ;if b is 1, jump to the end
je print
dec b
mov cx,b ;moves b to cx =>loop repeats b times
2:
mul dx  ;multiplies m, n times
mov dx,a
loop 2
jmp print
1:
mov ax,1  ;ax becomes 1 is n is 0
print:
call print_num

ret           
b dw 4 ;power
a dw 2  ;base
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS
end





