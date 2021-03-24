
include 'emu8086.inc'

org 100h

mov dx,offset buff
mov ah,0ah     ;interrupt to write character
int 21h
gotoxy 0,1
mov bl,buff[1]
mov buff[bx+2],"$" ;because strings finish with dollar sign
mov dx,offset buff+2
mov ah,09h
int 21h

ret    
buff db 10,?,10 dup(' ') ;duplicates the input
end




