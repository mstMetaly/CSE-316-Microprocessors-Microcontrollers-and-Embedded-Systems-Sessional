.MODEL SMALL
.STACK 100H

.DATA
ARR DB 3 DUP(?)
EQUAL_MSG DB 'All letters are equal' 
NEWLINE_MSG DB 13, 10, 'Second highest character : $'


.CODE

MAIN PROC
    MOV AX , @DATA
    MOV DS , AX 

    
    MOV SI , 0
    MOV CX , 3 
    MOV AH , 1
    
    
    POPULATE:
        INT 21H
        
        MOV ARR[SI] , AL
        INC SI
        
        LOOP POPULATE
        
    
    ; Output newline after taking input
    MOV AH, 9
    LEA DX, NEWLINE_MSG
    INT 21H
              
    COMPARE_AB: 
        MOV BL , ARR[0]
        CMP BL , ARR[1]
        JE EQUAL
        JG GREATER
        JL LESSER
        
        
        EQUAL: 
           MOV BL , ARR[1]
           CMP BL , ARR[2]
           JE PRINT_EQUAL_MSG
           JG PRINT_ARR2
           JL PRINT_ARR1       
         
        GREATER:
           MOV BL , ARR[1] 
           CMP BL , ARR[2]    
           JG PRINT_ARR1
           JL COMPARE_02
           JE PRINT_ARR1
               
            
        LESSER:
            MOV BL ,ARR[1]
            CMP BL , ARR[2]
            JL PRINT_ARR1
            JG COMPARE_LESSER_02
            JE PRINT_ARR0 
            
        COMPARE_LESSER_02:
            MOV BL ,ARR[0]
            CMP BL , ARR[2]
            JG PRINT_ARR2     
            JL PRINT_ARR0
            JE PRINT_ARR0
        
        COMPARE_02:
             MOV BL ,ARR[0]
             CMP BL , ARR[2]
             JG PRINT_ARR2     
             JL PRINT_ARR0
             JE PRINT_ARR1
        
        
        
        PRINT_ARR0:
             MOV AH ,2 
             MOV DL , ARR[0]
             INT 21H
             JMP END_CASE
                   
        PRINT_ARR1:     
             MOV AH ,2 
             MOV DL , ARR[1]
             INT 21H
             JMP END_CASE 
         
        PRINT_ARR2:
             MOV AH ,2 
             MOV DL , ARR[2]
             INT 21H
             JMP END_CASE 
        
        PRINT_EQUAL_MSG:
            LEA DX , EQUAL_MSG 
            MOV AH , 9
            INT 21H
          
        END_CASE:  
            MOV AH , 4CH
            INT 21H
        
    
MAIN ENDP

END MAIN
    