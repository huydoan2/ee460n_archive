        .ORIG x3000

        LEA R0, TOLOAD
        LDW R0, R0, #0
		LEA R1, LOADADDR
		LDW R1, R1, #0
		STW R1, R0, #0

        LEA R0, TOSTORE
        LDW R0, R0, #0
		LEA R1, STOREADDR
		LDW R1, R1, #0
		STW R1, R0, #0

        LEA R0, LOADADDR
        LDW R0, R0, #0

		LEA R1, A5000
		LDW R1, R1, #0
		STW R1, R0, #0

		LEA R1, A5001
		LDW R1, R1, #0
		STW R1, R0, #1

		LEA R1, A5002
		LDW R1, R1, #0
		STW R1, R0, #2

		LEA R1, A5003
		LDW R1, R1, #0
		STW R1, R0, #3

		LEA R1, A5004
		LDW R1, R1, #0
		STW R1, R0, #4

		LEA R1, A5005
		LDW R1, R1, #0
		STW R1, R0, #5

		LEA R1, A5006
		LDW R1, R1, #0
		STW R1, R0, #6



        LEA R0, TOLOAD
        LDW R0, R0, #0  ;x4000 contains the starting address for string to load
        LDW R0, R0, #0

        LEA R1, TOSTORE
        LDW R1, R1, #0  ;x4002 contains the starting address for string to store
        LDW R1, R1, #0

START   LDB R2, R0, #0
        STB R2, R1, #0
        BRZ DONE
        ADD R0, R0, #2
        ADD R1, R1, #1
        BR  START

DONE    TRAP x25
TOLOAD  .FILL x4500
TOSTORE .FILL x4502

LOADADDR .FILL x5000
STOREADDR .FILL x5500

A5000   .FILL x0048
A5001   .FILL x0065
A5002   .FILL x006c
A5003   .FILL x006c
A5004   .FILL x006f
A5005   .FILL x0021
A5006   .FILL x0000

.END
