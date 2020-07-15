//design module for 1 bit
module obfa(sum,cout,a,b,cin);
input a,b,cin;
output sum,cout;
wire x,y,z;
xor x1(x,a,b);
xor x2(sum,x,cin);
and a1(y,x,cin);
and a2(z,a,b);
or o1(cout,y,z);
endmodule

//design module for 4 bit adder
module fbfa(cout,sum,a,b,cin);
input [3:0]a,b;
input cin;
output [3:0]sum;
output cout;
wire c1,c2,c3;
obfa fa1(sum[0],c1,a[0],b[0],cin);
obfa fa2(sum[1],c2,a[1],b[1],c1);
obfa fa3(sum[2],c3,a[2],b[2],c2);
obfa fa4(sum[3],cout,a[3],b[3],c3);
endmodule

//stimulus module
module hassan;
reg [3:0]a,b;
reg cin;
wire [3:0]sum;
wire cout;
fbfa f1(cout,sum,a,b,cin);
initial
begin
a=1'b1; b=2'b10; cin=1'b0;
#20
a=4'b1010; b=4'b1011; cin=1'b1;
#20
a=4'b1001; b=4'b0110; cin=1'b1;
#20
$finish;
end
endmodule