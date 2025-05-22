// Using RTL

module intmwire(
    input wire a,
    input wire b,
    input wire c,
    output wire p,
    output wire q
);
wire intmwire; // Here this is an additional variable. Which is neither an input nor an output
assign intmwire = a & b;
assign p = intmwire & c;
assign q = intmwire | c;


// assign z = (~x & ~y) | (x & y);



endmodule