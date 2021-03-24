
include 'emu8086.inc'

org 100h

mov ah, 3ch
mov cx,0
mov dx,offset name
mov ah,3ch
int 21h  ;crate file
mov handle, ax

mov bx,handle
mov dx,offset data
mov cx, size
mov ah,40h
int 21h ;write file
mov al,0
mov bx,handle
mov cx,0
mov dx,7
mov ah42h
int 21h
mov bx,handle
mov dx offset buffer
mov cx,4
mov ah,3eh
int 21h ;close file


ret
name db "file.txt",0
handle dw ?
data db "This is a text"
size=$-offset data
buffer db 4 dup (' ')




