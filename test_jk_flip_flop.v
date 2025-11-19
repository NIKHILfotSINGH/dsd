`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2025 21:42:03
// Design Name: 
// Module Name: test_jk_flip_flop
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


module test_jk_flip_flop(

    );
    reg j, k, clk, RESET;
wire q;

jk_flip_flop uut(j, k, clk, RESET, q);

initial begin

clk = 0;
forever #5 clk = ~clk;

end

initial begin
 RESET = 1; j = 0; k = 0;
    #12 RESET = 0;

    j = 0; k = 0; #10
    j = 0; k = 1; #10
    j = 1; k = 0; #10
    j = 1; k = 1; #10

$finish;
end
endmodule
