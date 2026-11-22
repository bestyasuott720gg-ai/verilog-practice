`timescale 1ns/1ps
 module adder111_tb;
	reg [3:0] a,b;
	reg cin;
	wire [3:0] sum;
	wire cout;
			adder111 uut(a,b,cin,sum,cout);
initial begin
		$dumpfile("wave.vcd");
		$dumpvars(0,adder111_tb);
		a=4'd15 ;b=4'd15 ; cin=0;#10;
		$display("a=%d b=%d cin=%b sum=%d cout=%b", a, b, cin, sum, cout);
           	a=4'd0 ;b=4'd0;cin=0;#10;
		$display("a=%d b=%d cin=%b sum=%d cout=%b", a,b,cin,sum,cout);
		$finish;
	end
endmodule
 
	