function HaarTransformationMatrix=ConstructHaarWaveletTransformationMatrix(WidthOfSquareMatrix)
n=WidthOfSquareMatrix; % copy the parameter
% check input parameter and make sure it's the power of 2
Level=log2(n);
if 2^Level<n, error('please ensure the value of input parameter is the power of 2');end 
%Initialization
H=[1];
NC=1/sqrt(2);%normalization constant
LP=[1 1]; 
HP=[1 -1];
% iteration from H=[1] 
for i=1:Level
    H=NC*[kron(H,LP);kron(eye(size(H)),HP)];
end
HaarTransformationMatrix=H;