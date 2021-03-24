
include 'emu8086.inc'

org 100h

mov ah,0
mov al,13h
int 10h
mov ah,0ch
mov al,1111b  
mov bx,n
mov dx,n
mov cx,n
1:
push cx
inc bx
mov cx,bx
mov dx,bx
int 10h
popcx
loop 1
mov cx,n
mov dx,n
2: push cx
inc dx
mov bx,dx
int 10h
pop cx
loop 2
mov cx,n
3:
push cx
dec bx
mov cx,bx
int 10h
pop cx
loop 3


ret
n dw 50




