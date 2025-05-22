//4:1 Multiplexer with 1-bit inputs and output
//input  A0(1bit(), B0(1bit), SE
//output Y

//Using Behavioural Modelling

module mux_4to1(
    output reg[2:0] y; //output]
);

    always @(*) begin //star represents any signal
        if(en)
            case (se)
                2'b00: y = a;
                2'b01: y = b;
                2'b10: y = c;
                2'b11: y = d;
                default: y = 2'bzz; 
            endcase
        
    end
    else 
        y = 2'bzz; //Z - High impedance state (disconnected)

endmodule