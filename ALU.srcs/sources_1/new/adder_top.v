`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2022 06:00:08 PM
// Design Name: 
// Module Name: lookahead_adder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module adder_top(
    input [3:0]A,
    input [3:0]B,
    input [3:0]Cin,
    output [3:0]Y
    );

    //Module Instantiation
    //Adder A0
    adder U1
    (
        .A(A[0]),
        .B(B[0]),
        .Cin(Cin[0]),
        .Y(Y[0])
    );
    //Adder A1
    adder U2
    (
        .A(A[1]),
        .B(B[1]),
        .Cin(Cin[1]),
        .Y(Y[1])
    );
    //Adder A2
    adder U3
    (
        .A(A[2]),
        .B(B[2]),
        .Cin(Cin[2]),
        .Y(Y[2])
    );
    //Adder A3
    adder U4
    (
        .A(A[3]),
        .B(B[3]),
        .Cin(Cin[3]),
        .Y(Y[3])
    );

endmodule