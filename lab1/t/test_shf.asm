     .ORIG x3000
     LEA   R0, A
     LDW   R0,R0,#0
     LSHF  R0,R0,#3
     RSHFL R0,R0,#3
     LSHF  R0,R0,#3
     RSHFA R0,R0,#3
     HALT
      
A   .FILL x1234

    .END