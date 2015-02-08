	.orig x3000
	add r0, r0, #15
	add r0, r0, #-16
	add r1, r1, r0
	and r1, r1, #1
	and r1, r1, r1
	xor r2, r0, x0F
	xor r2, r0, r1
	not r3, r0

	;should return error code 3
	add r0, r0, #16

	.end
	

	
	