`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2025 21:25:52
// Design Name: 
// Module Name: test_sr_flip_flop
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


module test_sr_flip_flop(

    );
    reg s, r, clk;
wire q, qbar, sg, rg;

sr_flip_flop uut(s, r, clk, q, qbar);

initial begin

clk = 0;
forever #5 clk = ~clk;

end

initial begin

s = 0; r = 0; #10
s = 0; r = 1; #10
s = 1; r = 0; #10
s = 1 ; r = 1; #10

$finish;

end
endmodule
