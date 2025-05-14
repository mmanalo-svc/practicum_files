`timescale 1ns / 1ps

/*
1) When user apply active high to reset counter output must be 4'b0000 
2) Counter should work when Reset is having value of Active Low 
3) When user apply active high to load it should start counting from 
   the user loaded value 
4) If user have not loaded any value then it should start counting from 0
*/

module down_counter(
    input clk,rst,ld,
    input [3:0] ldvalue,
    output [3:0] dout
    );
    
reg [3:0] temp;

initial begin
temp = 0;
end
 
//always@(posedge clk) /////////synchronus reset
//or
always@(posedge clk, posedge rst) /////////////asynchronus reset
begin
 if(rst == 1'b1)
   begin
   temp <= 4'b0000;
   end
 else 
     begin
       if(ld == 1'b1)
         temp <= ldvalue;
       else
         temp <= temp - 1;
     end
end
 
assign dout = temp;
 
endmodule
