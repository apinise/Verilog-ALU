`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2022 05:01:06 PM
// Design Name: 
// Module Name: logic_unit_top
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


module logic_unit_top(
    input [3:0]a,
    input [3:0]b,
    input [1:0]sel,
    output [3:0]y
    );
    
    wire [3:0]and_mux;
    wire [3:0]or_mux;
    wire [3:0]xor_mux;
    wire [3:0]b_mux;
    
    //Modules instantiation
    //4to1 Mux
    mux4to1 U1
    (
        .A(and_mux),
        .B(or_mux),
        .C(xor_mux),
        .D(b_mux),
        .sel(sel),
        .Y(y)
    );
    //logic_unit 0
    logic_unit U2
    (
        .a(a[0]),
        .b(b[0]),
        .and_(and_mux[0]),
        .or_(or_mux[0]),
        .xor_(xor_mux[0]),
        .b_output(b_mux[0])  
    );
    //logic_unit 1
    logic_unit U3
    (
        .a(a[1]),
        .b(b[1]),
        .and_(and_mux[1]),
        .or_(or_mux[1]),
        .xor_(xor_mux[1]),
        .b_output(b_mux[1])  
    );
    //logic_unit 2
    logic_unit U4
    (
        .a(a[2]),
        .b(b[2]),
        .and_(and_mux[2]),
        .or_(or_mux[2]),
        .xor_(xor_mux[2]),
        .b_output(b_mux[2])  
    );
    //logic_unit 3
    logic_unit U5
    (
        .a(a[3]),
        .b(b[3]),
        .and_(and_mux[3]),
        .or_(or_mux[3]),
        .xor_(xor_mux[3]),
        .b_output(b_mux[3])  
    );
    
endmodule
