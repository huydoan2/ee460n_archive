; test LDB and STB
; reverse the MSByte and LSByte at LOCATION

    .ORIG x3000
    LEA R0,LOCATION
	LDB R1,R0,#0
	LDB R2,R0,#1
    STB R1,R0,#1
	STB R2,R0,#0
	HALT

A         .FILL x7788
LOCATION  .FILL x1234
B         .FILL x5566

    .END