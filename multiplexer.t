#! /usr/local/bin/vvp
:ivl_version "10.1 (stable)" "(v10_1-107-gab6ae79)";
:ivl_delay_selection "TYPICAL";
:vpi_time_precision - 12;
:vpi_module "system";
:vpi_module "vhdl_sys";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_0x2338f70 .scope module, "behavioralMultiplexer" "behavioralMultiplexer" 2 8;
 .timescale -9 -12;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "address0"
    .port_info 2 /INPUT 1 "address1"
    .port_info 3 /INPUT 1 "in0"
    .port_info 4 /INPUT 1 "in1"
    .port_info 5 /INPUT 1 "in2"
    .port_info 6 /INPUT 1 "in3"
v0x2343e90_0 .net "address", 1 0, L_0x2368f80;  1 drivers
o0x7ff0046b2048 .functor BUFZ 1, C4<z>; HiZ drive
v0x23671e0_0 .net "address0", 0 0, o0x7ff0046b2048;  0 drivers
o0x7ff0046b2078 .functor BUFZ 1, C4<z>; HiZ drive
v0x23672a0_0 .net "address1", 0 0, o0x7ff0046b2078;  0 drivers
o0x7ff0046b20a8 .functor BUFZ 1, C4<z>; HiZ drive
v0x2367370_0 .net "in0", 0 0, o0x7ff0046b20a8;  0 drivers
o0x7ff0046b20d8 .functor BUFZ 1, C4<z>; HiZ drive
v0x2367430_0 .net "in1", 0 0, o0x7ff0046b20d8;  0 drivers
o0x7ff0046b2108 .functor BUFZ 1, C4<z>; HiZ drive
v0x2367540_0 .net "in2", 0 0, o0x7ff0046b2108;  0 drivers
o0x7ff0046b2138 .functor BUFZ 1, C4<z>; HiZ drive
v0x2367600_0 .net "in3", 0 0, o0x7ff0046b2138;  0 drivers
v0x23676c0_0 .net "inputs", 3 0, L_0x2368dc0;  1 drivers
v0x23677a0_0 .net "out", 0 0, L_0x23690b0;  1 drivers
L_0x2368dc0 .concat [ 1 1 1 1], o0x7ff0046b20a8, o0x7ff0046b20d8, o0x7ff0046b2108, o0x7ff0046b2138;
L_0x2368f80 .concat [ 1 1 0 0], o0x7ff0046b2048, o0x7ff0046b2078;
L_0x23690b0 .part/v L_0x2368dc0, L_0x2368f80, 1;
S_0x2343d10 .scope module, "testMultiplexer" "testMultiplexer" 3 5;
 .timescale -9 -12;
v0x2368820_0 .var "address0", 0 0;
v0x23688e0_0 .var "address1", 0 0;
v0x23689b0_0 .var "in0", 0 0;
v0x2368ab0_0 .var "in1", 0 0;
v0x2368b80_0 .var "in2", 0 0;
v0x2368c20_0 .var "in3", 0 0;
v0x2368cf0_0 .net "out", 0 0, L_0x2369c20;  1 drivers
S_0x2367a10 .scope module, "mux" "structuralMultiplexer" 3 12, 2 21 0, S_0x2343d10;
 .timescale -9 -12;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "address0"
    .port_info 2 /INPUT 1 "address1"
    .port_info 3 /INPUT 1 "in0"
    .port_info 4 /INPUT 1 "in1"
    .port_info 5 /INPUT 1 "in2"
    .port_info 6 /INPUT 1 "in3"
