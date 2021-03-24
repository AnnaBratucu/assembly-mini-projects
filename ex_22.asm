include 'emu8086.inc'

ORG 100h

 call scan_num ;read from the keyboard the base 
 PRINTN  
 MOV BX, CX ;move the base to bx
 call scan_num ;read the exponent
 MOV AX,BX  ;move the base to ax to prepare the multiplication
 DEC CX  ;decrease the counter
 PRINTN                                            
loop1:
 MUL BX  ;multiply the base x counter times
loop loop1

 CMP AX, 256   ;the overflow
 JGE overflow 
 notoverflow: 
 CALL PRINT_NUM ;print the product 
 JMP skip 
 
 overflow: PRINT 'OVERFLOW' 
skip: 

 RET  


DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS  
DEFINE_SCAN_NUM         

END           