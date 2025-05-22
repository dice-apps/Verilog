// using RTL

module bus_signals(
    input wire [3:0] a,
    input wire [3:0] b,
    input wire c,
    output wire [3:0] p
);
/*
wire [3:0] cbus;
assign cbus = {4{c}};
assign p = (a & (~cbus))|(b & cbus);
*/

p[2] = 
p[3] = (c & b[3]) | (~c & a[3]);

// assign z = (~x & ~y) | (x & y);



endmodule