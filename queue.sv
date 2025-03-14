module queue_data();

  // Initialize the queue with 10 elements
  integer queue[$] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9};
  integer i;

  initial begin
    $display("Initial value of queue:");
    print_queue;

    // Insert a new element at the beginning of the queue
    queue.push_front(10);
    $display("New element added using push_front:");
    print_queue;

    // Insert a new element at the end of the queue
    queue.push_back(11);
    $display("New element added using push_back:");
    print_queue;

    // Insert a new element at index 5
    queue.insert(5, 12);
    $display("New element added using insert(index, value):");
    print_queue;

    // Remove the first element using pop_front
    i = queue.pop_front();
    $display("Element removed using pop_front: %0d", i);
    print_queue;

    // Remove the last element using pop_back
    i = queue.pop_back();
    $display("Element removed using pop_back: %0d", i);
    print_queue;

    // Delete the element at index 4
    queue.delete(4);
    $display("Element deleted at index 4:");
    print_queue;

    // Delete all elements from the queue
    queue.delete();
    $display("All elements deleted:");
    print_queue;

    #1 $finish;
  end

  // Task to print the current state of the queue
  task print_queue;
    integer i;
    $write("Queue contains:");
    for (i = 0; i < queue.size(); i++) begin
      $write(" %0d", queue[i]);
    end
    $write("\n");
  endtask

endmodule
