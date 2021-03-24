
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov ah, 1
int 21h

  mov dh, 1      ;y
  mov dl, 20     ;x
  mov bh, 0      ;pag
  mov ah, 2      ;position cursor
  int 10h        ;position cursor
  
  
mov ah, 2
mov dl, AL
int 21h


ret

dim DW 150


