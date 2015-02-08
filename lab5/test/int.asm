	.orig x3000

	add r0, r0, xA		; test the save/load
	add r1, r1, xB
	add r2, r2, xC
	add r3, r3, xD
		
	; push R0-1
	add r6, r6, #-8
	stw r0, r6, #0
	stw r1, r6, #1
	stw r2, r6, #2
	stw r3, r6, #3
	
	; uses r0-3
	lea r0, UPTB
	ldw r0, r0, #0
	lea r1, Count
	ldw r1, r1, #0 ; r1 = 104
	lea r2, Mask
	ldw r2, r2, #0
loop   ldw r3, r0, #0
	   and r3, r3, r2
	   stw r3, r0, #0
	   add r0, r0, #2
	   add r1, r1, #-1
	brp loop 	 
	
	; pop R0-1
	ldw r0, r6, #0
	ldw r1, r6, #1
	ldw r2, r6, #2
	ldw r3, r6, #3	
	add r6, r6, #8
	; 41 cycles
	; X + ... + X = ... cycles
	
	halt ; 8 + 15 = 23 cycles
	
	; in all ... cycles
	
UPTB .fill x4030 ; 0x1000 + (24)_10 = the first non-system page
Count .fill #104 ; 128 - 24
Mask .fill xFFFE ; set Reference bit to 0
	.end
