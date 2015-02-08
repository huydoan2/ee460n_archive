; sequence of independent adds

	.ORIG x3000
	ADD R0, R0, #0
	ADD R1, R1, R1
	ADD R2, R3, R4
	ADD R3, R4, #10
	HALT
	.END
