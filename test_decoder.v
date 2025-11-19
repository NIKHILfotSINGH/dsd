`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2025 20:36:25
// Design Name: 
// Module Name: test_decoder
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


module test_decoder(

    );
    reg a, b;
wire d0, d1, d2, d3;

decoder uut(a, b, d0, d1, d2, d3);

initial begin;

a = 0;
b = 0;
#10

a = 0;
b = 1;
#10

a = 1;
b = 0;
#10

a = 1;
b = 1;
#10

$finish;

end 
    
    

endmodule
