
include 'emu8086.inc'
org 100h

mov cx,n
lea si,a
print 'a= '
print:
mov ax,[si]
call print_num
print ' '  
add si,2
loop print
mov bx,x
mov cx,n
lea si,a
ins:
cmp bx,[si]
jg ok
mov ax, bx
mov bx,[si] ;swap element if they are not in the right order
mov [si],ax     
ok:
add si,2
loop ins
mov [si],bx
inc n
printn
print 'a= '
mov cx,n
lea si,a
print2:
mov ax,[si]
call print_num
print ''
add si,2
loop print2

ret        
n dw 4
a dw -6,4,2,-4
x dw 1
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS

end




