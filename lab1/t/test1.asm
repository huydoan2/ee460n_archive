;This program counts from 10 to 0
        .ORIG x3000
        LEA R0, TEN       ;This instruction will be loaded into memory location x3000
        LDW R1, R0, #0
START   ADD R1, R1, #-1
        BRZ DONE
        BR START
                          ;blank line
DONE    TRAP x25          ;The last executable instruction
TEN     .FILL x000A       ;This is 10 in 2's comp, hexadecimal
        .END              ;The pseudo-op, delimiting the source program
