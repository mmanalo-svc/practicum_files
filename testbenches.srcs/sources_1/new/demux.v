/*
Design 1:4 Demux in Verilog and write the Testbench for the same. 
Assume input and output data width of single bit, 
add enable pin to the system if necessary.
*/

module demux(
    input i,
    input [1:0] sel,
    output reg [3:0] y
    );
    
always@(*)
begin
if(sel[1] == 0 && sel[0] == 0)
y = {1'b0,i} + 4'b0000;
else if(sel[1] == 0 && sel[0] == 1)
y = {1'b0,i} + 4'b0001;
else if(sel[1] == 1 && sel[0] == 0)
y = {1'b0,i} + 4'b0011;
else if(sel[1] == 1 && sel[0] == 1)
y = {1'b0,i} + 4'b0111;
else
y = 4'b0000;
end

endmodule