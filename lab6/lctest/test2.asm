	.orig x3000

	lea r1, ML1
	lea r2, ML2
	ldw r1, r1, #0
	ldb r2, r2, #0
	stb r2, r1, #0
	halt

ML1	.fill xA0F1	
ML2	.fill xC0E0	
	.end
