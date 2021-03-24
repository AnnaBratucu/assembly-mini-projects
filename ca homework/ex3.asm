
include 'emu8086.inc'
org 100h

mov cx,200 ; sets the counter to 200 
mov bx,offset[txt]

string:
mov al,[bx]  

;check if character is a letter:

cmp al,'a'
jb next  ;if ASCII code below 'a'
cmp al,'z'
ja next  ;if ASCII code above 'z'

sub al,20h
mov [bx],al

next: 
inc bx        ;increment bx
loop string

lea dx,txt ;print string
mov ah,09h
int 21h
ret    
txt db 'This is a text'
end




