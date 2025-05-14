/*
Refer Ring Counter Circuit and Implement 4-bit Ring Counter 
such that MSB bit is set to 1 (HIGH) instead of LSB. 
so sequence of values at Ring counter output must be 1000, 0100, 0010, 0001.
*/
module ring_counter(
    input clk,rst,
    output reg [3:0] doutr
    );
    
always@(posedge clk)
begin
if(rst == 1'b1)
begin
doutr <= 4'b1000;
end
else
begin
doutr[0] <= doutr[1];
doutr[1] <= doutr[2];
doutr[2] <= doutr[3];
doutr[3] <= doutr[0];
end
end
    
endmodule
