I=imread('4.1.06.tiff'); %Read in image

%imshow(I); title ('Original Image')%Display image

%in_img = imresize(I,[1024 1024]);
in_img = rgb2gray(I);   % Coloured to Gray Conversion
in_img = im2double(in_img); % Converting the Img Class to Double
%[in_colm, in_row] = size(in_img); % Size of input image

[a,h,v,d] = haart2(in_img,8);
imshow(h{1})