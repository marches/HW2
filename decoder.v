// Decoder circuit

`define AND and #50
`define OR or #50
`define NOT not #50
`define XOR xor #50

module behavioralDecoder
(
    output out0, out1, out2, out3,
    input address0, address1,
    input enable
);
    // Uses concatenation and shift operators
    assign {out3,out2,out1,out0}=enable<<{address1,address0};
endmodule


module structuralDecoder
(
    output out0, out1, out2, out3,
    input address0, address1,
    input enable
);
    wire Naddress0, Naddress1;

    `NOT inv0(Naddress0, address0);
    `NOT inv1(Naddress1, address1);

    `AND and0(out0, enable, Naddress0, Naddress1);
    `AND and1(out1, enable, address0, Naddress1);
    `AND and2(out2, enable, Naddress0, address1);
    `AND and3(out3, enable, address0, address1);

endmodule

