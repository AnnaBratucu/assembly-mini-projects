org 100h

jmp start

string db 20, 22 dup('?')  

new_line db 0Dh,0Ah, '$'  

start:   

lea dx, string

mov ah, 0ah
int 21h 

mov bx, dx
mov ah, 0       
mov al, ds:[bx+1]
add bx, ax
mov byte ptr [bx+2], '$'
lea dx, new_line
mov ah, 09h
int 21h   

lea bx, string  

mov ch, 0
mov cl, [bx+1] 

jcxz null 

add bx, 2 

lea dx, string+2
mov ah, 09h
int 21h                                    
mov ah, 0
int 16h 
 
null:
ret 
 
 





 
 