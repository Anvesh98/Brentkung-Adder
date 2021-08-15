module ripplecarry ( a,b,cin,sum ,carry_out);

input [31:0] a,b;
input cin;
output carry_out;

output [31:0] sum;
	
wire [32:0] c;
assign c[0]=cin;
genvar i;



generate
for (i=0;i<=31;i=i+1)
begin :a1
fulladder f1(sum[i] , c[i+1] , a[i],b[i],c[i]);
end
endgenerate

assign carry_out = c[32];