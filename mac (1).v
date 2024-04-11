module mac#(parameter parallel=1)(
	input[parallel*8-1:0] din_a,
	input[parallel*8-1:0] din_b,
	output [15:0] dout,

	input clk,
	input rst_b,

	input start,
	output done
);

//implement your code below
	reg	[1:0] next_state, current_state;
	reg [15:0] sum_reg;
	reg [parallel*8-1:0] a_reg, b_reg;
	reg [5:0] process_value;
	reg done_reg;
	reg [15:0] add[0:parallel-1];
	genvar i;

	localparam 
		IDLE = 2'b00,
		PROCESS = 2'b01,
		NEXT = 2'b10,
		DONE = 2'b11;	

	generate
		for(i=0;i<parallel*8;i=i+1)begin:input_registers
			always @ (posedge clk or negedge rst_b)begin
				if(~rst_b)begin
					a_reg[i] <= 1'b0;
					b_reg[i] <= 1'b0;
				end
				else begin
					if(current_state==PROCESS)begin
						a_reg[i] <= din_a[i];
						b_reg[i] <= din_b[i];
					end
					else if(current_state==DONE)begin
						a_reg[i] <= 1'b0;
						b_reg[i] <= 1'b0;
					end
				end
			end
		end
	endgenerate

	always @ (*)begin
		add[0] = a_reg[7:0] * b_reg[7:0];
	end

	generate
		if(parallel>1)begin:parallel_mac
			for(i=1;i<parallel;i=i+1)begin:mac_parallel
				always @ (*)begin
					add[i] = add[i-1] + a_reg[(i+1)*8-1:i*8] *b_reg[(i+1)*8-1:i*8];
				end
			end
		end
	endgenerate
		

	always @ (posedge clk or negedge rst_b)begin
		if(~rst_b)begin
			sum_reg <= 15'h0;
		end
		else begin
			if(current_state==PROCESS || current_state==NEXT)begin
				sum_reg <= sum_reg + add[parallel-1];
			end
			else if(current_state==DONE)begin
				sum_reg <= 15'h0;
			end
		end
	end

	always @ (posedge clk or negedge rst_b)begin
		if(~rst_b)begin
			current_state <= IDLE;
		end
		else begin
			current_state <= next_state;
		end
	end
	always @ (*) begin
		case(current_state)
			IDLE:begin
				if(start)begin
					next_state <= PROCESS;
				end
				else begin
					next_state <= IDLE;
				end
			end
			PROCESS:begin
				if(process_value>=5'd25)begin
					next_state <=  NEXT;
				end
				else begin
					next_state <= PROCESS;
				end
			end
			NEXT:begin
				next_state <= DONE;
			end
			DONE:begin
				next_state <= IDLE;
			end
			default:begin
				next_state <= IDLE;
			end
		endcase
	end

	always @ (posedge clk or negedge rst_b) begin
		if(~rst_b)begin
			done_reg <= 1'b0;
			process_value <= 5'h0;
		end
		else begin
			case(next_state)
				IDLE:begin
					done_reg <= 1'b0;
					process_value <= 5'h0;
				end
				PROCESS:begin
					done_reg <= 1'b0;
					if(process_value <25)begin
						process_value <= process_value + parallel;
					end
				end
				NEXT:begin
					done_reg <= 1'b0;
					process_value <= process_value;
				end
				DONE:begin
					done_reg <= 1'b1;
					process_value <= 5'h0;
				end
			endcase
		end
	end

	assign done = done_reg;
	assign dout = sum_reg;
endmodule
