
include 'emu8086.inc'
org 100h

print "String: "  
lea di, bffer
mov dx,21
call get_strig
gotoxy 0,1
lea si,di
 ;count number of characters:
 mov ax,-1
 dec si
 1:
 inc si
 inc ax
 cmp [si],0
 jne 1
 dec si ;di accesses the bginning of string and si the end of it
 mov bl,2
 div bl
 mov cl,al
 mov ch,0
 inc si
 dec di
  ;check if characters from middle of string is the same
  2:
  dec si
  inc di
  mov ax,[di]
  mov bx,[si]
  cmp al,bl
  jne wrong
  loop 2
  cmp cx,0 ;if cx is 0, characters are the same
  je good
  wrong:
  print "String is a palindrom"
  ret
  good:
  print "String is not a palindrom"

ret                                
buffer db "123456789123456789"
DEFINE_PRINT_STRING
DEFINE_GET_STRING
end




