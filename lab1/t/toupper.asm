; this program turns lower case character in a string to upper case
; INPUT x4000 contains the starting address of the first element in the character string
; OUTPUT  x4002 contains the starting address of the null-terminated upper-case character string.

             .ORIG x3000
             LEA R0, INSTR
             LDW R0, R0, #0
			 LDW R0, R0, #0 ; R0=IN
             LEA R2, OUTSTR 
			 LDW R2, R2, #0
			 LDW R2, R2, #0 ; R2=OUT
             LEA R5, SMALLA ; R5=-'a'
             LDW R5, R5, #0
             LEA R6, ATOZ   ; R6='a'-'z'
             LDW R6, R6, #0
             LEA R7, BIGA   ; R7='A'
             LDW R7, R7, #0			 
LOOP         LDW R1, R0, #0 ; R1=*IN=InChar
             BRZ DONE       ; if InChar='\0'
             ADD R4, R1, R5 ; R4=InChar-'a'=C
             BRN NOCHANGE   ; if C < 'a'
             ADD R3, R4, R6 ; R3 = C-25
             BRP NOCHANGE   ; if C > 'z'
             ADD R1, R4, R7 ; InChar=C+'A'
NOCHANGE     STW R1, R2, #0 ; *OUTSTR=R1
			 ADD R0, R0, #2
             ADD R2, R2, #2
             BR  LOOP
			; InChar='\0'
DONE         STW R1, R2, #0 ; *OUTSTR=R1
             HALT

INSTR        .FILL x4000
OUTSTR       .FILL x4002
SMALLA       .FILL xFF9F ; -'a'
ATOZ         .FILL #-25
BIGA         .FILL x0041 ; 'A'
             .END
