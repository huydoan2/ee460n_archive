	.orig x3000
	lea r0, LABEL
	and r1, r1, #0
	and r2, r2, #0
	add r1, r1, #4
	add r2, r2, #8

	;; cause unaligned exception
	add r0, r0, #1
	stw r1, r0, #0

LABEL	.fill x1234
	.fill x5678
	.end