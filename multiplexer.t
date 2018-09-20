#! /usr/local/bin/vvp
:ivl_version "10.1 (stable)" "(v10_1-107-gab6ae79)";
:ivl_delay_selection "TYPICAL";
:vpi_time_precision - 12;
:vpi_module "system";
:vpi_module "vhdl_sys";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_0x9643a0 .scope module, "behavioralMultiplexer" "behavioralMultiplexer" 2 8;
 .timescale -9 -12;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "address0"
    .port_info 2 /INPUT 1 "address1"
    .port_info 3 /INPUT 1 "in0"
    .port_info 4 /INPUT 1 "in1"
    .port_info 5 /INPUT 1 "in2"
    .port_info 6 /INPUT 1 "in3"
v0x96ee90_0 .net "address", 1 0, L_0x994710;  1 drivers
o0x7f131382e048 .functor BUFZ 1, C4<z>; HiZ drive
v0x992970_0 .net "address0", 0 0, o0x7f131382e048;  0 drivers
o0x7f131382e078 .functor BUFZ 1, C4<z>; HiZ drive
v0x992a30_0 .net "address1", 0 0, o0x7f131382e078;  0 drivers
o0x7f131382e0a8 .functor BUFZ 1, C4<z>; HiZ drive
v0x992b00_0 .net "in0", 0 0, o0x7f131382e0a8;  0 drivers
o0x7f131382e0d8 .functor BUFZ 1, C4<z>; HiZ drive
v0x992bc0_0 .net "in1", 0 0, o0x7f131382e0d8;  0 drivers
o0x7f131382e108 .functor BUFZ 1, C4<z>; HiZ drive
v0x992cd0_0 .net "in2", 0 0, o0x7f131382e108;  0 drivers
o0x7f131382e138 .functor BUFZ 1, C4<z>; HiZ drive
v0x992d90_0 .net "in3", 0 0, o0x7f131382e138;  0 drivers
v0x992e50_0 .net "inputs", 3 0, L_0x994550;  1 drivers
v0x992f30_0 .net "out", 0 0, L_0x994840;  1 drivers
L_0x994550 .concat [ 1 1 1 1], o0x7f131382e0a8, o0x7f131382e0d8, o0x7f131382e108, o0x7f131382e138;
L_0x994710 .concat [ 1 1 0 0], o0x7f131382e048, o0x7f131382e078;
L_0x994840 .part/v L_0x994550, L_0x994710, 1;
S_0x96ed10 .scope module, "testMultiplexer" "testMultiplexer" 3 5;
 .timescale -9 -12;
v0x993fb0_0 .var "address0", 0 0;
v0x994070_0 .var "address1", 0 0;
v0x994140_0 .var "in0", 0 0;
v0x994240_0 .var "in1", 0 0;
v0x994310_0 .var "in2", 0 0;
v0x9943b0_0 .var "in3", 0 0;
v0x994480_0 .net "out", 0 0, L_0x9953b0;  1 drivers
S_0x9931a0 .scope module, "mux" "structuralMultiplexer" 3 12, 2 21 0, S_0x96ed10;
 .timescale -9 -12;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "address0"
    .port_info 2 /INPUT 1 "address1"
    .port_info 3 /INPUT 1 "in0"
    .port_info 4 /INPUT 1 "in1"
    .port_info 5 /INPUT 1 "in2"
    .port_info 6 /INPUT 1 "in3"
