  include 'emu8086.inc '
org 100h  

lea si, s    ;pointer to array of chars
mov cx, n    ;size of the 1/2 loop
  
  ;first loop stores 1/2 of the chars
halfLoop:
   putc [si]       ;takes a character from a word
   push [si]
   inc si 
loop halfLoop 
;second loop  compares the other 1/2
;chars with the reversed order from
;the first 1/2 of array
   
loop cx, n
secondHalfLoop:
  putc [si]
  pop ax
  cmp al, [si]
  jne aiurea
  inc si
  
loop secondHalfLoop

printn ''
print 'Is palindrom'
jmp last 

aiurea:
printn ''
print 'Not palindrome'

last:

ret

n dw 6
s db 'elefacecafele' , 0

end


