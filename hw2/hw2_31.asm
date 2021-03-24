org 100h

mov ah, 0       ;prepare to set video mode
mov al, 13h	    ;the video mode will be EGA
int 10h         ;set video mode

mov ah, 0ch     ;prepare to plot pixel
mov al, 1111b
mov bx, n       ;column
mov dx, n       ;line



mov cx,n

edge1: 
push cx
inc bx 
mov cx,bx

int 10h 
pop cx

loop edge1 

mov cx,n


edge2: 

push cx
 
mov cx,bx 
inc dx

int 10h
pop cx

loop edge2 

mov cx,n

edge3: 
push cx
dec bx 
mov cx,bx

int 10h 
pop cx

loop edge3 

mov cx,n


edge4: 

push cx
 
mov cx,bx 
dec dx

int 10h
pop cx

loop edge4

 
ret 
n dw 50
