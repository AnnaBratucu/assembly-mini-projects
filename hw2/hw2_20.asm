 CODE SEGMENT
    ASSUME CS:CODE,DS:CODE
    ORG 100H 

    

    XOR AX,AX      
    XOR BX,BX 
    XOR DX,DX
    XOR CX,CX

    MOV AL,1         
    MOV AH,1         
    MOV CX,6         
                     
    MOV DL,0
    MOV SI,0        
    MOV SRS[SI],AL   
                     
    INC SI
    MOV SRS[SI],AH
    INC SI           
                     
    FIB:             
                    
    PUSH AX          
                     
                     

     ADD AH,AL       
     MOV DL,AH       
     MOV SRS[SI],DL  
     INC SI          
                     
     POP AX          

     MOV AL,AH       
     MOV AH,DL       
     LOOP FIB       

     MOV CX,6H
     MOV SI,0        

     ADD:            
     ADD BL,SRS[SI] 
     INC SI
     LOOP ADD

  

    SRS DB 12 DUP(0) 
                      
                      
                      
                      

     CODE ENDS
       END