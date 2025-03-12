//Create two arrays of reg type capable of storing 15 elements. Use $urandom function to add 15 values to the array. Print the value of all the elements of the array on a single line.
module random_array_tb;

  reg [7:0] array1[15]; 
  reg [7:0] array2[15]; 

  initial begin
   
    for (int i = 0; i < 15; i++) begin
      array1[i] = $urandom % 256; 
      array2[i] = $urandom % 256;
    end

   
    $write("Array 1: ");
    for (int i = 0; i < 15; i++) begin
      $write("%0d ", array1[i]);
    end
    $write("\n");

   
    $write("Array 2: ");
    for (int i = 0; i < 15; i++) begin
      $write("%0d ", array2[i]);
    end
    $write("\n");

    #10; 
    $finish;
  end

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, random_array_tb);
  end

endmodule
///output
# KERNEL: Array 1: 186 94 28 83 111 254 85 249 54 126 136 77 80 210 231 
# KERNEL: Array 2: 98 124 85 152 188 111 34 190 214 211 223 167 44 49 15 
