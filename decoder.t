#! /usr/local/bin/vvp
:ivl_version "10.1 (stable)" "(v10_1-107-gab6ae79)";
:ivl_delay_selection "TYPICAL";
:vpi_time_precision - 12;
:vpi_module "system";
:vpi_module "vhdl_sys";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_0x2355c90 .scope module, "behavioralDecoder" "behavioralDecoder" 2 8;
 .timescale -9 -12;
    .port_info 0 /OUTPUT 1 "out0"
    .port_info 1 /OUTPUT 1 "out1"
    .port_info 2 /OUTPUT 1 "out2"
    .port_info 3 /OUTPUT 1 "out3"
    .port_info 4 /INPUT 1 "address0"
    .port_info 5 /INPUT 1 "address1"
    .port_info 6 /INPUT 1 "enable"
v0x2355f90_0 .net *"_s11", 3 0, L_0x2378a00;  1 drivers
v0x23768d0_0 .net *"_s5", 3 0, L_0x23787c0;  1 drivers
L_0x7f55cde9a018 .functor BUFT 1, C4<000>, C4<0>, C4<0>, C4<0>;
v0x23769b0_0 .net *"_s8", 2 0, L_0x7f55cde9a018;  1 drivers
v0x2376aa0_0 .net *"_s9", 1 0, L_0x23788f0;  1 drivers
o0x7f55cdee30d8 .functor BUFZ 1, C4<z>; HiZ drive
v0x2376b80_0 .net "address0", 0 0, o0x7f55cdee30d8;  0 drivers
o0x7f55cdee3108 .functor BUFZ 1, C4<z>; HiZ drive
v0x2376c90_0 .net "address1", 0 0, o0x7f55cdee3108;  0 drivers
o0x7f55cdee3138 .functor BUFZ 1, C4<z>; HiZ drive
v0x2376d50_0 .net "enable", 0 0, o0x7f55cdee3138;  0 drivers
v0x2376e10_0 .net "out0", 0 0, L_0x2378630;  1 drivers
v0x2376ed0_0 .net "out1", 0 0, L_0x2378590;  1 drivers
v0x2377020_0 .net "out2", 0 0, L_0x2378470;  1 drivers
v0x23770e0_0 .net "out3", 0 0, L_0x2378370;  1 drivers
L_0x2378370 .part L_0x2378a00, 3, 1;
L_0x2378470 .part L_0x2378a00, 2, 1;
L_0x2378590 .part L_0x2378a00, 1, 1;
L_0x2378630 .part L_0x2378a00, 0, 1;
L_0x23787c0 .concat [ 1 3 0 0], o0x7f55cdee3138, L_0x7f55cde9a018;
L_0x23788f0 .concat [ 1 1 0 0], o0x7f55cdee30d8, o0x7f55cdee3108;
L_0x2378a00 .shift/l 4, L_0x23787c0, L_0x23788f0;
S_0x2355e10 .scope module, "testDecoder" "testDecoder" 3 5;
 .timescale -9 -12;
v0x2377dd0_0 .var "addr0", 0 0;
v0x2377e90_0 .var "addr1", 0 0;
v0x2377f60_0 .var "enable", 0 0;
v0x2378060_0 .net "out0", 0 0, L_0x2378db0;  1 drivers
v0x2378130_0 .net "out1", 0 0, L_0x2379000;  1 drivers
v0x23781d0_0 .net "out2", 0 0, L_0x2379160;  1 drivers
v0x23782a0_0 .net "out3", 0 0, L_0x2379350;  1 drivers
S_0x23772c0 .scope module, "decoder" "structuralDecoder" 3 11, 2 19 0, S_0x2355e10;
 .timescale -9 -12;
    .port_info 0 /OUTPUT 1 "out0"
    .port_info 1 /OUTPUT 1 "out1"
    .port_info 2 /OUTPUT 1 "out2"
    .port_info 3 /OUTPUT 1 "out3"
    .port_info 4 /INPUT 1 "address0"
    .port_info 5 /INPUT 1 "address1"
    .port_info 6 /INPUT 1 "enable"
