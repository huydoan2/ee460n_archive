	.orig x3000
	and r0,r0,#0
	and r3,r3,#0
	and r1,r1,#0
	add r0,r3,#6
	add r0,r0,#-8
	add r4,r0,r1
	add r2,r0,#-8
	add r1,r0,r1
	add r4,r0,r1
	halt
	.end

	;add r2,r1,r0
	;add r3,r2,r1
	;add r4,r3,r2
	;add r5,r4,r3
	;add r6,r5,r4
	;add r6,r5,r4
	;add r6,r5,r2
