module test(
    output wire [7:0] led
);

    var bit [1:0] key;
    var bit clock_50 = 0;

    shifter sh(.key(key), .led, .clock_50(clock_50));

    initial begin
        repeat (100) begin
            #10000 clock_50 = ~clock_50;
        end
    end

    initial begin
        key = 2'b00;
        #25000 assert (led == 8'b00000000);
        #100000 key = 2'b01;
        #25000 assert (led == 8'b00000001);
        #3000 key = 2'b00;
        #25000 assert (led == 8'b00000001);
        #39000 key = 2'b10;
        #25000 assert (led == 8'b00000010);
        #12000 key = 2'b11;
        #25000 assert (led == 8'b00000010);
        #8000 key = 2'b00;
        #25000 assert (led == 8'b00000010);
    end

endmodule
