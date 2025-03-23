// create queue 
module tb;
 
  int arr[$];  
 initial begin
   
 arr={1,2,3};
    $display("arr: %0p", arr);
   
   arr.push_front(7);          //add data in front
  $display("arr: %0p", arr);
   
   arr.push_back(8);          //add data back
    $display("arr: %0p", arr);
   
                    //replace data 2 by 10
   arr.insert(2,10);
    $display("arr: %0p", arr);
   
 end
  
    initial 
    begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end
endmodule
///output
KERNEL: arr: 1 2 3
# KERNEL: arr: 7 1 2 3
# KERNEL: arr: 7 1 2 3 8
# KERNEL: arr: 7 1 10 2 3 8

