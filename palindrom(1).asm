include emu8086.inc
org 100h

lea si,s
mov cx,n

halfLoop:
    putc [si] ;put character separately
    push [si] 
    inc si
loop halfLoop

mov cx,n 
inc si

secondHalfLoop:
    putc [si]
    pop ax
    cmp al, [si] 
    jne aiurea
    inc si
loop secondHalfLoop




printn ''
print 'IS PALINDORM'
jmp last

aiurea:
    printn ''
    print 'NOT PALINDROMEEEE'

last:

    
RET

n dw 3
s db 'topspot', 0
end