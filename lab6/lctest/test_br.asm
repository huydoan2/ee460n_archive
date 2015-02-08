	.orig x3000
	and r0,r0,#0
	add r0,r3,#6
	add r0,r0,#-8
	brn	L1
L1	add r4,r0,r1
	brz L2
L2	add r2,r0,#-8
	brp	L3
L3	add r4,r1,r0
	brp L4
L4	add r2,r0,#12
	halt
	.end
