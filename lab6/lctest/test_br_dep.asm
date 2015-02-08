	.orig x3000
	and r0,r0,#0
	add r0,r3,#6
	brp L1
L1	add r0,r0,#-8
	brn L2
L2	add r4,r0,r1
	brp L3
L3	add r2,r4,#-8
	add r5,r2,r2
	xor r6,r2,r2
	and r4,r2,r2
	add r6,r5,r6
	brz	L4
L4	add r1,r2,r2
	add r4,r0,r1
	halt
	.end
