#! /usr/local/bin/vvp
:ivl_version "10.1 (stable)" "(v10_1-107-gab6ae79)";
:ivl_delay_selection "TYPICAL";
:vpi_time_precision - 12;
:vpi_module "system";
:vpi_module "vhdl_sys";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_0x967d30 .scope module, "behavioralDecoder" "behavioralDecoder" 2 8;
 .timescale -9 -12;
    .port_info 0 /OUTPUT 1 "out0"
    .port_info 1 /OUTPUT 1 "out1"
    .port_info 2 /OUTPUT 1 "out2"
    .port_info 3 /OUTPUT 1 "out3"
    .port_info 4 /INPUT 1 "address0"
    .port_info 5 /INPUT 1 "address1"
    .port_info 6 /INPUT 1 "enable"
v0x96abb0_0 .net *"_s11", 3 0, L_0x98b0d0;  1 drivers
v0x988fa0_0 .net *"_s5", 3 0, L_0x98ae90;  1 drivers
L_0x7fd58ed13018 .functor BUFT 1, C4<000>, C4<0>, C4<0>, C4<0>;
v0x989080_0 .net *"_s8", 2 0, L_0x7fd58ed13018;  1 drivers
v0x989170_0 .net *"_s9", 1 0, L_0x98afc0;  1 drivers
o0x7fd58ed5c0d8 .functor BUFZ 1, C4<z>; HiZ drive
v0x989250_0 .net "address0", 0 0, o0x7fd58ed5c0d8;  0 drivers
o0x7fd58ed5c108 .functor BUFZ 1, C4<z>; HiZ drive
v0x989360_0 .net "address1", 0 0, o0x7fd58ed5c108;  0 drivers
o0x7fd58ed5c138 .functor BUFZ 1, C4<z>; HiZ drive
v0x989420_0 .net "enable", 0 0, o0x7fd58ed5c138;  0 drivers
v0x9894e0_0 .net "out0", 0 0, L_0x98ad00;  1 drivers
v0x9895a0_0 .net "out1", 0 0, L_0x98ac60;  1 drivers
v0x9896f0_0 .net "out2", 0 0, L_0x98ab40;  1 drivers
v0x9897b0_0 .net "out3", 0 0, L_0x98aa40;  1 drivers
L_0x98aa40 .part L_0x98b0d0, 3, 1;
L_0x98ab40 .part L_0x98b0d0, 2, 1;
L_0x98ac60 .part L_0x98b0d0, 1, 1;
L_0x98ad00 .part L_0x98b0d0, 0, 1;
L_0x98ae90 .concat [ 1 3 0 0], o0x7fd58ed5c138, L_0x7fd58ed13018;
L_0x98afc0 .concat [ 1 1 0 0], o0x7fd58ed5c0d8, o0x7fd58ed5c108;
L_0x98b0d0 .shift/l 4, L_0x98ae90, L_0x98afc0;
S_0x96aa30 .scope module, "testDecoder" "testDecoder" 3 5;
 .timescale -9 -12;
v0x98a4a0_0 .var "addr0", 0 0;
v0x98a560_0 .var "addr1", 0 0;
v0x98a630_0 .var "enable", 0 0;
v0x98a730_0 .net "out0", 0 0, L_0x98b480;  1 drivers
v0x98a800_0 .net "out1", 0 0, L_0x98b6d0;  1 drivers
v0x98a8a0_0 .net "out2", 0 0, L_0x98b830;  1 drivers
v0x98a970_0 .net "out3", 0 0, L_0x98ba20;  1 drivers
S_0x989990 .scope module, "decoder" "structuralDecoder" 3 11, 2 19 0, S_0x96aa30;
 .timescale -9 -12;
    .port_info 0 /OUTPUT 1 "out0"
    .port_info 1 /OUTPUT 1 "out1"
    .port_info 2 /OUTPUT 1 "out2"
    .port_info 3 /OUTPUT 1 "out3"
    .port_info 4 /INPUT 1 "address0"
    .port_info 5 /INPUT 1 "address1"
    .port_info 6 /INPUT 1 "enable"
