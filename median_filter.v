// =============================================================================
// Filename: median_filter.v
// Author: Lam King Sum Sam, Tse, Ming Fung Alfred
// Email: kslamaf@connect.ust.hk, mfatse@connect.ust.hk
// Affiliation: Hong Kong University of Science and Technology
// -----------------------------------------------------------------------------
//
// This file implements a the top level architecture of a 1-D median filter, which 
// the architecture is classified as a non-recursive sorting-based networks that 
// process the input samples sequentially word-by-word. It maintains sorting of 
// samples from the previous position of the sliding window (size of N), positioning 
// only the incoming sample to the correct rank.
// Each unit_cell module represents a single storage of a ranked sample.
//
// =============================================================================

module median_filter #(
	parameter R_WIDTH = 8,
	parameter N = 5,
	parameter P_WIDTH = $clog2(N+1))
	(
	input				srst,
	input				clk,

	input  wire [R_WIDTH-1:0]	X,
	output wire [R_WIDTH-1:0]	Y
	);

wire [R_WIDTH-1:0] 	R_out [N+1:0];
wire [P_WIDTH-1:0] 	P_out [N+1:0];
wire			Z_out [N:0];
wire			T_out [N:0];

reg  [P_WIDTH:0]	cnt;
wire                    incre_en [N-1:0];

assign R_out[0] = R_out[1];
assign P_out[0] = P_out[1];

assign R_out[N+1] = {R_WIDTH{1'b0}};
assign P_out[N+1] = {P_WIDTH{1'b0}};

assign Z_out[0] = 1'b0;
assign T_out[0] = 1'b0;

always@(posedge clk)
begin
	if (srst)
		cnt <= {P_WIDTH{1'b0}};
	else if (cnt < (N+1)*2)
		cnt <= cnt + 1;
end

genvar i;
generate
	for(i=1;i<=N;i=i+1) begin: unit_cell_gen
		unit_cell #(
			.R_WIDTH 		(R_WIDTH),
			.N 			(N),
			.P_WIDTH		(P_WIDTH))
		unit_cell(
			.srst			(srst),
			.clk			(clk),
			.incre_en		(incre_en[i-1]),
			.X			(X),
			.R_from_plus1		(R_out[i+1]),
			.R_from_minus1		(R_out[i-1]),
			.P_from_plus1		(P_out[i+1]),
			.P_from_minus1		(P_out[i-1]),
			.Z_from_minus1		(Z_out[i-1]),
			.T_from_minus1		(T_out[i-1]),
			.R_to_plus1minus1	(R_out[i]),
			.P_to_plus1minus1	(P_out[i]),
			.Z_to_plus1		(Z_out[i]),
			.T_to_plus1		(T_out[i])
		);
		
		assign incre_en[i-1] = cnt[P_WIDTH:0] > ((i-1) << 1);
	end
endgenerate

assign Y = R_out[(N+1)/2];

endmodule

// =============================================================================
// Filename: unit_cell.v
// Author: Tse, Ming Fung Alfred
// Email: mfatse@connect.ust.hk
// Affiliation: Hong Kong University of Science and Technology
// -----------------------------------------------------------------------------
//
// This file implements a unit cell of an efficient 1-D median filter. 
// Each unit_cell module represents a single storage of a ranked sample.
//
// =============================================================================

module unit_cell #(
	parameter R_WIDTH = 8,
	parameter N = 5,
	parameter P_WIDTH = $clog2(N+1))
	(
	input				srst,
	input				clk,

	input				incre_en,
	input [R_WIDTH-1:0]		X,
	input [R_WIDTH-1:0]		R_from_plus1,
	input [R_WIDTH-1:0]		R_from_minus1,
	input [P_WIDTH-1:0]		P_from_plus1,
	input [P_WIDTH-1:0]		P_from_minus1,
	input 				Z_from_minus1,
	input				T_from_minus1,

	output wire [R_WIDTH-1:0]	R_to_plus1minus1,
	output wire [P_WIDTH-1:0]	P_to_plus1minus1,
	output wire			Z_to_plus1,
	output reg			T_to_plus1
	);

reg [R_WIDTH-1:0]	R;
reg [P_WIDTH-1:0]	P; 

reg [R_WIDTH-1:0]	R_next;
reg [P_WIDTH-1:0]	P_next;
wire			T;
wire			Z;
reg			s1;
reg			s2;
reg			bit_cnt;

always@(posedge clk)
begin
	if (srst)
		R <= {R_WIDTH{1'b0}};
	else if (!bit_cnt & incre_en) begin
		if (Z_to_plus1)
			R <= R_next;
	end			
	else if (bit_cnt)
		R <= R_next;
end

always@(posedge clk)
begin
	if (srst)
		P <= {P_WIDTH{1'b0}};
	else if (!incre_en)
		P <= 0;
	else if (!bit_cnt & incre_en) begin
		if (Z_to_plus1)
			P <= P_next + 1;
		else
			P <= P + 1;
	end
	else
		P <= P_next;
end

always@(posedge clk)
begin
	if (srst)
		bit_cnt <= 1'b0;
	else
		bit_cnt <= !bit_cnt;
end

assign T = (R < X);
assign Z = !bit_cnt & (P == N-1);

assign Z_to_plus1 = Z | Z_from_minus1;

always@(*) begin
	case({Z_to_plus1, T_from_minus1, T})
		3'b000: 		{T_to_plus1,s1,s2} = 3'b000;
		3'b001: 		{T_to_plus1,s1,s2} = 3'b101;
		3'b010,3'b011:  	{T_to_plus1,s1,s2} = 3'b110;
		3'b100:			{T_to_plus1,s1,s2} = 3'b011;
		3'b101,3'b110,3'b111:	{T_to_plus1,s1,s2} = 3'b111;
	endcase
end

// R_next generation
always@(*) begin
	case({s1,s2})
		2'b00: R_next = R;		// R remains unchanged
		2'b01: R_next = X;		// Loads X to R
		2'b10: R_next = R_from_minus1;	// Shifts Right
		2'b11: R_next = R_from_plus1;	// Shifts Left
	endcase
end

// P_next generation
always@(*) begin
	case({s1,s2})
		2'b00: P_next = P;		// P remains unchanged
		2'b01: P_next = {P_WIDTH{1'b0}};// Clears counter
		2'b10: P_next = P_from_minus1;	// Shifts Right
		2'b11: P_next = P_from_plus1;	// Shifts Left
	endcase
end

assign R_to_plus1minus1 = R;
assign P_to_plus1minus1 = P;

endmodule
