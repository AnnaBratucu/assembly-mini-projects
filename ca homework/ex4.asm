
include 'emu8086.inc'

org 100h

mov cx,50  ;counts how many repeats  
mov bx,offset[txt]
string:
mov al,[bx]
 
 ;check if character is a letter:
 cmp al,'A'
 jb next   ;if ASCII code is below 'A'
 cmp al, 'z'
 ja next   ;if ASCII code is below 'z'
 cmp al, 'Z'
 jle low
 
 sub al,20h
 mov [bx],al
 jmp next
 
 low:
 add al,20h
 mov [bx],al 
 next:
 inc bx ;increment bx with 1
 loop string ;repeats loop until cx becomes 0
 lea dx,txt ;print string
 mov ah,09h
 int 21h
 

ret
txt db 'This is a text TXT'
end




