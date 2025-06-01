// This is similar to a parameterized d flip flop, with "width" no: of bits

module pipo_reg #(parameter width = 8)(
    input wire clk,
    input wire load, //similar to enable
    input wire [(width - 1):0]data_in, //similar to d in dflipflop
    input wire reset,
    output reg [(width - 1):0]data_out //similar to q in dflipflop
);

always @ (posedge clk or posedge reset) begin
    if(reset) begin
      data_out <= {width{1'b0}}; // replication operator
    end

    else if(load) begin
      data_out <= data_in;
    end
end

endmodule