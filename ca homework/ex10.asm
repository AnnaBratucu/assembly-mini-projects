
include 'emu8086.inc'

org 100h
mov ax,a
printn '8 bits: '
cmp a,0
jle negative ;skips i a is a negative number 
;if a is a positive number:
print "Unsigned: "
call print_num
printn
print "Signed: "
call print_num
jmp done

negative:   
print "Signed: "
call print_num
printn ' '
print "Unsigned: "
mov bx,256 ;bx becomes 256
add bx,ax
mov ax,bx
call print_num
jmp done

done:
ret  
a dw -19 
DEFINE_SCAN_NUM
DEFINE_PRINT_STRING
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS
DEFINE_PTHIS

end





