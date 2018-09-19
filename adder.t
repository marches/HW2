#! /usr/local/bin/vvp
:ivl_version "10.1 (stable)" "(v10_1-107-gab6ae79)";
:ivl_delay_selection "TYPICAL";
:vpi_time_precision - 12;
:vpi_module "system";
:vpi_module "vhdl_sys";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_0xb39700 .scope module, "behavioralFullAdder" "behavioralFullAdder" 2 8;
 .timescale -9 -12;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "a"
    .port_info 3 /INPUT 1 "b"
    .port_info 4 /INPUT 1 "carryin"
L_0x7f27abb32060 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0xb39a80_0 .net *"_s10", 0 0, L_0x7f27abb32060;  1 drivers
v0xb58440_0 .net *"_s11", 1 0, L_0xb5a230;  1 drivers
v0xb58520_0 .net *"_s13", 1 0, L_0xb5a3e0;  1 drivers
L_0x7f27abb320a8 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0xb58610_0 .net *"_s16", 0 0, L_0x7f27abb320a8;  1 drivers
v0xb586f0_0 .net *"_s17", 1 0, L_0xb5a540;  1 drivers
v0xb58820_0 .net *"_s3", 1 0, L_0xb59f60;  1 drivers
L_0x7f27abb32018 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0xb58900_0 .net *"_s6", 0 0, L_0x7f27abb32018;  1 drivers
v0xb589e0_0 .net *"_s7", 1 0, L_0xb5a0b0;  1 drivers
o0x7f27abb7b198 .functor BUFZ 1, C4<z>; HiZ drive
v0xb58ac0_0 .net "a", 0 0, o0x7f27abb7b198;  0 drivers
o0x7f27abb7b1c8 .functor BUFZ 1, C4<z>; HiZ drive
v0xb58c10_0 .net "b", 0 0, o0x7f27abb7b1c8;  0 drivers
o0x7f27abb7b1f8 .functor BUFZ 1, C4<z>; HiZ drive
v0xb58cd0_0 .net "carryin", 0 0, o0x7f27abb7b1f8;  0 drivers
v0xb58d90_0 .net "carryout", 0 0, L_0xb59d40;  1 drivers
v0xb58e50_0 .net "sum", 0 0, L_0xb59e40;  1 drivers
L_0xb59d40 .part L_0xb5a540, 1, 1;
L_0xb59e40 .part L_0xb5a540, 0, 1;
L_0xb59f60 .concat [ 1 1 0 0], o0x7f27abb7b198, L_0x7f27abb32018;
L_0xb5a0b0 .concat [ 1 1 0 0], o0x7f27abb7b1c8, L_0x7f27abb32060;
L_0xb5a230 .arith/sum 2, L_0xb59f60, L_0xb5a0b0;
L_0xb5a3e0 .concat [ 1 1 0 0], o0x7f27abb7b1f8, L_0x7f27abb320a8;
L_0xb5a540 .arith/sum 2, L_0xb5a230, L_0xb5a3e0;
S_0xb39900 .scope module, "testFullAdder" "testFullAdder" 3 5;
 .timescale -9 -12;
v0xb598f0_0 .var "a", 0 0;
v0xb599b0_0 .var "b", 0 0;
v0xb59a80_0 .var "carryin", 0 0;
v0xb59b80_0 .net "carryout", 0 0, L_0xb5ab40;  1 drivers
v0xb59c50_0 .net "sum", 0 0, L_0xb5a770;  1 drivers
S_0xb58fb0 .scope module, "adder" "structuralFullAdder" 3 10, 2 20 0, S_0xb39900;
 .timescale -9 -12;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "a"
    .port_info 3 /INPUT 1 "b"
    .port_info 4 /INPUT 1 "carryin"
