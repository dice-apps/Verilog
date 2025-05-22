module testnotGate(
    input wire a,
    output wire nota
);

    assign nota = ~a;

endmodule