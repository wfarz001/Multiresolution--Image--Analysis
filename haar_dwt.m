function [L H] = haar_dwt (f)%picture is 2 ^ n *2^n-type
n=length(f);
n=n/2;
L=zeros(1,n);   %Low frequency component
H=zeros(1,n);   %High frequency component
for i=1:n
  L(i)=(f(2*i-1)+f(2*i))/sqrt(2);
  H(i)=(f(2*i-1)-f(2*i))/sqrt(2);
end

end