L_0x2369220/d .functor NOT 1, v0x2368820_0, C4<0>, C4<0>, C4<0>;
L_0x2369220 .delay 1 (50000,50000,50000) L_0x2369220/d;
L_0x2369330/d .functor NOT 1, v0x23688e0_0, C4<0>, C4<0>, C4<0>;
L_0x2369330 .delay 1 (50000,50000,50000) L_0x2369330/d;
L_0x2369490/d .functor AND 1, L_0x2369220, L_0x2369330, v0x23689b0_0, C4<1>;
L_0x2369490 .delay 1 (50000,50000,50000) L_0x2369490/d;
L_0x2369690/d .functor AND 1, v0x2368820_0, L_0x2369330, v0x2368ab0_0, C4<1>;
L_0x2369690 .delay 1 (50000,50000,50000) L_0x2369690/d;
L_0x23697f0/d .functor AND 1, L_0x2369220, v0x23688e0_0, v0x2368b80_0, C4<1>;
L_0x23697f0 .delay 1 (50000,50000,50000) L_0x23697f0/d;
L_0x23699a0/d .functor AND 1, v0x2368820_0, v0x23688e0_0, v0x2368c20_0, C4<1>;
L_0x23699a0 .delay 1 (50000,50000,50000) L_0x23699a0/d;
L_0x2369c20 .functor OR 1, L_0x2369490, L_0x2369690, L_0x23697f0, L_0x23699a0;
v0x2367c60_0 .net "address0", 0 0, v0x2368820_0;  1 drivers
v0x2367d40_0 .net "address1", 0 0, v0x23688e0_0;  1 drivers
v0x2367e00_0 .net "in0", 0 0, v0x23689b0_0;  1 drivers
v0x2367ea0_0 .net "in1", 0 0, v0x2368ab0_0;  1 drivers
v0x2367f60_0 .net "in2", 0 0, v0x2368b80_0;  1 drivers
v0x2368070_0 .net "in3", 0 0, v0x2368c20_0;  1 drivers
v0x2368130_0 .net "interI0", 0 0, L_0x2369490;  1 drivers
v0x23681f0_0 .net "interI1", 0 0, L_0x2369690;  1 drivers
v0x23682b0_0 .net "interI2", 0 0, L_0x23697f0;  1 drivers
v0x2368400_0 .net "interI3", 0 0, L_0x23699a0;  1 drivers
v0x23684c0_0 .net "naddress0", 0 0, L_0x2369220;  1 drivers
v0x2368580_0 .net "naddress1", 0 0, L_0x2369330;  1 drivers
v0x2368640_0 .net "out", 0 0, L_0x2369c20;  alias, 1 drivers
    .scope S_0x2343d10;
T_0 ;
    %vpi_call 3 16 "$display", "adr1  adr0  in3   in2   in1   in0   |  out   | Expected Output" {0 0 0};
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x23688e0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2368820_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x23689b0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2368ab0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2368b80_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2368c20_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 18 "$display", "%b     %b     %b     %b     %b     %b     |   %b    | in0", v0x23688e0_0, v0x2368820_0, v0x2368c20_0, v0x2368b80_0, v0x2368ab0_0, v0x23689b0_0, v0x2368cf0_0 {0 0 0};
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x23688e0_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x2368820_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x23689b0_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x2368ab0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2368b80_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2368c20_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 20 "$display", "%b     %b     %b     %b     %b     %b     |   %b    | in1", v0x23688e0_0, v0x2368820_0, v0x2368c20_0, v0x2368b80_0, v0x2368ab0_0, v0x23689b0_0, v0x2368cf0_0 {0 0 0};
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x23688e0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2368820_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x23689b0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2368ab0_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x2368b80_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2368c20_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 22 "$display", "%b     %b     %b     %b     %b     %b     |   %b    | in2", v0x23688e0_0, v0x2368820_0, v0x2368c20_0, v0x2368b80_0, v0x2368ab0_0, v0x23689b0_0, v0x2368cf0_0 {0 0 0};
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x23688e0_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x2368820_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x23689b0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2368ab0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2368b80_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x2368c20_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 24 "$display", "%b     %b     %b     %b     %b     %b     |   %b    | in3", v0x23688e0_0, v0x2368820_0, v0x2368c20_0, v0x2368b80_0, v0x2368ab0_0, v0x23689b0_0, v0x2368cf0_0 {0 0 0};
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x23688e0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2368820_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x23689b0_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x2368ab0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2368b80_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2368c20_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 26 "$display", "%b     %b     %b     %b     %b     %b     |   %b    | in0", v0x23688e0_0, v0x2368820_0, v0x2368c20_0, v0x2368b80_0, v0x2368ab0_0, v0x23689b0_0, v0x2368cf0_0 {0 0 0};
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x23688e0_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x2368820_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x23689b0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2368ab0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2368b80_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2368c20_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 28 "$display", "%b     %b     %b     %b     %b     %b     |   %b    | in1", v0x23688e0_0, v0x2368820_0, v0x2368c20_0, v0x2368b80_0, v0x2368ab0_0, v0x23689b0_0, v0x2368cf0_0 {0 0 0};
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x23688e0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2368820_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x23689b0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2368ab0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2368b80_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x2368c20_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 30 "$display", "%b     %b     %b     %b     %b     %b     |   %b    | in2", v0x23688e0_0, v0x2368820_0, v0x2368c20_0, v0x2368b80_0, v0x2368ab0_0, v0x23689b0_0, v0x2368cf0_0 {0 0 0};
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x23688e0_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x2368820_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x23689b0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2368ab0_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x2368b80_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2368c20_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 32 "$display", "%b     %b     %b     %b     %b     %b     |   %b    | in3", v0x23688e0_0, v0x2368820_0, v0x2368c20_0, v0x2368b80_0, v0x2368ab0_0, v0x23689b0_0, v0x2368cf0_0 {0 0 0};
    %end;
    .thread T_0;
# The file index is used to find the file name in the following table.
:file_names 4;
    "N/A";
    "<interactive>";
    "./multiplexer.v";
    "multiplexer.t.v";
