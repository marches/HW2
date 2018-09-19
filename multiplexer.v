// Multiplexer circuit

`define AND and #50
`define OR or #50
`define NOT not #50
`define XOR xor #50

module behavioralMultiplexer
(
    output out,
    input address0, address1,
    input in0, in1, in2, in3
);
    // Join single-bit inputs into a bus, use address as index
    wire[3:0] inputs = {in3, in2, in1, in0};
    wire[1:0] address = {address1, address0};
    assign out = inputs[address];
endmodule


module structuralMultiplexer
(
    output out,
    input address0, address1,
    input in0, in1, in2, in3
);
    wire interI0, interI1, interI2, interI3;
    wire naddress0, naddress1;

    `NOT address0inv(naddress0, address0);
    `NOT address1inv(naddress1, address1);

    `AND and0(interI0, naddress0, naddress1, in0);
    `AND and1(interI1, address0, naddress1, in1);
    `AND and2(interI2, naddress0, address1, in2);
    `AND and3(interI3, address0, address1, in3);

    or finalor(out, interI0, interI1, interI2, interI3);
endmodule