org 100h 

;create file
mov dx, offset nume_fisier
mov cx, 0
mov ah, 3ch
int 21h

mov handle, ax
jc error
 
mov ah, 40h
mov bx, handle
mov cx, 31 ;string length
mov dx, offset text
int 21h

;close file (save)
mov ah, 3eh
mov bx, handle 
int 21h

;end program
error:
    mov ax, 4c00h
    int 21h
ret

nume_fisier db 'textfile.txt', 0  
text dw 'Text written with assembly code'
handle dw ?


