`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2022 04:52:50 PM
// Design Name: 
// Module Name: logic_unit
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


module logic_unit(
    input a,
    input b,
    output and_,
    output or_,
    output xor_,
    output b_output
    );
    
    assign and_ = a & b;
    assign or_ = a | b;
    assign xor_ = a ^ b;
    assign b_output = b;
    
endmodule
