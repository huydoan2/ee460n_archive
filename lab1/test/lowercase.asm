; this program turns lower case character in a string to upper case
; input x4000 contains the starting address of the first element in the character string
; output  x4002 contains the starting address of the null-terminated upper-case character string.

             .orig x3000
             lea r0, instr
             ldw r0, r0, #0
             ldw r0, r0, #0 ; r0=in
             lea r2, outstr 
	     ldw r2, r2, #0
	     ldw r2, r2, #0 ; r2=out
             lea r5, smalla ; r5=-'a'
             ldw r5, r5, #0
             lea r6, atoz   ; r6='a'-'z'
             ldw r6, r6, #0
             lea r7, biga   ; r7='a'
             ldw r7, r7, #0			 
loop         ldw r1, r0, #0 ; r1=*in=inchar
             brz done       ; if inchar='\0'
             add r4, r1, r5 ; r4=inchar-'a'=c
             brn nochange   ; if c < 'a'
             add r3, r4, r6 ; r3 = c-25
             brp nochange   ; if c > 'z'
             add r1, r4, r7 ; inchar=c+'a'
nochange     stw r1, r2, #0 ; *outstr=r1
			 add r0, r0, #2
             add r2, r2, #2
             br  loop
; inchar='\0'
done         stw r1, r2, #0 ; *outstr=r1
             halt

instr        .fill x4000
outstr       .fill x4002
smalla       .fill xff9f ; -'a'
atoz         .fill #-25
biga         .fill x0041 ; 'a'
             .end