L_0x9949b0/d .functor NOT 1, v0x993fb0_0, C4<0>, C4<0>, C4<0>;
L_0x9949b0 .delay 1 (50000,50000,50000) L_0x9949b0/d;
L_0x994ac0/d .functor NOT 1, v0x994070_0, C4<0>, C4<0>, C4<0>;
L_0x994ac0 .delay 1 (50000,50000,50000) L_0x994ac0/d;
L_0x994c20/d .functor AND 1, L_0x9949b0, L_0x994ac0, v0x994140_0, C4<1>;
L_0x994c20 .delay 1 (50000,50000,50000) L_0x994c20/d;
L_0x994e20/d .functor AND 1, v0x993fb0_0, L_0x994ac0, v0x994240_0, C4<1>;
L_0x994e20 .delay 1 (50000,50000,50000) L_0x994e20/d;
L_0x994f80/d .functor AND 1, L_0x9949b0, v0x994070_0, v0x994310_0, C4<1>;
L_0x994f80 .delay 1 (50000,50000,50000) L_0x994f80/d;
L_0x995130/d .functor AND 1, v0x993fb0_0, v0x994070_0, v0x9943b0_0, C4<1>;
L_0x995130 .delay 1 (50000,50000,50000) L_0x995130/d;
L_0x9953b0 .functor OR 1, L_0x994c20, L_0x994e20, L_0x994f80, L_0x995130;
v0x9933f0_0 .net "address0", 0 0, v0x993fb0_0;  1 drivers
v0x9934d0_0 .net "address1", 0 0, v0x994070_0;  1 drivers
v0x993590_0 .net "in0", 0 0, v0x994140_0;  1 drivers
v0x993630_0 .net "in1", 0 0, v0x994240_0;  1 drivers
v0x9936f0_0 .net "in2", 0 0, v0x994310_0;  1 drivers
v0x993800_0 .net "in3", 0 0, v0x9943b0_0;  1 drivers
v0x9938c0_0 .net "interI0", 0 0, L_0x994c20;  1 drivers
v0x993980_0 .net "interI1", 0 0, L_0x994e20;  1 drivers
v0x993a40_0 .net "interI2", 0 0, L_0x994f80;  1 drivers
v0x993b90_0 .net "interI3", 0 0, L_0x995130;  1 drivers
v0x993c50_0 .net "naddress0", 0 0, L_0x9949b0;  1 drivers
v0x993d10_0 .net "naddress1", 0 0, L_0x994ac0;  1 drivers
v0x993dd0_0 .net "out", 0 0, L_0x9953b0;  alias, 1 drivers
    .scope S_0x96ed10;
T_0 ;
    %vpi_call 3 16 "$display", "adr1  adr0  in3   in2   in1   in0   |  out   | Expected Output" {0 0 0};
    %vpi_call 3 17 "$dumpfile", "multiplexer_waves.vcd" {0 0 0};
    %vpi_call 3 18 "$dumpvars" {0 0 0};
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x994070_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x993fb0_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x994140_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x994240_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x994310_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x9943b0_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 20 "$display", "%b     %b     %b     %b     %b     %b     |   %b    | in0", v0x994070_0, v0x993fb0_0, v0x9943b0_0, v0x994310_0, v0x994240_0, v0x994140_0, v0x994480_0 {0 0 0};
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x994070_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x993fb0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x994140_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x994240_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x994310_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x9943b0_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 22 "$display", "%b     %b     %b     %b     %b     %b     |   %b    | in1", v0x994070_0, v0x993fb0_0, v0x9943b0_0, v0x994310_0, v0x994240_0, v0x994140_0, v0x994480_0 {0 0 0};
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x994070_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x993fb0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x994140_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x994240_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x994310_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x9943b0_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 24 "$display", "%b     %b     %b     %b     %b     %b     |   %b    | in2", v0x994070_0, v0x993fb0_0, v0x9943b0_0, v0x994310_0, v0x994240_0, v0x994140_0, v0x994480_0 {0 0 0};
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x994070_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x993fb0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x994140_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x994240_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x994310_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x9943b0_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 26 "$display", "%b     %b     %b     %b     %b     %b     |   %b    | in3", v0x994070_0, v0x993fb0_0, v0x9943b0_0, v0x994310_0, v0x994240_0, v0x994140_0, v0x994480_0 {0 0 0};
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x994070_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x993fb0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x994140_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x994240_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x994310_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x9943b0_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 28 "$display", "%b     %b     %b     %b     %b     %b     |   %b    | in0", v0x994070_0, v0x993fb0_0, v0x9943b0_0, v0x994310_0, v0x994240_0, v0x994140_0, v0x994480_0 {0 0 0};
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x994070_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x993fb0_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x994140_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x994240_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x994310_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x9943b0_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 30 "$display", "%b     %b     %b     %b     %b     %b     |   %b    | in1", v0x994070_0, v0x993fb0_0, v0x9943b0_0, v0x994310_0, v0x994240_0, v0x994140_0, v0x994480_0 {0 0 0};
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x994070_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x993fb0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x994140_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x994240_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x994310_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x9943b0_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 32 "$display", "%b     %b     %b     %b     %b     %b     |   %b    | in2", v0x994070_0, v0x993fb0_0, v0x9943b0_0, v0x994310_0, v0x994240_0, v0x994140_0, v0x994480_0 {0 0 0};
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x994070_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x993fb0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x994140_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x994240_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x994310_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x9943b0_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 34 "$display", "%b     %b     %b     %b     %b     %b     |   %b    | in3", v0x994070_0, v0x993fb0_0, v0x9943b0_0, v0x994310_0, v0x994240_0, v0x994140_0, v0x994480_0 {0 0 0};
    %vpi_call 3 35 "$finish" {0 0 0};
    %end;
    .thread T_0;
# The file index is used to find the file name in the following table.
:file_names 4;
    "N/A";
    "<interactive>";
    "./multiplexer.v";
    "multiplexer.t.v";
