`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2022 05:35:05 PM
// Design Name: 
// Module Name: b_input
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


module b_input(
    input [3:0] b_in,
    input sel,
    output [3:0] b_out
    );
    
    wire [3:0]invert_b;
    assign invert_b = ~b_in;
    
    //Instantiate modules
    //2to1Mux M1
    mux2to1 M1
    (
        .A(b_in),
        .B(invert_b),
        .sel(sel),
        .Y(b_out)
    );
    
endmodule
