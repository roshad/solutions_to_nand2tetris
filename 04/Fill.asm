// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.
// Set the A register to point to the memory
// word that is mapped to the 16 left-most
// pixels of the top row of the screen.

(RESET)
    @SCREEN
    D=A
    @cur
    M=D 
    @KBD
    D=M
    @BLACK
    D;JNE    
(WHITE)
    @cur
    A=M
    M=0
    @cur
    M=M+1
    @KBD
    D=M
    @RESET
    D;JNE
    @WHITE
    0;JMP
(BLACK)    
    @cur
    A=M
    M=-1
    @cur
    M=M+1
    @KBD
    D=M
    @RESET
    D;JEQ
    @BLACK
    0;JMP 
