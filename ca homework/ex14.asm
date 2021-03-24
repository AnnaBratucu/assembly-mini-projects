
include 'emu8086.inc'

org 100h

lea si,x
mov cx,n
mov bx, [si]
print 'x= '
print:
mov ax,[si]
cmp bx,ax
jge ok
mov bx,ax
ok:
call print_num
add si,2
print ' '
loop print
printn
print 'Maximmum= '
mov ax,bx
call print_num


ret
maximmum dw ?
n dw 4
x dw 3,-2,2,6
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS
end