L_0xb5a2d0/d .functor XOR 1, v0xb598f0_0, v0xb599b0_0, C4<0>, C4<0>;
L_0xb5a2d0 .delay 1 (50000,50000,50000) L_0xb5a2d0/d;
L_0xb5a770/d .functor XOR 1, L_0xb5a2d0, v0xb59a80_0, C4<0>, C4<0>;
L_0xb5a770 .delay 1 (50000,50000,50000) L_0xb5a770/d;
L_0xb5a970/d .functor AND 1, v0xb598f0_0, v0xb599b0_0, C4<1>, C4<1>;
L_0xb5a970 .delay 1 (50000,50000,50000) L_0xb5a970/d;
L_0xb5aad0/d .functor AND 1, L_0xb5a2d0, v0xb59a80_0, C4<1>, C4<1>;
L_0xb5aad0 .delay 1 (50000,50000,50000) L_0xb5aad0/d;
L_0xb5ab40/d .functor OR 1, L_0xb5aad0, L_0xb5a970, C4<0>, C4<0>;
L_0xb5ab40 .delay 1 (50000,50000,50000) L_0xb5ab40/d;
v0xb591d0_0 .net "AandB", 0 0, L_0xb5a970;  1 drivers
v0xb592b0_0 .net "a", 0 0, v0xb598f0_0;  1 drivers
v0xb59370_0 .net "b", 0 0, v0xb599b0_0;  1 drivers
v0xb59440_0 .net "carryin", 0 0, v0xb59a80_0;  1 drivers
v0xb59500_0 .net "carryout", 0 0, L_0xb5ab40;  alias, 1 drivers
v0xb59610_0 .net "sum", 0 0, L_0xb5a770;  alias, 1 drivers
v0xb596d0_0 .net "xAorB", 0 0, L_0xb5a2d0;  1 drivers
v0xb59790_0 .net "xAorBandCin", 0 0, L_0xb5aad0;  1 drivers
    .scope S_0xb39900;
T_0 ;
    %vpi_call 3 14 "$display", "a    b    cin Ecout Esum  cout sum" {0 0 0};
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xb598f0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xb599b0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xb59a80_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 16 "$display", "%b    %b    %b    0    0    %b    %b", v0xb598f0_0, v0xb599b0_0, v0xb59a80_0, v0xb59b80_0, v0xb59c50_0 {0 0 0};
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xb598f0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xb599b0_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0xb59a80_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 18 "$display", "%b    %b    %b    0    1    %b    %b", v0xb598f0_0, v0xb599b0_0, v0xb59a80_0, v0xb59b80_0, v0xb59c50_0 {0 0 0};
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xb598f0_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0xb599b0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xb59a80_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 20 "$display", "%b    %b    %b    0    1    %b    %b", v0xb598f0_0, v0xb599b0_0, v0xb59a80_0, v0xb59b80_0, v0xb59c50_0 {0 0 0};
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xb598f0_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0xb599b0_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0xb59a80_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 22 "$display", "%b    %b    %b    1    0    %b    %b", v0xb598f0_0, v0xb599b0_0, v0xb59a80_0, v0xb59b80_0, v0xb59c50_0 {0 0 0};
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0xb598f0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xb599b0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xb59a80_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 24 "$display", "%b    %b    %b    0    1    %b    %b", v0xb598f0_0, v0xb599b0_0, v0xb59a80_0, v0xb59b80_0, v0xb59c50_0 {0 0 0};
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0xb598f0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xb599b0_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0xb59a80_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 26 "$display", "%b    %b    %b    1    0    %b    %b", v0xb598f0_0, v0xb599b0_0, v0xb59a80_0, v0xb59b80_0, v0xb59c50_0 {0 0 0};
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0xb598f0_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0xb599b0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xb59a80_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 28 "$display", "%b    %b    %b    1    0    %b    %b", v0xb598f0_0, v0xb599b0_0, v0xb59a80_0, v0xb59b80_0, v0xb59c50_0 {0 0 0};
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0xb598f0_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0xb599b0_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0xb59a80_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 30 "$display", "%b    %b    %b    1    1    %b    %b", v0xb598f0_0, v0xb599b0_0, v0xb59a80_0, v0xb59b80_0, v0xb59c50_0 {0 0 0};
    %end;
    .thread T_0;
# The file index is used to find the file name in the following table.
:file_names 4;
    "N/A";
    "<interactive>";
    "./adder.v";
    "adder.t.v";
