
include 'emu8086.inc'
org 100h

lea si, txt
push si
print "Length of string is:"
mov ax,0
1:
add ax,1
inc si
cmp [si], '$'
jnz 1
call print_num
txt db 'bbc$'

ret          
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS
DEFINE_PTHIS
end            
 
 



