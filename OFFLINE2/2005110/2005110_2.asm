  .MODEL SMALL
  .STACK 100H
    
    
  .DATA
  CR EQU 13
  LF EQU 10 
  SUM DW ?
   
   
   
  .CODE 
  
  NEWLINE PROC
        MOV AH, 2
        MOV DL, CR
        INT 21H
        MOV DL, LF
        INT 21H
        RET
  NEWLINE ENDP 
    
    
    
  
  MAIN PROC 
    
  MOV AX , @DATA
  MOV DS , AX
    
  PUSH BX  
  PUSH DX

  XOR BX,BX   

  TAKE_INPUT:
  
    MOV AH,1  
    INT 21H 
 
    CMP AL, 0DH  
    JE INPUT_DONE
 
    AND AX, 000FH
    PUSH AX       
    MOV AX, 10D   
    MUL BX       
    POP BX        
    ADD BX,AX     
    JMP TAKE_INPUT
 
    
    
  INPUT_DONE:
    
    MOV AX , BX
    PUSH AX 
    PUSH 0
    CALL SUM_OF_DIGITS 
    
   
   
    ;output at AX  
    
    MOV SUM , AX
    
    CALL NEWLINE
    
    POP DX
    POP AX 
 
 
    PUSH AX     ;save registers 
    PUSH BX
    PUSH CX
    PUSH DX 


    MOV AX, SUM
    
    PUSH AX
 
    XOR CX,CX
    MOV BX,10D 

    OUTPUT_LOOP: 
        XOR DX,DX
        DIV BX
        PUSH DX 
        INC CX
        OR AX,AX
        JNE OUTPUT_LOOP
 
    PRINT_LOOP:
    POP DX
    OR DX, 30H  
    MOV AH,2
    INT 21H 
    LOOP PRINT_LOOP
    
    
    POP DX
    POP CX
    POP BX
    POP AX    
    
    MOV AH , 4CH
    INT 21H
    
 
  MAIN ENDP
  
     
     
     
  
  SUM_OF_DIGITS PROC NEAR 
        
        PUSH BP 
        MOV BP , SP
        MOV CX , WORD PTR[BP + 6]
        CMP CX , 10
        JA END_IF
        MOV AX , WORD PTR[BP+6]
        JMP RETURN 
     
              
  
  END_IF:
       
       MOV CX , 10 
       MOV AX , WORD PTR[BP+6]
       DIV CX  
       PUSH AX
       PUSH DX
       MOV DX , 0
       CALL SUM_OF_DIGITS
       ADD AX , WORD PTR[BP-4] 
    
    
  RETURN:
      POP BP
      RET 4

  

END MAIN  
    