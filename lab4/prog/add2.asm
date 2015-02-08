		.orig x3000
		lea r0, LOC     ; initialize x4000 to 1
		ldw r0, r0, #0
		and r1, r1, #0
		add r1, r1, #1
		stw r1, r0, #0
		
		lea r0, SEQ
		ldw r1, r0, #1  ; R1 = LEN = 20
		ldw r0, r0, #0  ; 
		and r2, r2, #0
LOOP 	add r1, r1, #-1
		brz DONE
		ldb r3, r0, #0
		add r2, r2, r3
		add r0, r0, #1
		br  LOOP

DONE	lea r0, SUM
		ldw r0, r0, #0
		stw r2, r0, #0

; cause protection access handler
	;; 	br PROT		
	
; cause unaligned access handler
		br UNALG
		
; cause unknown opcode handler
	;; 	.fill xA000      ; Exception!
		
		halt

LOC		.fill x4000	
SEQ		.fill xC000
LEN     .fill #20
SUM		.fill xC014

PROT	and r0, r0, #0
		stw r2, r0, #0  ; Exception!
		halt
		
UNALG   lea r0, UNADDR
		ldw r0, r0, #0
		stw r2, r0, #0  ; Exception!
		halt
UNADDR	.fill xC017

		.end