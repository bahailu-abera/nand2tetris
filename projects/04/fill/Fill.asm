// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen
// by writing 'black' in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen by writing
// 'white' in every pixel;
// the screen should remain fully clear as long as no key is pressed.

//// Replace this comment with your code.

/**

while true {
    kbd = input()
    screen=16384
    registers=8192
    i = 8192

    while i > 0 {
        add = screen + i

        if input == 0 {
            RAM[add] = 0
        } else {
            RAM[add] = -1
        }

        i-=1
    }
}


*/

/**
Use register 0 (R0) for storing current address
*/

(Start)
    @KBD 
    D=M  // D = keyboard input

    @input // Register input
    M=D // input = keyboard input

    @8192
    D=A
    @i // register i
    M=D // Number of registers for the screen

    @SCREEN
    D=A

    @R0 // use regiser R0 for storing current register address
    M=D

    @input
    D=M

    @White
    D;JEQ

    @Black
    0;JMP



(Black)
    @i 
    D=M

    @Start
    D;JEQ
    
    @R0
    A=M // set the address for the register
    M=-1 // set current register to all '111111'

    @i 
    M=M-1 // i = i - 1

    @R0
    M=M+1 // add = add + 1

    @Black 
    0;JMP

(White)
    @i 
    D=M

    @Start
    D;JEQ
    
    @R0
    A=M // set the address for the register
    M=0 // set current add to all '0000000'

    @i 
    M=M-1 // i = i - 1

    @R0
    M=M+1 // add = add + 1

    @White
    0;JMP
