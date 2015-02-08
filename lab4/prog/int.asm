	.orig x1200
	; push R0-1
	add r6, r6, #-4
	stw r0, r6, #0
	stw r1, r6, #1
	
	lea r0, LOC
	ldw r0, r0, #0 ; r0 = x4000
	ldw r1, r0, #0
	add r1, r1, #1
	stw r1, r0, #0
	
	; pop R0-1
	ldw r0, r6, #0
	ldw r1, r6, #1
	add r6, r6, #4
	
	rti
	
LOC	.fill x4000
	.end