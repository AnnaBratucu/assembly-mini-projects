
include 'emu8086.inc'

org 100h

mov ax,0     ;make ax first term
mov bx,1      ;make bx second term
cmp n,0
je print
cmp n,1
je fib
cmp n,2
je fib 
sub n,2
mov cx,n ;moves n to cx
1:
mov dx,bx
add dx,ax ; find out the n element
mov ax,bx
mov bx,dx
loop 1
mov ax,bx
jmp print 
fib:
mov ax,1
print: 
call print_num


ret
n dw 4
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS
end




