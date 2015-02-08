		.orig x3000
		lea r0, SEQ
		ldw r1, r0, #1  ; R1 = LEN = 20
		ldw r0, r0, #0
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

		JMP r2 ; jump to the location pointed by the sum
		
		halt

SEQ		.fill xC000
LEN     .fill #20
SUM		.fill xC014

		.end