module mux 
(
input a,b,
input sel,
output reg x
);
 
always@(*)
begin
 
 if(sel == 1'b0)
   begin
   x = a;
   end  
 else
  begin
   x = b;
  end   
end
 
endmodule