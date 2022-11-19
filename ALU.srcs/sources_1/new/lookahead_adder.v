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


module lookahead_adder(
    input [3:0] A,
    input [3:0] B,
    input Cin,
    output [3:0] Cout,
    output overflow
    );
    
    wire [3:0]P;
    wire [3:0]G;
    
    assign P[0] = (A[0] ^ B[0]);
    assign G[0] = (A[0] & B[0]);
    
    assign P[1] = (A[1] ^ B[1]);
    assign G[1] = (A[1] & B[1]);
    
    assign P[2] = (A[2] ^ B[2]);
    assign G[2] = (A[2] & B[2]);
    
    assign P[3] = (A[3] ^ B[3]);
    assign G[3] = (A[3] & B[3]);
    
    assign Cout[0] = Cin;
    assign Cout[1] = (P[0] & Cin) | G[0];
    assign Cout[2] = (P[1] & P[0] & Cin) | G[1] | (P[1] & G[0]);
    assign Cout[3] = (P[2] & P[1] & P[0] & Cin) | G[2] | (P[2] & P[1] & G[0]) | (P[2] & G[1]);
    assign overflow = (P[3] & P[2] & P[1] & P[0] & Cin) | G[3] | (P[3] & P[2] & P[1] & G[0]) | (P[3] & P[2] & G[1]) | (P[3] & G[2]);
    
endmodule
