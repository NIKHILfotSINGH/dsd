`timescale 1ns/1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2025 20:16:19
// Design Name: 
// Module Name: test_pencoder
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


module test_pencoder(

    );
    
reg d0, d1, d2, d3;
wire y0, y1 , v;

priority_encoder uut(d0, d1, d2, d3, y0, y1, v);

initial begin

d0 = 0; d1 =0; d2= 0; d3 = 0;
#10
d0 = 1; d1 =0; d2= 0; d3 = 0;
#10
d0 = 1; d1 =1; d2= 0; d3 = 0; // dont care for 0
#10
d0 = 1; d1 =0; d2= 1; d3 = 0; // dont care for 0 and 1
#10
d0 = 0; d1 =1; d2= 0; d3 = 1; // dont care for 0 1 and 2
#10
$finish;
end
endmodule
