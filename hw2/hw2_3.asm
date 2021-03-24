org 100h


jmp start

msg1 db 0Dh,0Ah, " Enter any letter from a-z or word in lowercase, or press ENTER to exit: $"


string1 db 20, 22 dup('?')

new_line db 0Dh,0Ah, '$'

start:

mov dx, offset msg1
mov ah, 9
int 21h

lea dx, string1

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


lea bx, string1

mov ch, 0
mov cl, [bx+1] 

jcxz null

add bx, 2

upper_case:

cmp byte ptr [bx], 'a'
jb ok
cmp byte ptr [bx], 'z'
ja ok

and byte ptr [bx], 11011111b

ok:
inc bx
loop upper_case



lea dx, string1+2
mov ah, 09h
int 21h

jmp start

mov ah, 0
int 16h


null:
ret 