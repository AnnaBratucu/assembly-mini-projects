include 'emu8086.inc'
org 100h

mov di, ' ' ;initialize empty string 
mov dx, 6  ;DX stores the maximum number of characters in the string
print 'Input string: '
call get_string  ;inputs the string from keyboard 
lea bx, di ;stores the string in BX
mov cx, dx ; CX set for the loop count  
uppercase: 
   cmp [bx], 'a' ;checks if the character in the string is a letter 
   jb char ; if the character is not a small letter and has the ascii code less than the code of "a" then jump to char label 
   cmp [bx], 'z' ;checks if the character in the string is a letter
   ja char ; if the character is not a small letter and has the ascii code greater than the code of "z" then jump to char label
   and [bx], 11011111b ; clears bit 6 to subtract 32 from the ascii code and 
   
char:
  inc bx ; increment ascii code
  loop uppercase 
mov si, di  ;copy the uppercase string in si to be displayed
printn ''
call print_string ;prints string
ret

DEFINE_PRINT_STRING 
DEFINE_GET_STRING
DEFINE_CLEAR_SCREEN   

END