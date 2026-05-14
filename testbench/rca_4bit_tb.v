module rca_4bit_tb;

reg  [3:0] a, b;
reg        cin;
wire [3:0] sum;
wire       cout;

rca_4bit uut (
    .a(a),
    .b(b),
    .cin(cin),
    .sum(sum),
    .cout(cout)
);

initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, rca_4bit_tb);

    cin = 0;

    a = 4'd0;  b = 4'd0;  #10;
    a = 4'd1;  b = 4'd1;  #10;
    a = 4'd7;  b = 4'd8;  #10;
    a = 4'd15; b = 4'd1;  #10;
    a = 4'd5;  b = 4'd3;  #10;
    a = 4'd10; b = 4'd6;  #10;
    a = 4'd9;  b = 4'd9;  #10;
    a = 4'd4;  b = 4'd11; #10;
    a = 4'd2;  b = 4'd13; #10;
    a = 4'd15; b = 4'd15; #10;

    $finish;
end

initial begin
    $monitor("a=%0d b=%0d cin=%0d | sum=%0d cout=%0d",
              a, b, cin, sum, cout);
end

endmodule