include "emu8086.inc"
org 100h

MOV CX, N       
LEA SI, X
PRINT 'Array : ' 
l2: 
MOV AX, [SI] 
CALL PRINT_NUM 
ADD SI, 2 
PRINT ' ' 
loop l2 

extloop: 
LEA SI,x 
MOV DX,1 
MOV CX, n
dec cx

loop1:
MOV BX,[SI]
cmp BX,[SI+2] 

JLE nxt
mov ax,[si+2]
mov [si+2],bx
mov [si],ax
MOV DX,0

nxt:
add SI,2 
loop loop1 
cmp DX,0
je extloop

lea si,x
mov cx,n

l1:
mov ax,[si]
cmp ax,4
jmp display

call Print_num
Print ' , '
add si,2
loop l1

display:     

gotoxy 0,2
print 'Maximum is: '
mov ax,[si+8]
call Print_num



ret

n dw 5 
x dw 2,3,-8,17,5 

DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS 

END