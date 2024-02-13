`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.12.2023 10:36:27
// Design Name: 
// Module Name: ALU
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


module ALU(in1,in2,out,op,rst,clk);
    input [7:0] in1;
    input [7:0] in2;
    input rst;
    input clk;
    input [3:0] op;
    output reg [7:0] out;
    
    
    always @(posedge clk or posedge rst)begin
    if(rst==1)
    out=0;
    else
    case(op)
        0: out=in1+in2;
        1: out=in1-in2;
        2: out=in1+1;
        3: out=in1-1;
        4: out=in1|in2;
        5: out=in1&in2;
        6: out= ~in1;
        7: out= ~in2;
        8: out=out<<1;
        9: out=out>>1;
        10: out=out<<4;
        11: out=out>>4;
        12: out= {out[6:0],out[7]};
        13: out= {out[0],out[7:1]};
        14: out= {out[3:0],out[7:4]};
        
    endcase
    end
endmodule
