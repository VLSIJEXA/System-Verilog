module mux_2to1 (
    input  logic sel,         
    input  logic [7:0] in0,  
    input  logic [7:0] in1,  
    output logic [7:0] out   
);

  always_comb begin
    out = sel ? in1 : in0; 
  end

endmodule
