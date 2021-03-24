                         
data segment
        
value   dw  -7345
val2    dw  54453      

endl    db  10, 13, '$'
    
pkey    db "press any key...$"
ends

stack segment
    dw   128  dup(0)
ends

code segment

start:

    mov ax, data
    mov ds, ax
    mov es, ax
    
    mov     ax, value
    call    printd     
  
    lea     dx, endl
    mov     ah, 9
    int     21h

   
    mov     ax, val2
    call    printud     

   
    lea     dx, endl
    mov     ah, 9
    int     21h

   
    lea dx, pkey
    mov ah, 9
    int 21h      

  
    mov ah, 1
    int 21h

    mov ax, 4c00h 
    int 21h


printd  proc

   
    push    ax  
    push    bx
    push    cx    
    push    dx

     
    cmp     ax, 0
    jge     L1

    mov     bx, ax

   
    mov     dl, '-'
    mov     ah, 2
    int     21h   

         
    mov     ax, bx
    neg     ax
    call    printd
    jmp     L3

L1:

    mov     dx, 0
    mov     cx, 10
    div     cx

            
    cmp     ax, 0
    jne     L2

    add     dl, '0'
    mov     ah, 2
    int     21h

    jmp     L3

L2: 
   
    call    printd             

  
    add     dl, '0'
    mov     ah, 2
    int     21h        

L3:
   
    pop     dx
    pop     cx
    pop     bx
    pop     ax
    ret
printd  endp
               
printud  proc
    push    ax  
    push    bx
    push    cx    
    push    dx

    mov     dx, 0
    mov     cx, 10
    div     cx

    cmp     ax, 0
    jne     L4

    add     dl, '0'
    mov     ah, 2
    int     21h

    jmp     L5

L4:
    call    printud
    add     dl, '0'
    mov     ah, 2
    int     21h        

L5:
    pop     dx
    pop     cx
    pop     bx
    pop     ax
    ret
printud  endp
      
ends

end start 