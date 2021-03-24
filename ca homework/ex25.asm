
include 'emu8086.inc'

org 100h

lea si,a
mov cx,n   ;number of numbers in array

print 'a= ' 
;print numbers:
1:        
mov ax,[si]
call print_num
print ','
add si,2
loop 1
mov ax,0
mov cx,n
lea si,a 
;add numbers to the ax:
add:
add ax,[si]
add si,2  ;go to next number
loop add
printn ' '
print 'The sum is= '
call print_num


ret
a dw 3,5,-6,7,4   ;array
n dw 5
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS
end




