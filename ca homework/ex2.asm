

 include 'emu8086.inc'
org 100h

mov dx,offset buff ; moves to dx
mov ah,0ah ;    intrruption 
int 21h ;read character from input
gotoxy 0,1

mov bl,buff[1]
mov buff[bx+2], "$" ; for strings to finsh with dollar sign
print "Text: "
mov dx,offset buff+2
mov ah,09h
int 21h

ret    
buff db 10,?,100 dup(' ')  ;  duplicates text
end




