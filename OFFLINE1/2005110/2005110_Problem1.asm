.MODEL SMALL
.STACK 100H

.DATA


CR EQU 0DH
LF EQU 0AH

UPPER_MSG DB 'Uppercase letter $'
LOWER_MSG DB 'Lowercase letter $'
NUMBER_MSG DB 'Number $'
OTHERS_MSG DB 'Not an alphanumeric value $'
NEWLINE_MSG DB 13, 10, '$'


.CODE


MAIN PROC
    
    ;DATA INITIALIZATION
    
    MOV AX , @DATA
    MOV DS , AX 
    
    ;READ A CHARACTER  
    
    MOV AH , 1
    INT 21H 
    
      
    ;CHECK UPPERCASE
    
    CMP AL , 'A'
    JGE THEN
    JMP CHECK_LOWERCASE
    
    THEN:
        CMP AL , 'Z'
        JNLE CHECK_LOWERCASE 
        JMP DISPLAY_UPPER_MSG
    
   
    CHECK_LOWERCASE:
    
        CMP AL , 'a'
        JGE THEN2
        JMP CHECK_NUMBER
        
        THEN2:
            CMP AL ,'z'
            JNLE CHECK_NUMBER 
            JMP DISPLAY_LOWER_MSG
        
    CHECK_NUMBER:
        CMP AL , '0'
        JNGE DISPLAY_OTHERS_MSG
        CMP AL , '9'
        JNLE DISPLAY_OTHERS_MSG
        JMP DISPLAY_NUMBER_MSG
        
       
     
    ;DISPLAY MSG 
     DISPLAY_UPPER_MSG:
      
        MOV AH , 9
        LEA DX , NEWLINE_MSG
        INT 21H
    
        LEA DX , UPPER_MSG
        MOV AH , 9
        INT 21H 
        JMP END_CASE 
    
    
     DISPLAY_LOWER_MSG: 
        
        MOV AH , 9
        LEA DX , NEWLINE_MSG
        INT 21H

        LEA DX , LOWER_MSG
        MOV AH , 9
        INT 21H 
        JMP END_CASE
        
        
    DISPLAY_NUMBER_MSG: 
        
        MOV AH , 9
        LEA DX , NEWLINE_MSG
        INT 21H
        
        LEA DX , NUMBER_MSG
        MOV  AH , 9
        INT 21H
        JMP END_CASE 
    
    DISPLAY_OTHERS_MSG:
        
        MOV AH , 9
        LEA DX , NEWLINE_MSG
        INT 21H
        
        LEA DX , OTHERS_MSG
        MOV AH , 9
        INT 21H
        JMP END_CASE 
       

    END_CASE:
     
    MOV AH , 4CH
    INT 21H  
    
      
      
MAIN ENDP

END MAIN
     
    
            
    
    