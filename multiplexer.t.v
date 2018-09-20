// Multiplexer testbench
`timescale 1 ns / 1 ps
`include "multiplexer.v"

module testMultiplexer ();

  	wire out;
  	reg address0, address1;
  	reg in0, in1, in2, in3;

    //behavioralMultiplexer mux (out, address0, address1, in0, in1, in2, in3);
    structuralMultiplexer mux (out, address0, address1, in0, in1, in2, in3);


    initial begin
    $display("adr1  adr0  in3   in2   in1   in0   |  out   | Expected Output");
    $dumpfile("multiplexer_waves.vcd");
    $dumpvars();
    address1=0;address0=0;in0=1;in1=0;in2=0;in3=0; #1000 
    $display("%b     %b     %b     %b     %b     %b     |   %b    | in0", address1, address0, in3, in2, in1, in0, out);
    address1=0;address0=1;in0=0;in1=1;in2=0;in3=0; #1000 
    $display("%b     %b     %b     %b     %b     %b     |   %b    | in1", address1, address0, in3, in2, in1, in0, out);
    address1=1;address0=0;in0=0;in1=0;in2=1;in3=0; #1000 
    $display("%b     %b     %b     %b     %b     %b     |   %b    | in2", address1, address0, in3, in2, in1, in0, out);
    address1=1;address0=1;in0=0;in1=0;in2=0;in3=1; #1000 
    $display("%b     %b     %b     %b     %b     %b     |   %b    | in3", address1, address0, in3, in2, in1, in0, out);
    address1=0;address0=0;in0=0;in1=1;in2=0;in3=0; #1000 
    $display("%b     %b     %b     %b     %b     %b     |   %b    | in0", address1, address0, in3, in2, in1, in0, out);
    address1=0;address0=1;in0=1;in1=0;in2=0;in3=0; #1000 
    $display("%b     %b     %b     %b     %b     %b     |   %b    | in1", address1, address0, in3, in2, in1, in0, out);
    address1=1;address0=0;in0=0;in1=0;in2=0;in3=1; #1000 
    $display("%b     %b     %b     %b     %b     %b     |   %b    | in2", address1, address0, in3, in2, in1, in0, out);
    address1=1;address0=1;in0=0;in1=0;in2=1;in3=0; #1000 
    $display("%b     %b     %b     %b     %b     %b     |   %b    | in3", address1, address0, in3, in2, in1, in0, out);
    $finish();
    end

endmodule
