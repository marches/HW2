// Adder testbench
`timescale 1 ns / 1 ps
`include "adder.v"

module testFullAdder();
    reg a, b, carryin;
    wire sum, carryout;

    //behavioralFullAdder adder (sum, carryout, a, b, carryin);
    structuralFullAdder adder (sum, carryout, a, b, carryin);


    initial begin
    $display("a    b    cin Ecout Esum  cout sum");
    a=0;b=0;carryin=0; #1000
    $display("%b    %b    %b    0    0    %b    %b", a, b, carryin, carryout, sum);
    a=0;b=0;carryin=1; #1000
    $display("%b    %b    %b    0    1    %b    %b", a, b, carryin, carryout, sum);
    a=0;b=1;carryin=0; #1000
    $display("%b    %b    %b    0    1    %b    %b", a, b, carryin, carryout, sum);
    a=0;b=1;carryin=1; #1000
    $display("%b    %b    %b    1    0    %b    %b", a, b, carryin, carryout, sum);
    a=1;b=0;carryin=0; #1000
    $display("%b    %b    %b    0    1    %b    %b", a, b, carryin, carryout, sum);
    a=1;b=0;carryin=1; #1000
    $display("%b    %b    %b    1    0    %b    %b", a, b, carryin, carryout, sum);
    a=1;b=1;carryin=0; #1000
    $display("%b    %b    %b    1    0    %b    %b", a, b, carryin, carryout, sum);
    a=1;b=1;carryin=1; #1000
    $display("%b    %b    %b    1    1    %b    %b", a, b, carryin, carryout, sum);
	end
endmodule
