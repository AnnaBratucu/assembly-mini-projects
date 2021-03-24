
include 'emu8086.inc'

org 100h

lea si, no
call print_string
call scan_num
mov bx,cx
gotoxy 0,1  ;accesses first line. prints input
lea si, number
call print_string
call scan_num
mov ax,cx
gotoxy 0,2 ;accesses second line. prints input
mov ax,bx
add ax,cx
call print_num
              
              
ret           
no db 'Number 1: ',0
number db 'Number 2: ',0
DEFINE_SCAN_NUM
DEFINE_PRINT_STRING
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS
DEFINE_PTHIS
end




