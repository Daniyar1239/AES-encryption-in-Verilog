module testbench();

integer fptr;
integer fptr1;
integer fptr2;
reg [127:0] testData;
reg [127:0] keyIn;
wire [127:0] output_data;
integer step=0;


initial
begin
fptr = $fopen("testData.txt","r");
fptr1 = $fopen("outputData.txt","w");     
begin
$fscanf(fptr,"%h",testData);
end
 $fclose(fptr);
end


initial
begin
fptr2 = $fopen("keyIn.txt","r"); 
begin
$fscanf(fptr,"%h",keyIn);
end
$fclose(fptr2);
end


always @(*)
begin
begin
$fwriteh(fptr1,output_data,"\n");
step = step + 1;
end
if(step == 2)
begin
$fclose(fptr1);
$stop;
end
end

AesCore aE(
.i_data(testData),
.keyIn(keyIn),
.o_data(output_data)
);


endmodule