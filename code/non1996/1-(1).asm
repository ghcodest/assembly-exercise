DATA SEGMENT
    ARRAY DW 23, 36, 2, 100, 32000, 54, 0
    ZERO DW 100
DATA ENDS

CODE SEGMENT
    ASSUME CS:CODE, DS:DATA
START:
    MOV AX, DATA
    MOV DS, AX
    
    LEA BX, ARRAY
    MOV AX, 0
    MOV [BX+14], AX
    MOV AX, 4C00H
    INT 21H

CODE ENDS
    END START
