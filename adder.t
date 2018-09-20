#! /usr/local/bin/vvp
:ivl_version "10.1 (stable)" "(v10_1-107-gab6ae79)";
:ivl_delay_selection "TYPICAL";
:vpi_time_precision - 12;
:vpi_module "system";
:vpi_module "vhdl_sys";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_0x25ac700 .scope module, "behavioralFullAdder" "behavioralFullAdder" 2 8;
 .timescale -9 -12;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "a"
    .port_info 3 /INPUT 1 "b"
    .port_info 4 /INPUT 1 "carryin"
L_0x7fa43f565060 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x25aca80_0 .net *"_s10", 0 0, L_0x7fa43f565060;  1 drivers
v0x25cbab0_0 .net *"_s11", 1 0, L_0x25cd8a0;  1 drivers
v0x25cbb90_0 .net *"_s13", 1 0, L_0x25cda50;  1 drivers
L_0x7fa43f5650a8 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x25cbc80_0 .net *"_s16", 0 0, L_0x7fa43f5650a8;  1 drivers
v0x25cbd60_0 .net *"_s17", 1 0, L_0x25cdbb0;  1 drivers
v0x25cbe90_0 .net *"_s3", 1 0, L_0x25cd5d0;  1 drivers
L_0x7fa43f565018 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x25cbf70_0 .net *"_s6", 0 0, L_0x7fa43f565018;  1 drivers
v0x25cc050_0 .net *"_s7", 1 0, L_0x25cd720;  1 drivers
o0x7fa43f5ae198 .functor BUFZ 1, C4<z>; HiZ drive
v0x25cc130_0 .net "a", 0 0, o0x7fa43f5ae198;  0 drivers
o0x7fa43f5ae1c8 .functor BUFZ 1, C4<z>; HiZ drive
v0x25cc280_0 .net "b", 0 0, o0x7fa43f5ae1c8;  0 drivers
o0x7fa43f5ae1f8 .functor BUFZ 1, C4<z>; HiZ drive
v0x25cc340_0 .net "carryin", 0 0, o0x7fa43f5ae1f8;  0 drivers
v0x25cc400_0 .net "carryout", 0 0, L_0x25cd3b0;  1 drivers
v0x25cc4c0_0 .net "sum", 0 0, L_0x25cd4b0;  1 drivers
L_0x25cd3b0 .part L_0x25cdbb0, 1, 1;
L_0x25cd4b0 .part L_0x25cdbb0, 0, 1;
L_0x25cd5d0 .concat [ 1 1 0 0], o0x7fa43f5ae198, L_0x7fa43f565018;
L_0x25cd720 .concat [ 1 1 0 0], o0x7fa43f5ae1c8, L_0x7fa43f565060;
L_0x25cd8a0 .arith/sum 2, L_0x25cd5d0, L_0x25cd720;
L_0x25cda50 .concat [ 1 1 0 0], o0x7fa43f5ae1f8, L_0x7fa43f5650a8;
L_0x25cdbb0 .arith/sum 2, L_0x25cd8a0, L_0x25cda50;
S_0x25ac900 .scope module, "testFullAdder" "testFullAdder" 3 5;
 .timescale -9 -12;
v0x25ccf60_0 .var "a", 0 0;
v0x25cd020_0 .var "b", 0 0;
v0x25cd0f0_0 .var "carryin", 0 0;
v0x25cd1f0_0 .net "carryout", 0 0, L_0x25ce200;  1 drivers
v0x25cd2c0_0 .net "sum", 0 0, L_0x25cdde0;  1 drivers
S_0x25cc620 .scope module, "adder" "structuralFullAdder" 3 10, 2 20 0, S_0x25ac900;
 .timescale -9 -12;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "a"
    .port_info 3 /INPUT 1 "b"
    .port_info 4 /INPUT 1 "carryin"
