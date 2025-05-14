`timescale 1ns / 1ps

///1. TB code does not have i/o ports
///2. All inputs of DUT must be declared as reg variable in TB
///3. All outputs of DUT must be declared as wire variable in TB

module tb();

reg clk = 0;

always #5 clk = ~clk;

initial begin
#500;
$finish;
end

endmodule
