

include 'emu8086.inc'

org 100h

1:
mov cx,n
lea si,x
print 'x= '
print: 
mov ax,[si]
call print_num
print ' '
add si,2
loop print

mov sort,1
mov cx,n
dec cx
lea si,x
bubble:
mov ax,[si]
cmp ax,[si+2]
jle done
mov bx,[si+2]
mov [si],bx
mov [si+2],ax
mov sort,0
done:
add si,2
loop bubble
printn
cmp sort,0
je 1

ret 
sort dw ?
n dw 4
x dw 2,4,-7,1
   DEFINE_PRINT_NUM
   DEFINE_PRINT_NUM_UNS
   end




