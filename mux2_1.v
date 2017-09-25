`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.09.2017 17:05:33
// Design Name: 
// Module Name: mux2_1
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

// ESTE MUX SE ENCARGA DE QUE SI SEL ES 0 A ES 0 Y SI SEL ES 1 B ES 0

module mux2_1(
O,
A,
B,
sel
);

output O;
input A,B,sel;

not #(50) not1(nsel,sel);
and #(50) and1(O1,A,nsel); 
and #(50) and2(O2,B,sel);
or #(50) or2(O,O1,O2);

endmodule
