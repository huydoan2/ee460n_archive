	.orig x3000

	LEA R0,LB1
	LEA R1,LB2
	; JSR #0
	LDW R4,R0,#0
	LDW R5,R1,#0
	BRnzp LB3
	LDB R2,R0,#1
LB3 LDB R3,R1,#0
	HALT

LB1 .fill x4000
LB2 .fill x4004
	.end
