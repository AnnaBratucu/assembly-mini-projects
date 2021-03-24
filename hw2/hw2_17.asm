data segment
    
strsize= 32

   
mystr   db  strsize dup (?)

        
        db  3 dup (?) 


msg1    db  "Enter a string (maximum $"
msg2    db  " characters long): $"
msg3    db  "String Length: $"

         
endl    db  13, 10 , '$'    

    pkey db "press any key...$"
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:

    mov ax, data
    mov ds, ax
    mov es, ax

     

    
    lea     dx, msg1
    mov     ah, 9
    int     21h

    
    mov     ax, strsize
    call    printd         

    
    lea     dx, msg2
    mov     ah, 9
    int     21h

        
    mov     cx, strsize
    mov     dx, offset mystr
    call    getstr 

     
    lea     dx, endl
    mov     ah, 9
    int     21h 

    
    lea     dx, msg3
    mov     ah, 9
    int     21h

    
    mov     ax, cx
    call    printd

                                         
    mov     dx, offset endl
    mov     ah, 9
    int     21h

       
    mov     dx, offset mystr
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



getstr      proc

            
            push    ax
            push    bx
            push    si

            
            mov     si, dx

            mov     bx, 0

             

                                 
L11:        
           
            mov     ah, 1
            int     21h

                                          
            cmp     al, 13 
            jz      L12

            
            mov     [si][bx], al

            
            inc     bx

L12:
                        
            loopnz  L11

                                  
            mov     cx, bx

             
            inc     bx
            mov     [si][bx], 13                                                                  

                                          
            inc     bx
            mov     [si][bx], 10                                                                  

                      
            inc     bx
            mov     [si][bx], '$'                                                                  

                      
            pop     si
            pop     bx
            pop     ax
            ret
getstr      endp



ends

end start