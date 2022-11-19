`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2022 09:51:39 AM
// Design Name: 
// Module Name: alu_tb
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


module alu_tb(

    );
    
    reg [3:0] aa, bb, ff;
    wire [3:0] sum_out;
    wire carry;
    
    alu_top U1
    (
        .A_in(aa),
        .B_in(bb),
        .F(ff),
        .led(sum_out),
        .cout(carry)
    );
    
    initial begin
        //Initialize Variables
        aa = 0;
        bb = 0;
        ff = 0;
        #100; //100ns wait
        
        aa[0] = 1; //Testing A+B
        aa[2] = 1;
        bb[1] = 1;
        #100;
        
        ff[2] = 1; //Testing A-B
        ff[1] = 1;
        #100;
        
        ff[2] = 0; //Testing Carry
        ff[1] = 0;
        aa[3] = 1;
        aa[1] = 1;
        #100;
        
        aa[4] = 0; //Testing AND
        ff[3] = 1;
        #100;
        
        ff[0] = 1; //Testing OR
        #100;
        
        ff[2] = 1; //Testing B
        #100;
        
        ff[1] = 1; //Testing Not B
        #100;
        
        ff[1] = 0; //Testing XOR
        ff[0] = 0;
        #100;
        
        ff[2] = 0; //Testing A and NOT B
        ff[1] = 1;
        #100;
        
        ff[3] = 0; //Testing B-A
        ff[1] = 0;
        ff[2] = 1;
        ff[0] = 1;
        aa[3] = 0;
        bb[3] = 1;
        #100;
    end
    
endmodule
