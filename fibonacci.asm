ORG 100h

mov ax,@data         ;loading starting adress for data
                          ;default data group
mov ds, ax         
mov si, offset list      ;offset used as a pointer
mov cx, n  
mov al, 0
mov [si], al
add al, 1
inc si
mov [si], al
mov al, 0 ;store the final result
  
  fibo:
  add al, [si]
  inc si    
  mov [si], al
  dec si  
  mov al, [si]
  inc si
  loop fibo
  
  mov ah, 4ch
  int 21h  ; magic number for DOS
  


list db 12 dup(?)    ;an array of 12 numbers with unknown values


ret

n DW 8