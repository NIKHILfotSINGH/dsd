`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2025 20:52:09
// Design Name: 
// Module Name: test_half_adder
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


module test_half_adder(

    );
    reg a, b;
wire s, c;

half_adder uut(a, b, s, c);

initial begin

a = 0; b = 1; #10
a = 0; b = 0; #10
a = 1; b = 1; #10
a = 1; b = 0; #10

$finish;

end
endmodule
