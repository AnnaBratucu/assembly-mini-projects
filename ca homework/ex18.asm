
include 'emu8086.inc'

org 100h

lea si, txt
push si
print "Length ofstring is: "
mov ax,0
1:
add ax,1
inc si
cmp [si], '$'
jnz 1
call print_num
txt db 'COMPUTER$'

ret
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS
DEFINE_PTHIS
end                 
                 



