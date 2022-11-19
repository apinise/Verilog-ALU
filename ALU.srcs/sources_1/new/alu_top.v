`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2022 03:11:58 PM
// Design Name: 
// Module Name: alu_top
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


module alu_top(
    input [3:0]A_in,
    input [3:0]B_in,
    input [3:0]F, //Select inputs
    output [3:0] led,
    output cout
    );
    
    wire [3:0]a_bus;
    wire [3:0]b_bus;
    wire [3:0]cout_bus;
    wire [3:0]adder_out;
    wire [1:0]logic_sel;
    wire [3:0]logicout_bus;
    
    assign logic_sel[1] = F[2];
    assign logic_sel[0] = F[0];
    
    //Module Instantiation
    //a_input
    a_input U1
    (
        .a_in(A_in),
        .sel(F[0]),
        .a_out(a_bus)
    );
    
    b_input U2
    (
        .b_in(B_in),
        .sel(F[1]),
        .b_out(b_bus)
    );
    
    lookahead_adder U3
    (
        .A(a_bus),
        .B(b_bus),
        .Cin(F[2]),
        .Cout(cout_bus),
        .overflow(cout)
    );
    
    logic_unit_top U4
    (
        .a(A_in),
        .b(b_bus),
        .sel(logic_sel),
        .y(logicout_bus) 
    );
    
    adder_top U5
    (
        .A(a_bus),
        .B(b_bus),
        .Cin(cout_bus),
        .Y(adder_out)
    );
    
    mux2to1 U6
    (
        .A(adder_out),
        .B(logicout_bus),
        .sel(F[3]),
        .Y(led)
    );
    
endmodule
