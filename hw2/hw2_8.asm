include emu8086.inc

 ORG    100h

 PRINT 'Give X='
 call scan_num  
 PRINTN  
 
 MOV BX, CX
 
 PRINT 'Give Y='
 call scan_num
 PRINTN                                            
 MOV AX, CX
 CALL PRINT_NUM 
 MOV AX,BX
 PRINT '+'
 CALL PRINT_NUM
 PRINT '='
 ADD AX,CX  
 CALL PRINT_NUM 
 
 
   







  
 RET  


DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS  
DEFINE_SCAN_NUM         

END           