L_0x2378b40/d .functor NOT 1, v0x2377dd0_0, C4<0>, C4<0>, C4<0>;
L_0x2378b40 .delay 1 (50000,50000,50000) L_0x2378b40/d;
L_0x2378c50/d .functor NOT 1, v0x2377e90_0, C4<0>, C4<0>, C4<0>;
L_0x2378c50 .delay 1 (50000,50000,50000) L_0x2378c50/d;
L_0x2378db0/d .functor AND 1, v0x2377f60_0, L_0x2378b40, L_0x2378c50, C4<1>;
L_0x2378db0 .delay 1 (50000,50000,50000) L_0x2378db0/d;
L_0x2379000/d .functor AND 1, v0x2377f60_0, v0x2377dd0_0, L_0x2378c50, C4<1>;
L_0x2379000 .delay 1 (50000,50000,50000) L_0x2379000/d;
L_0x2379160/d .functor AND 1, v0x2377f60_0, L_0x2378b40, v0x2377e90_0, C4<1>;
L_0x2379160 .delay 1 (50000,50000,50000) L_0x2379160/d;
L_0x2379350/d .functor AND 1, v0x2377f60_0, v0x2377dd0_0, v0x2377e90_0, C4<1>;
L_0x2379350 .delay 1 (50000,50000,50000) L_0x2379350/d;
v0x2377510_0 .net "Naddress0", 0 0, L_0x2378b40;  1 drivers
v0x23775f0_0 .net "Naddress1", 0 0, L_0x2378c50;  1 drivers
v0x23776b0_0 .net "address0", 0 0, v0x2377dd0_0;  1 drivers
v0x2377750_0 .net "address1", 0 0, v0x2377e90_0;  1 drivers
v0x2377810_0 .net "enable", 0 0, v0x2377f60_0;  1 drivers
v0x2377920_0 .net "out0", 0 0, L_0x2378db0;  alias, 1 drivers
v0x23779e0_0 .net "out1", 0 0, L_0x2379000;  alias, 1 drivers
v0x2377aa0_0 .net "out2", 0 0, L_0x2379160;  alias, 1 drivers
v0x2377b60_0 .net "out3", 0 0, L_0x2379350;  alias, 1 drivers
    .scope S_0x2355e10;
T_0 ;
    %vpi_call 3 14 "$display", "En A0 A1| O0 O1 O2 O3 | Expected Output" {0 0 0};
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2377f60_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2377dd0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2377e90_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 16 "$display", "%b  %b  %b |  %b  %b  %b  %b | All false", v0x2377f60_0, v0x2377dd0_0, v0x2377e90_0, v0x2378060_0, v0x2378130_0, v0x23781d0_0, v0x23782a0_0 {0 0 0};
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2377f60_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x2377dd0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2377e90_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 18 "$display", "%b  %b  %b |  %b  %b  %b  %b | All false", v0x2377f60_0, v0x2377dd0_0, v0x2377e90_0, v0x2378060_0, v0x2378130_0, v0x23781d0_0, v0x23782a0_0 {0 0 0};
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2377f60_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2377dd0_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x2377e90_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 20 "$display", "%b  %b  %b |  %b  %b  %b  %b | All false", v0x2377f60_0, v0x2377dd0_0, v0x2377e90_0, v0x2378060_0, v0x2378130_0, v0x23781d0_0, v0x23782a0_0 {0 0 0};
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2377f60_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x2377dd0_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x2377e90_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 22 "$display", "%b  %b  %b |  %b  %b  %b  %b | All false", v0x2377f60_0, v0x2377dd0_0, v0x2377e90_0, v0x2378060_0, v0x2378130_0, v0x23781d0_0, v0x23782a0_0 {0 0 0};
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x2377f60_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2377dd0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2377e90_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 24 "$display", "%b  %b  %b |  %b  %b  %b  %b | O0 Only", v0x2377f60_0, v0x2377dd0_0, v0x2377e90_0, v0x2378060_0, v0x2378130_0, v0x23781d0_0, v0x23782a0_0 {0 0 0};
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x2377f60_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x2377dd0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2377e90_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 26 "$display", "%b  %b  %b |  %b  %b  %b  %b | O1 Only", v0x2377f60_0, v0x2377dd0_0, v0x2377e90_0, v0x2378060_0, v0x2378130_0, v0x23781d0_0, v0x23782a0_0 {0 0 0};
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x2377f60_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2377dd0_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x2377e90_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 28 "$display", "%b  %b  %b |  %b  %b  %b  %b | O2 Only", v0x2377f60_0, v0x2377dd0_0, v0x2377e90_0, v0x2378060_0, v0x2378130_0, v0x23781d0_0, v0x23782a0_0 {0 0 0};
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x2377f60_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x2377dd0_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x2377e90_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 30 "$display", "%b  %b  %b |  %b  %b  %b  %b | O3 Only", v0x2377f60_0, v0x2377dd0_0, v0x2377e90_0, v0x2378060_0, v0x2378130_0, v0x23781d0_0, v0x23782a0_0 {0 0 0};
    %end;
    .thread T_0;
# The file index is used to find the file name in the following table.
:file_names 4;
    "N/A";
    "<interactive>";
    "./decoder.v";
    "decoder.t.v";
