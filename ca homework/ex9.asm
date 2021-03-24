
include 'emu8086.inc'

org 100h

lea si, mess
call print_string
call scan_num
mov bx,cx
gotoxy 0,1 ;accesses first line.prints input
lea si, mess2
call print_string
call scan_num
mov ax,cx
gotoxy 0,2 ;accesses second line.prints input
mov ax,bx
mul bx
call print_num


ret
mess db 'Numeber 1: ',0
mess2 db 'Number 2: ',0
DEFINE_SCAN_NUM
DEFINE_PRINT_STRING
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS
DEFINE_PTHIS

end




