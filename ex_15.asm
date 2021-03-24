include 'emu8086.inc'
org 100h

;write the initial message
mov ah, 9
lea dx, a
int 21h 
         
;read from the console our string        
mov ah, 0Ah   
lea dx, b
int 21h 

PRINTN '' ;print a line

;print the string that has been read
mov ah, 9
lea dx, b+2
int 21h

ret

a db "the string: $" ;$ the end of the string
b db 20 DUP('$')  ;variable initialized with $ that is where we read the string

