`timescale 1ns / 1ps



module tb_Keyboard();

reg clk;
reg rst;
reg key_data;
reg key_clk;
wire [7:0] keyboard;
wire valid;
wire [7:0] keyboard_mem ;

task transmite_bit;
    input bit;
    begin
        #5 key_data=bit;
        #5 key_clk=0;
        #5 key_clk=1;
    end
endtask        
        
        

         Keyboard_Data key_top(.clk(clk),
                           .rst(rst),
                           .key_data(key_data),
                           .key_clk(key_clk),
                           .keyboard(keyboard),
                           .valid(valid),
                           .keyboard_mem1(keyboard_mem));
                           
    initial begin
    clk=0;
    forever begin
        #1 clk = ~clk ;
    end
    end
    
    initial begin
    rst=1;
    key_data=1;
    key_clk=1;
    #10 rst=0;
    #50 transmite_bit(0);
    transmite_bit(1);
    transmite_bit(0);
    transmite_bit(1);
    transmite_bit(1);
    transmite_bit(1);
    transmite_bit(0);
    transmite_bit(0);
    transmite_bit(0);
    transmite_bit(1);
    transmite_bit(1);
    #50 transmite_bit(0);
    transmite_bit(1);
    transmite_bit(1);
    transmite_bit(0);
    transmite_bit(0);
    transmite_bit(0);
    transmite_bit(1);
    transmite_bit(0);
    transmite_bit(0);
    transmite_bit(1);
    transmite_bit(1);
    #50transmite_bit(0); // start bit 2
    transmite_bit(0);
    transmite_bit(0);
    transmite_bit(0);
    transmite_bit(0);
    transmite_bit(1);
    transmite_bit(1);
    transmite_bit(1);
    transmite_bit(1);
    transmite_bit(1);
    transmite_bit(1);
    #50 transmite_bit(0);
    transmite_bit(1);
    transmite_bit(0);
    transmite_bit(1);
    transmite_bit(1);
    transmite_bit(1);
    transmite_bit(0);
    transmite_bit(0);
    transmite_bit(0);
    transmite_bit(1);
    transmite_bit(1);
    
    end
    
    initial begin
    #1000 $finish ; 
    end
    
                         
endmodule

