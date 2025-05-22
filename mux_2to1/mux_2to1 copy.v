//2:1 Multiplexer with 2-bit inputs and output
//input  A0(2bit(), B0(2bit), SE
//output Y

//RTL modelling is used

module mux_2to1(
    input wire a,
    input wire se,
    input wire en,
    output wire y
);

    assign y = se ? a : b;
    assing y = en ? (se ? a : b) : 1'bz;

endmodule