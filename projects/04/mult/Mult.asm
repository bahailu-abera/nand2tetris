/*
Computes the product of values in 
Register R0(RAM0) and R1(RAM1) and stores the result in R2(RAM2) 

total = 0
i = 0

while R0 > 0 {
    total += R1
    R0 -= 1;
}
*/

@total
M=0 // total = 0


(LOOP)
    @R0 
    D=M // D = value at R0

    @END
    D;JLE // if R0 <= 0 jump to the END label

    @R1
    D=M // D = value at R1

    @total
    M=D+M // total = total + R1

    @R0
    M=M-1
    @LOOP
    0;JMP


(END)
    @total
    D=M

    @R2
    M=D

    @END
    0;JMP
