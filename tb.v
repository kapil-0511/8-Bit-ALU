`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.12.2023 10:56:15
// Design Name: 
// Module Name: tb
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


module tb;

    reg [7:0] in1;
    reg [7:0] in2;
    reg rst;
    reg clk;
    reg [3:0] op;
    wire [7:0] out;
    
    ALU dut (.in1(in1),.in2(in2),.out(out),.op(op),.rst(rst),.clk(clk));
    initial
    begin
        rst = 0;
        in1 = 0;
        in2 = 0;
        op = 0;
        
        #10
        in1 = 25;
        in2 = 18;
        op = 1;
        #10 op = 2;
        #10 op = 5;
        #10 op = 6;
        #10 op = 12;
        #10 op = 13;
        #10 op = 14;
        #10 $finish;
      
    end
    
    initial
    begin
        #10 clk=0;
        forever #5 clk = !clk;
    end
endmodule
