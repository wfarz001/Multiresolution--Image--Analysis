I=imread('4.1.06.tiff'); %Read in image
in_img = rgb2gray(I); 
figure;
subplot(1,2,1);
imshow(in_img); title ('Original Image')%Display image
%in_img = imresize(I,[128 128]);
%in_img = rgb2gray(I);   % Coloured to Gray Conversion
in_img = im2double(in_img); % Converting the Img Class to Double
[in_colm, in_row] = size(in_img); % Size of input image

%Performing Transformation
sqrt2 = sqrt(2);
out_img = zeros(in_colm,in_row);
% Computing for Max Level in our case 256 ie  Levels
lvl_count = 1;
while (lvl_count*2 <= in_colm) % For colm Ops
    lvl_count = lvl_count*2;
end
%  Transformation Along Colms and downsampling by 2
while (1 < lvl_count) 
    lvl_count = floor(lvl_count/2);  
    
    %  haar_matrix = 1/sqrt(2)*[1 1; 1 -1] implementation
    out_img(1:lvl_count, :) = (in_img(1:2:2*lvl_count-1, :) + in_img(2:2:2*lvl_count, :))/sqrt2;
    out_img(lvl_count+1:lvl_count+lvl_count, :) = (in_img(1:2:2*lvl_count-1, :) - in_img(2:2:2*lvl_count, :))/sqrt2;
    in_img(1:2*lvl_count, :) = out_img(1:2*lvl_count, :); % Updating Colms
end

lvl_count = 1;
while (lvl_count*2 <= in_row) % For row ops
    lvl_count = lvl_count*2;
end
%  Transformation Along Rows and downsampling by 2
while (1 < lvl_count)
    lvl_count = floor(lvl_count/2); % In this case K will be 1024, 512, 256....1
    out_img(:, 1:lvl_count) = (in_img(: ,1:2:2*lvl_count-1) + in_img(: ,2:2:2*lvl_count))/sqrt2;
    out_img(:, lvl_count+1:lvl_count+lvl_count) = (in_img(: ,1:2:2*lvl_count-1) - in_img(: ,2:2:2*lvl_count))/sqrt2;
    in_img(:, 1:2*lvl_count) = out_img(:,1:2*lvl_count); % Updating Rows
end


%  Inverse transform Along Rows and upsampling by 2
lvl_count = 1;
while (lvl_count*2 <= in_row)
    in_img(:, 1:2:2*lvl_count-1) = (out_img(: ,1:lvl_count) + out_img(: ,1+lvl_count:lvl_count+lvl_count))/sqrt2;
    in_img(:, 2:2:2*lvl_count) = (out_img(: ,1:lvl_count) - out_img(: ,1+lvl_count:lvl_count+lvl_count))/sqrt2;
    out_img(:, 1:2*lvl_count) = in_img(:, 1:2*lvl_count); % Updating Rows
    lvl_count = lvl_count*2;
end
%  Inverse transform Along Colms and upsampling by 2
lvl_count = 1;
while (lvl_count*2 <= in_colm)
    in_img(1:2:2*lvl_count-1, :) = (out_img(1:lvl_count, :) + out_img(1+lvl_count:lvl_count+lvl_count, :))/sqrt2;
    in_img(2:2:2*lvl_count, :) = (out_img(1:lvl_count, :) - out_img(1+lvl_count:lvl_count+lvl_count, :))/sqrt2;
    out_img(1:2*lvl_count, :) = in_img(1:2*lvl_count, :); % Updating Colms
    lvl_count = lvl_count*2;
end
subplot(1,2,2);
imshow(out_img), title('Final Restored Image');

% Find the error in pixel values
DIF=imsubtract(in_img,out_img);
mse=mean(mean(DIF.*DIF));
rmse=sqrt(mse);
formatSpec = 'RMSE is %f';
fprintf(formatSpec,rmse);
