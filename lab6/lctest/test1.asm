	.orig x3000

	and r0,r0,#0
	xor r0,r0,#-1

	add r0,r3,#6
	add r1,r0,#-8

	add r4,r0,r1
	and r5,r0,r1
	xor r5,r0,r1
	not r5,r0

	and r0,r0,#0
	xor r0,r0,#-1
	lshf r4,r1,#5
	rshfl r5,r1,#3
	rshfa r5,r1,#3

	brn	LB1
	nop
	nop
	nop
LB1	add r4,r0,#-6
	and r4,r4,#0
	brn LB1
	br	LB2
	nop
	nop
LB2	and r5,r0,#0

	lea r6,LB3
	ldw r6,r6,#1
	lea r5,LB4
	ldw r5,r5,#0
	stw r6,r5,#1

	lea r6,LB3
	ldb r6,r6,#1
	lea r5,LB4
	ldw r5,r5,#0
	stb r6,r5,#-1

	lea r5,LB5
	stb r5,r5,#16
	
	
	jsr SUB
	lea r5,SUB
;	jsrr r5
;	jmp r5

	add r1,r0,#-8

	trap x25

SUB	and r0,r0,#0
	xor r0,r0,#-1

	add r0,r3,#6
	add r1,r0,#-8
	ret

LB3	.fill xA0F0	
	.fill xC0E0	
LB4	.fill x4000	
LB5	.fill x3000	


	.end
