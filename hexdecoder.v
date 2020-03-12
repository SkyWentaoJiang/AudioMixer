`timescale 1ns / 1ns // `timescale time_unit/time_precision

//SW[4:0] data inputs

//HEX0[6:0] output display

module lab_1c(HEX0, SW);
    input [4:0] SW;
    output [6:0] HEX0;

    hex00 up(
        .a(SW[3]),
        .b(SW[2]),
	.c(SW[1]),
	.d(SW[0]),
        .l(HEX0[0])
        );

    hex01 right_up(
        .a(SW[3]),
        .b(SW[2]),
	.c(SW[1]),
	.d(SW[0]),
        .l(HEX0[1])
        );

    hex02 right_down(
        .a(SW[3]),
        .b(SW[2]),
	.c(SW[1]),
	.d(SW[0]),
        .l(HEX0[2])
        );

    hex03 down(
        .a(SW[3]),
        .b(SW[2]),
	.c(SW[1]),
	.d(SW[0]),
        .l(HEX0[3])
        );

    hex04 left_down(
        .a(SW[3]),
        .b(SW[2]),
	.c(SW[1]),
	.d(SW[0]),
        .l(HEX0[4])
        );

    hex05 left_up(
        .a(SW[3]),
        .b(SW[2]),
	.c(SW[1]),
	.d(SW[0]),
        .l(HEX0[5])
        );

    hex06 center(
        .a(SW[3]),
        .b(SW[2]),
	.c(SW[1]),
	.d(SW[0]),
        .l(HEX0[6])
        );
endmodule

module hex00(a, b, c, d, l);
    input a;
    input b;
    input c;
    input d;
    output l;

    assign l = ~a & ~b & ~c & d | ~a & b & ~c & ~d | a & b & ~c & d | a & ~b & c & d;
endmodule

module hex01(a, b, c, d, l);
    input a;
    input b;
    input c;
    input d;
    output l;

    assign l = ~a & b & ~c & d | a & c & d | b & c & ~d | a & b & ~d;
endmodule

module hex02(a, b, c, d, l);
    input a;
    input b;
    input c;
    input d;
    output l;

    assign l = a & b & ~d | a & b & c | ~a & ~b & c & ~d;
endmodule

module hex03(a, b, c, d, l);
    input a;
    input b;
    input c;
    input d;
    output l;

    assign l = ~a & ~b & ~c & d | b & c & d | a & ~b & c & ~d | ~a & b & ~c & ~d;
endmodule

module hex04(a, b, c, d, l);
    input a;
    input b;
    input c;
    input d;
    output l;

    assign l = ~a & d | ~a & b & ~c | ~b & ~c & d;
endmodule

module hex05(a, b, c, d, l);
    input a;
    input b;
    input c;
    input d;
    output l;

    assign l = ~a & ~b & d | ~a & c & d | ~a & ~b & c | a & b & ~c & d;
endmodule

module hex06(a, b, c, d, l);
    input a;
    input b;
    input c;
    input d;
    output l;

    assign l = ~a & ~b & ~c | ~a & b & c & d | a & b & ~c & ~d;
endmodule
