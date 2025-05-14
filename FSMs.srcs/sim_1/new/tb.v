`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.05.2025 07:37:52
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


module tb(
    );
    
reg clk = 0, rst = 0, din = 0;
wire dout;
integer i = 0;

mealyfsm dut (clk,rst,din,dout);

always #10 clk = ~clk;

initial begin
rst = 1;
#40;
rst = 0;
end

initial begin
#40;
for(i = 0; i < 10; i = i + 1)
    begin
        din = 1;
        @(posedge clk);
        din = 0;
        @(posedge clk);
        din = 1;
        @(posedge clk);
        din = 1;
        @(posedge clk);
        din = 0;
        @(posedge clk);
        din = 0;
        @(posedge clk);
    end
end

initial begin
#500;
$finish;
end

endmodule
