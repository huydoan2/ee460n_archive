; and and taken branch

	.ORIG x3000
	AND R0, R0, #0
	BRz TEN
	ADD R0, R0, #1
TEN	ADD R0, R0, #10
	HALT
	.END
