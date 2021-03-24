
include 'emu8086.inc'

org 100h

data segment
    number dw 13H
    result db 10 dup('$')
   data ends
code segment 
    assume ds:data,cs:code
   START:
   mov ax,data
   mov ds,ax
   mov ax,number
   lea si, result
   call HEX2DEC
   lea dx,result
   mov AH,9
   int 21h
   mov ah,4CH
   int 21h
 code ends
HEX2DEC PROC NEAR
    mov cx,0
    mov bx,10
    
   l1:
   mov dx,0
   div bx
   add dl,30h
   push dx
   inc cx
   cmp ax,9
   jg l1
   add al,30h
   mov [si],al
  l2:
  pop ax
  inc si
  mov [si],al
  loop l2
  

ret 
HEX2DEC ENDP
END START




