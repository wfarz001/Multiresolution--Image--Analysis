I=imread('4.1.06.tiff'); %Read in image

%imshow(I); title ('Original Image')%Display image
%in_img = imresize(I,[128 128]);
in_img = rgb2gray(I); 
in_img = im2double(in_img); 
[m n]=size(in_img);

imgn=zeros(m,n);
for i=0:m/2:m/2
for j=0:n/2:n/2
 [LL LH HL HH]=haar_dwt2D(in_img(i+1:i+m/2,j+1:j+n/2)); %Decomposing four images after a layer of decomposition
 imgn(i+1:i+m/2,j+1:j+n/2)=[LL LH;HL HH];  
 
end
end
imshow(imgn)