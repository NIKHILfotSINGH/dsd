`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2025 21:47:57
// Design Name: 
// Module Name: test_d_flip_flop
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


module test_d_flip_flop(

    );
    reg d, clk;
wire q, qbar;

d_flip_flop uut(d, clk, q, qbar);

initial begin

clk = 0;
forever #5 clk = ~clk;

end

initial begin

d = 0; #10
d = 1; #10


$finish;

end
endmodule