L_0x25cd940/d .functor XOR 1, v0x25ccf60_0, v0x25cd020_0, C4<0>, C4<0>;
L_0x25cd940 .delay 1 (50000,50000,50000) L_0x25cd940/d;
L_0x25cdde0/d .functor XOR 1, L_0x25cd940, v0x25cd0f0_0, C4<0>, C4<0>;
L_0x25cdde0 .delay 1 (50000,50000,50000) L_0x25cdde0/d;
L_0x25cdfe0/d .functor AND 1, v0x25ccf60_0, v0x25cd020_0, C4<1>, C4<1>;
L_0x25cdfe0 .delay 1 (50000,50000,50000) L_0x25cdfe0/d;
L_0x25ce140/d .functor AND 1, L_0x25cd940, v0x25cd0f0_0, C4<1>, C4<1>;
L_0x25ce140 .delay 1 (50000,50000,50000) L_0x25ce140/d;
L_0x25ce200/d .functor OR 1, L_0x25ce140, L_0x25cdfe0, C4<0>, C4<0>;
L_0x25ce200 .delay 1 (50000,50000,50000) L_0x25ce200/d;
v0x25cc840_0 .net "AandB", 0 0, L_0x25cdfe0;  1 drivers
v0x25cc920_0 .net "a", 0 0, v0x25ccf60_0;  1 drivers
v0x25cc9e0_0 .net "b", 0 0, v0x25cd020_0;  1 drivers
v0x25ccab0_0 .net "carryin", 0 0, v0x25cd0f0_0;  1 drivers
v0x25ccb70_0 .net "carryout", 0 0, L_0x25ce200;  alias, 1 drivers
v0x25ccc80_0 .net "sum", 0 0, L_0x25cdde0;  alias, 1 drivers
v0x25ccd40_0 .net "xAorB", 0 0, L_0x25cd940;  1 drivers
v0x25cce00_0 .net "xAorBandCin", 0 0, L_0x25ce140;  1 drivers
    .scope S_0x25ac900;
T_0 ;
    %vpi_call 3 14 "$dumpfile", "adder_waves.vcd" {0 0 0};
    %vpi_call 3 15 "$dumpvars" {0 0 0};
    %vpi_call 3 16 "$display", "a    b    cin Ecout Esum  cout sum" {0 0 0};
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x25ccf60_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x25cd020_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x25cd0f0_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 18 "$display", "%b    %b    %b    0    0    %b    %b", v0x25ccf60_0, v0x25cd020_0, v0x25cd0f0_0, v0x25cd1f0_0, v0x25cd2c0_0 {0 0 0};
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x25ccf60_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x25cd020_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x25cd0f0_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 20 "$display", "%b    %b    %b    0    1    %b    %b", v0x25ccf60_0, v0x25cd020_0, v0x25cd0f0_0, v0x25cd1f0_0, v0x25cd2c0_0 {0 0 0};
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x25ccf60_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x25cd020_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x25cd0f0_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 22 "$display", "%b    %b    %b    0    1    %b    %b", v0x25ccf60_0, v0x25cd020_0, v0x25cd0f0_0, v0x25cd1f0_0, v0x25cd2c0_0 {0 0 0};
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x25ccf60_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x25cd020_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x25cd0f0_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 24 "$display", "%b    %b    %b    1    0    %b    %b", v0x25ccf60_0, v0x25cd020_0, v0x25cd0f0_0, v0x25cd1f0_0, v0x25cd2c0_0 {0 0 0};
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x25ccf60_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x25cd020_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x25cd0f0_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 26 "$display", "%b    %b    %b    0    1    %b    %b", v0x25ccf60_0, v0x25cd020_0, v0x25cd0f0_0, v0x25cd1f0_0, v0x25cd2c0_0 {0 0 0};
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x25ccf60_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x25cd020_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x25cd0f0_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 28 "$display", "%b    %b    %b    1    0    %b    %b", v0x25ccf60_0, v0x25cd020_0, v0x25cd0f0_0, v0x25cd1f0_0, v0x25cd2c0_0 {0 0 0};
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x25ccf60_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x25cd020_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x25cd0f0_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 30 "$display", "%b    %b    %b    1    0    %b    %b", v0x25ccf60_0, v0x25cd020_0, v0x25cd0f0_0, v0x25cd1f0_0, v0x25cd2c0_0 {0 0 0};
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x25ccf60_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x25cd020_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x25cd0f0_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 32 "$display", "%b    %b    %b    1    1    %b    %b", v0x25ccf60_0, v0x25cd020_0, v0x25cd0f0_0, v0x25cd1f0_0, v0x25cd2c0_0 {0 0 0};
    %vpi_call 3 33 "$finish" {0 0 0};
    %end;
    .thread T_0;
# The file index is used to find the file name in the following table.
:file_names 4;
    "N/A";
    "<interactive>";
    "./adder.v";
    "adder.t.v";
