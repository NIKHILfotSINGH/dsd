`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2025 20:57:24
// Design Name: 
// Module Name: test_half_subtractor
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


module test_half_subtractor(

    );
 reg a, b;
wire d, Borrow;

half_subtractor uut(a, b, d, Borrow);

initial begin

a = 0; b = 1; #10
a = 0; b = 0; #10
a = 1; b = 1; #10
a = 1; b = 0; #10

$finish;

end 
endmodule
