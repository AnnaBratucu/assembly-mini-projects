include 'emu8086.inc'
ORG 100h
 
LEA SI, X
MOV CX,n

PRINT 'Array not sorted:'
l1:
    MOV AX, [SI]
    PRINT ' '
    CALL PRINT_NUM
    ADD SI, 2 
loop l1      

bigLoop:
mov dx,1
LEA SI, X
MOV CX,n
dec cx

lBubble:
	MOV ax,[si]
	CMP ax,[si+2]
	JLE nothing
	MOV bx,[si+2]
	MOV [si],bx
	MOV [si+2],ax
	MOV dx,0
	
	nothing:  
    add si,2
loop lBubble
	
	cmp dx,1
	je sorted
	
	jmp bigLoop
	sorted:
	GOTOXY 0,2
	PRINT 'Array sorted:'
	LEA SI, X
    MOV CX,n
l2:
    MOV AX, [SI]
    PRINT ' '
    CALL PRINT_NUM
    ADD SI, 2 
Loop l2  
	
	
	
ret
n dw 8
x dw 3,-3,1,-5,0,8,2,6
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS
END