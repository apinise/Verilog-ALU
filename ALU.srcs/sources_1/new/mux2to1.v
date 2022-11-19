`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2022 03:14:19 PM
// Design Name: 
// Module Name: mux2to1
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


module mux2to1(
    input [3:0]A,
    input [3:0]B,
    input sel,
    output reg [3:0]Y
    );
    
    always @ (A or B or sel)
    begin
        case(sel)
        1'b0: Y = A;
        1'b1: Y = B;
        endcase
    end 
    
endmodule
