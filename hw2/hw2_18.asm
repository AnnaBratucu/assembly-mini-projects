include 'emu8086.inc'
org 100h
mov cx,15   ;maximum string length 
mov bx,0    ;no of uppercase characters
lea si,a   
read:                 
cmp [si],'A'      ;compares with A
jae smaller       ;
jmp next
smaller:         ;and with Z
cmp [si],'Z'
jle adder
jmp next
adder:
inc bx
jmp next
next:   
inc si
loop read 
printer: 
print 'number of uppercase letters: '  
mov ax,bx           ;gets number of letters
call print_num      ;prints number of letters
ret           
a dw 'ThiSISaTExt',0   
define_print_num
define_print_num_uns        

