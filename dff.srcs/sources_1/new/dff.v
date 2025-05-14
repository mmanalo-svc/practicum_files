module dff (
    input clk, din, rst,
    output reg q, qbar
);
 
    always@(posedge clk)
    begin
        if (rst == 1'b1)
            q <= 0;
        else
            q <= din;
            qbar <= ~din;
    end
endmodule