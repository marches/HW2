// Adder circuit

`define AND and #50
`define OR or #50
`define NOT not #50
`define XOR xor #50

module behavioralFullAdder
(
    output sum, 
    output carryout,
    input a, 
    input b, 
    input carryin
);
    // Uses concatenation operator and built-in '+'
    assign {carryout, sum}=a+b+carryin;
endmodule

module structuralFullAdder
(
    output sum, 
    output carryout,
    input a, 
    input b, 
    input carryin
);

    wire xAorB, AandB, xAorBandCin;

    `XOR xor1(xAorB, a, b);
    `XOR xor2(sum, xAorB, carryin);
    `AND and1(AandB, a, b);
    `AND and2(xAorBandCin, xAorB, carryin);
    `OR or1(carryout, xAorBandCin, AandB);
    
endmodule
