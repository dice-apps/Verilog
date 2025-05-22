//2:1 Multiplexer with 1-bit inputs and output
//input  A0(1bit(), B0(1bit), SE
//output Y

//RTL modelling is used

module mux_2to1(
    input wire a, //input A // When the input is of two bits to A, a vector type wire is used as; input wire [2:0]a,
    input wire b, //input B
    input wire se, //start // If we need to use another input as C, se should include two bits as to vary the selection accoridng to the number of inputs
    input wire en, //1/0-Enables/disables chio
    output wire y //output
);

    assign y = se ? a : b;
    assing y = en ? (se ? a : b) : 1'bz;

endmodule