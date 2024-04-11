`timescale 1ns/10ps

module mac_tb();
	parameter parallel = 1;
	reg[parallel*8-1:0] din_a;
	reg[parallel*8-1:0] din_b;
	wire[15:0] dout;
	reg clk;
	reg rst_b;
	reg start;
	wire done;

	integer i;
	genvar j;

	reg [7:0] din_a_base[0:24];
	reg [7:0] din_b_base[0:24];


	mac DUT(
		.din_a(din_a),
		.din_b(din_b),
		.dout(dout),

		.clk(clk),
		.rst_b(rst_b),

		.start(start),
		.done(done)
	);

	initial begin
		clk = 0;
		rst_b = 0;
		start = 0;
		i = 0;
		$readmemh("/bgfs/ece2193-2024s/yul230/lab02_working/data_a.txt", din_a_base);
		$readmemh("/bgfs/ece2193-2024s/yul230/lab02_working/data_b.txt", din_b_base);


		#15
		rst_b = 1;
		
		#10
		start = 1;

		#5000
		$display("Done signal is not 1 after %3d clock cycles. Simulation terminated!" , $time/10 - 2);
		$stop();
	end

	always #5 clk = ~clk;

	generate
	for(j=0;j<parallel;j=j+1)begin
		initial begin
			din_a[(j+1)*8-1:j*8] = din_a_base[j];
			din_b[(j+1)*8-1:j*8] = din_b_base[j];
		end
		always @ (posedge clk)begin
			if(start)begin
				#10
				if(i<25) i <= i+parallel;
				din_a[(j+1)*8-1:j*8] <= (i+j>24)?8'h0:din_a_base[i+j]; 
				din_b[(j+1)*8-1:j*8] <= (i+j>24)?8'h0:din_b_base[i+j];
			end
		end
	end
	endgenerate

	always @ (posedge done)begin
		if(dout == 16'h204C)begin
			$display("Simulation passed!");
		end
		else begin
			$display("Simualtion Failed! Final Output is Wrong!");
		end
		#15
		$stop();
	end
	initial
		$sdf_annotate("/bgfs/ece2193-2024s/swm58/lab03/mac/mac.dc.sdf", DUT);
endmodule

	
