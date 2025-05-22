// 1. RTL modelling

// Normally the module name and the file name are the same
module comp1b(
    input wire a,
    input wire b,
    output wire c
);
wire e,f;
assign e = ~a & ~b;
assign f = a & b;
assign c = e | f;

// can also use
// assign z = (~x & ~y) | (x & y);



endmodule



/*// 2. Gate Level Modeling

module comp1b(
    input x,
    input y,
    output z
);

wire xay, nx, ny, nxany; // a shows AND, n shows NOT

and(xay, x, y);
not(nx, x);


endmodule
*/


/* 3. Behavioural Modeling
module mynotgate(
    input wire a,
    input wire b,
    output reg c
);

always @(*) begin // always is used normally in sequential ccts, state machines
    if(a) nota = 0; // if(a == postive), then set nota == 0
    else nota = 1; // else set nota to 1
  
end

endmodule
*/