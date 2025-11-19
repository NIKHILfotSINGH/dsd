`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2025 22:09:33
// Design Name: 
// Module Name: test_counter
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


module test_counter(

    );
    reg clk, RESET;
wire q0, q1;

counter uut(clk, RESET, q0, q1);

initial begin
clk = 0;
forever #5 clk = ~clk;
end

initial begin 
RESET = 0; #10
RESET = 1; #100

$finish;
end
endmodule
