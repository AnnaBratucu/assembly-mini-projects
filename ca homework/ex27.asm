
include 'emu8086.inc'
org 100h

mov cx,3
lea si,x
lea di,y
lea bx,z
print 'Sum'
printn
1:
mov al,[di]
mov bl,[si]
add al,bl
mov [bx],ax
call print_num
printn
inc si
inc di
inc bx
loop 1
x db 4,6,2
y db 1,9,5
z db 0

ret   
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS
end




