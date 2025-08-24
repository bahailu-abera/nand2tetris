/*
Computes the product of values in 
Register R0(RAM0) and R1(RAM1) and stores the result in R2(RAM2) 

total = 0
i = R0

while i > 0 {
    total += R1
    i -= 1;
}
*/

@R2
M=0        // initialize R2 = 0

@total
M=0        // total = 0

@R0
D=M
@i
M=D        // i = R0


(LOOP)
    @i 
    D=M     // D = value at i

    @END
    D;JLE   // if i <= 0 jump to the END label

    @R1
    D=M     // D = value at R1

    @total
    M=D+M   // total = total + R1

    @i
    M=M-1   // i--

    @LOOP
    0;JMP


(END)
    @total
    D=M

    @R2
    M=D     // store result in R2

    @END
    0;JMP
