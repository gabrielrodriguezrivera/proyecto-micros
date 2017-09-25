`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.09.2017 16:29:39
// Design Name: 
// Module Name: addsub
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


module addsub(
out,
cout,
a,
b,
cin,
selec
);

input a,b,cin,selec;
output out,cout; 
not #(50) not1(notb,b);
mux21 mux1(b1,b,notb,select);

adder adder1(out,cout,a,b1,cin);

endmodule




