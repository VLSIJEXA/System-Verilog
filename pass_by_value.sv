module parity_calculator;

  reg [7:0] data;
  reg parity_out;
  integer i;

 
  function parity;
    input [7:0] data;
    begin
      parity = ^data;  
  endfunction

  initial begin
    $display("Data        | Parity");
    $display("-------------------------");

   
    for (i = 250; i < 256; i = i + 1) begin
      #5 data = i[7:0];  
      parity_out = parity(data);
      $display("%b (%0d)   | %b", data, data, parity_out);  

    #10 $finish;
  end

endmodule
