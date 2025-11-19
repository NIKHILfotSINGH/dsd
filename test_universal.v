`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2025 21:14:05
// Design Name: 
// Module Name: test_universal
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


module test_universal(

    );
    reg a, b, m;
wire cout, s;

universal uut(a, b, m, cout, s);

initial begin

a=0; b=0; m=0; #10   // 0 + 0
a=1; b=1; m=0; #10   // 1 + 1
a=1; b=1; m=1; #10   // 1 - 1
a=1; b=0; m=1; #10   // 1 - 0


$finish;

end 
endmodule