L_0x98b210/d .functor NOT 1, v0x98a4a0_0, C4<0>, C4<0>, C4<0>;
L_0x98b210 .delay 1 (50000,50000,50000) L_0x98b210/d;
L_0x98b320/d .functor NOT 1, v0x98a560_0, C4<0>, C4<0>, C4<0>;
L_0x98b320 .delay 1 (50000,50000,50000) L_0x98b320/d;
L_0x98b480/d .functor AND 1, v0x98a630_0, L_0x98b210, L_0x98b320, C4<1>;
L_0x98b480 .delay 1 (50000,50000,50000) L_0x98b480/d;
L_0x98b6d0/d .functor AND 1, v0x98a630_0, v0x98a4a0_0, L_0x98b320, C4<1>;
L_0x98b6d0 .delay 1 (50000,50000,50000) L_0x98b6d0/d;
L_0x98b830/d .functor AND 1, v0x98a630_0, L_0x98b210, v0x98a560_0, C4<1>;
L_0x98b830 .delay 1 (50000,50000,50000) L_0x98b830/d;
L_0x98ba20/d .functor AND 1, v0x98a630_0, v0x98a4a0_0, v0x98a560_0, C4<1>;
L_0x98ba20 .delay 1 (50000,50000,50000) L_0x98ba20/d;
v0x989be0_0 .net "Naddress0", 0 0, L_0x98b210;  1 drivers
v0x989cc0_0 .net "Naddress1", 0 0, L_0x98b320;  1 drivers
v0x989d80_0 .net "address0", 0 0, v0x98a4a0_0;  1 drivers
v0x989e20_0 .net "address1", 0 0, v0x98a560_0;  1 drivers
v0x989ee0_0 .net "enable", 0 0, v0x98a630_0;  1 drivers
v0x989ff0_0 .net "out0", 0 0, L_0x98b480;  alias, 1 drivers
v0x98a0b0_0 .net "out1", 0 0, L_0x98b6d0;  alias, 1 drivers
v0x98a170_0 .net "out2", 0 0, L_0x98b830;  alias, 1 drivers
v0x98a230_0 .net "out3", 0 0, L_0x98ba20;  alias, 1 drivers
    .scope S_0x96aa30;
T_0 ;
    %vpi_call 3 14 "$display", "En A0 A1| O0 O1 O2 O3 | Expected Output" {0 0 0};
    %vpi_call 3 15 "$dumpfile", "decoder_waves.vcd" {0 0 0};
    %vpi_call 3 16 "$dumpvars" {0 0 0};
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x98a630_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x98a4a0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x98a560_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 18 "$display", "%b  %b  %b |  %b  %b  %b  %b | All false", v0x98a630_0, v0x98a4a0_0, v0x98a560_0, v0x98a730_0, v0x98a800_0, v0x98a8a0_0, v0x98a970_0 {0 0 0};
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x98a630_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x98a4a0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x98a560_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 20 "$display", "%b  %b  %b |  %b  %b  %b  %b | All false", v0x98a630_0, v0x98a4a0_0, v0x98a560_0, v0x98a730_0, v0x98a800_0, v0x98a8a0_0, v0x98a970_0 {0 0 0};
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x98a630_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x98a4a0_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x98a560_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 22 "$display", "%b  %b  %b |  %b  %b  %b  %b | All false", v0x98a630_0, v0x98a4a0_0, v0x98a560_0, v0x98a730_0, v0x98a800_0, v0x98a8a0_0, v0x98a970_0 {0 0 0};
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x98a630_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x98a4a0_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x98a560_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 24 "$display", "%b  %b  %b |  %b  %b  %b  %b | All false", v0x98a630_0, v0x98a4a0_0, v0x98a560_0, v0x98a730_0, v0x98a800_0, v0x98a8a0_0, v0x98a970_0 {0 0 0};
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x98a630_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x98a4a0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x98a560_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 26 "$display", "%b  %b  %b |  %b  %b  %b  %b | O0 Only", v0x98a630_0, v0x98a4a0_0, v0x98a560_0, v0x98a730_0, v0x98a800_0, v0x98a8a0_0, v0x98a970_0 {0 0 0};
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x98a630_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x98a4a0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x98a560_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 28 "$display", "%b  %b  %b |  %b  %b  %b  %b | O1 Only", v0x98a630_0, v0x98a4a0_0, v0x98a560_0, v0x98a730_0, v0x98a800_0, v0x98a8a0_0, v0x98a970_0 {0 0 0};
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x98a630_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x98a4a0_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x98a560_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 30 "$display", "%b  %b  %b |  %b  %b  %b  %b | O2 Only", v0x98a630_0, v0x98a4a0_0, v0x98a560_0, v0x98a730_0, v0x98a800_0, v0x98a8a0_0, v0x98a970_0 {0 0 0};
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x98a630_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x98a4a0_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x98a560_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 32 "$display", "%b  %b  %b |  %b  %b  %b  %b | O3 Only", v0x98a630_0, v0x98a4a0_0, v0x98a560_0, v0x98a730_0, v0x98a800_0, v0x98a8a0_0, v0x98a970_0 {0 0 0};
    %vpi_call 3 33 "$finish" {0 0 0};
    %end;
    .thread T_0;
# The file index is used to find the file name in the following table.
:file_names 4;
    "N/A";
    "<interactive>";
    "./decoder.v";
    "decoder.t.v";
