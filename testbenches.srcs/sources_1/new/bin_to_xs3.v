module bin_to_xs3
(
input  [3:0] a,
output reg [4:0] y
);
 
always@(*)
begin
y = {1'b0,a} + 5'b00011;
end
 
endmodule