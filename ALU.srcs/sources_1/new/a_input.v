`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2022 05:35:05 PM
// Design Name: 
// Module Name: a_input
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


module a_input(
    input [3:0] a_in,
    input sel,
    output [3:0] a_out
    );
    
    wire [3:0]invert_a;
    assign invert_a = ~a_in;
    
    //Module instantiations
    //2to1 Mux M1
    mux2to1 U1
    (
        .A(a_in),
        .B(invert_a),
        .sel(sel),
        .Y(a_out)
    );
    
endmodule
