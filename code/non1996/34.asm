DATA SEGMENT
	NUM DW 10
DATA ENDS

CODE SEGMENT
	ASSUME CS:CODE, DS:DATA
START:
	MOV AX, DATA
	MOV DS, AX

	MOV AX, NUM
	CALL SKIPLINES

	MOV AH, 4CH
	INT 21H	

SKIPLINES PROC 
	PUSH AX
	PUSH CX
	PUSH DX
	MOV CX, AX

	MOV AH, 02H

OUT:  
    MOV DL, '-'
	INT 21H
	MOV DL, 0DH
	INT 21H
	MOV DL, 0AH
	INT 21H
LOOP OUT	

	
	
	POP DX
	POP CX
	POP AX
	RET
SKIPLINES ENDP

CODE ENDS
	END START