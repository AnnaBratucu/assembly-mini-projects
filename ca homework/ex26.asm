
include 'emu8086.inc'
org 100h

lea si,a
mov cx,n
print 'a= ' 
;print array:
print:
mov ax,[si]
call print_num
print ','
add si,2  ;jumps to next number
loop print
mov ax,0
mov cx,n
lea si,a
1:
add ax,[si]
add si,2
loop 1
printn ' '
print 'Sum: '
call print_num


ret
a dw 3,4,-4,5    ;array
n dw 4
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS
end




