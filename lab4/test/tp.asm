	.orig x3000
	AND r0, r0, #0
	ADD r0, r0, #15
	AND r1, r1, #0
	ADD r1, r1, #4
	
	JMP r1 ; should access memory address 0x0000 and cause exception
	.end