`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.09.2017 16:32:09
// Design Name: 
// Module Name: adder
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


module adder(
suma,
cout,
a,
b,
cin
 );
 
 //suma es a xor b xor cin
 //cout o carryout es a por b sumado a cin por a sumado b
input   a,b,cin;
output  cout,suma;
xor #(50) (suma,a,b,cin);
and #(50) and1(c1,a,b);
or #(50) or1(c2,a,b);
and #(50) and2(c3,c2,cin);
or #(50) or2(cout,c1,c3);
 
endmodule


