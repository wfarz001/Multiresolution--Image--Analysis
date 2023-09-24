function [LL LH HL HH]=haar_dwt2D(img)
[m n]=size(img);
for i=1:m       %Decompose each row
 [L H]=haar_dwt(img(i,:));
 img(i,:)=[L H];
end
 for j=1:n       %Decompose each column
  [L H]=haar_dwt(img(:,j));
  img(:,j)=[L H];
end
%Original decomposition should not add mat2gray, but in order to have a good display effect, add it.
LL=mat2gray(img(1:m/2,1:n/2));          %Row is low frequency  
LH=mat2gray(img(1:m/2,n/2+1:n));        %High frequency
HL=mat2gray(img(m/2+1:m,1:n/2));        %High frequency column low frequency
HH=mat2gray(img(m/2+1:m,n/2+1:n));      %Row is high frequency
   
end