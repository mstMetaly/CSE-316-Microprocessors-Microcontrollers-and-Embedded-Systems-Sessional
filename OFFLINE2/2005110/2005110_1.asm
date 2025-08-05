.MODEL SMALL
.STACK 100H


.DATA
CR EQU 13
LF EQU 10 
SUM DW ?
SPACE DB 32

.CODE
 

NEWLINE PROC
        MOV AH, 2
        MOV DL, CR
        INT 21H
        MOV DL, LF
        INT 21H
        RET
NEWLINE ENDP 
 
      
      
      
MAIN  PROC 
    
    MOV AX, @DATA
    MOV DS, AX
    
    ;n
     
    TAKE_INPUT_N:
    
        PUSH BX  
        PUSH DX

        XOR BX,BX   

        INPUT_N:
  
        MOV AH,1  
        INT 21H 
 
 
        CMP AL , 32
        JE TAKEN_N
 
        AND AX, 000FH 
        PUSH AX       
        MOV AX, 10D   
        MUL BX        
        POP BX        
        ADD BX,AX     
    
    
        JMP INPUT_N
 
    
    TAKEN_N:    
        MOV  CX , BX 
     
     
        
    MOV AH , 2
    MOV DL , 32
    INT 21H 
 
 
    
    ;k>1
    
    TAKE_INPUT_K:
    
        PUSH BX  
        PUSH DX

        XOR BX,BX   

        INPUT_K:
  
        MOV AH,1  
        INT 21H 
 
        CMP AL, 0DH  
        JE START
 
        AND AX, 000FH 
        PUSH AX       
        MOV AX, 10D  
        MUL BX        
        POP BX       
        ADD BX,AX     
    
    
        JMP INPUT_K 
    
    
    START:    
    
	    MOV 	AX, CX
	    PUSH 	AX
	    CALL 	FACTORIAL
	    
	    ;output at CX
	    
	    
	    MOV SUM , CX
    
        CALL NEWLINE
    
        POP DX
        POP AX 
 
 
        PUSH AX     
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
	    
	    MOV 	AH,4CH
	    INT 	21H 
	
MAIN ENDP
    	      
    
    
    	      
FACTORIAL PROC NEAR 
    
	PUSH 	BP
	MOV 	BP,SP
	CMP 	WORD PTR[BP+4],BX
	JA  	END_IF
	MOV 	AX, WORD PTR[BP+4]

	JMP 	RETURN 
	
END_IF:
    MOV AX , WORD PTR[BP+4]
    DIV BX
    
    ADD CX , AX 
    
    ADD AX , DX
    
    PUSH AX
    
    MOV DX , 0
 
	CALL 	FACTORIAL
	
	
RETURN:	
    POP	BP
	RET	2 
	
	
	
END	MAIN    
   
   
   
   
   
    
    
   
   