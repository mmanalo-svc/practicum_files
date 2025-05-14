`timescale 1ns / 1ps

module tb();

reg clk = 0, rst = 0;
wire [3:0] doutr;

ring_counter dut (clk,rst,doutr);

always #5 clk =~clk;

initial begin
rst = 1'b1;
#50;
rst = 1'b0;
end

initial begin
#500;
$finish;
end

endmodule
