I=imread('4.1.06.tiff'); %Read in image
in_img = rgb2gray(I); 
x=double(in_img);


vert=haar_transform(x);
figure;
imagesc(vert);colormap(gray);axis image; title('Level 1 Coeffcient with Haar Wavelet');

vert_m=haar_transform(vert);
figure;
imagesc(vert_m);colormap(gray);axis image;title('Level 2 Coeffcient with Haar Wavelet');

vert_3=haar_transform(vert_m);
figure;
imagesc(vert_3);colormap(gray);axis image;title('Level 3 Coeffcient with Haar Wavelet');

% 
% %Synthesis operation (if avg and diff is known, we can get the original
% image

inv_1=inverse_haar(vert_3); %inverse transform from level 3 to level 2
inv_2=inverse_haar(inv_1); %inverse transform from level 2 to level 1
inv_3=inverse_haar(inv_2); %inverse transform from level 1 to original image
figure;
subplot (1,2,1);
imagesc(in_img);colormap(gray);axis image;title('Original Image');
subplot (1,2,2);
imagesc(inv_3);colormap(gray);axis image;title('Restored Image');

figure;
hist(vert_3(:),200);

cs=sort( abs ( vert_3(:) ),'descend');
L=length( vert_3(:) ); 

percentage=0.1:0.1:5;
MSE=[];
en=sum(cs.^2);
for p=percentage
    K=ceil(p*L/100);
    error=sum( cs(K+1:end).^2);
    MSE=[MSE error/en];
end
figure;
plot(percentage,MSE*100);
xlabel('Percentage of Coefficient Kept')
ylabel('Percentage of error')


% Find the error in pixel values between Original and Restored Image
DIF=imsubtract(x,inv_3);
mse=mean(mean(DIF.*DIF));
rmse=sqrt(mse);
formatSpec = 'RMSE is %f\n';
fprintf(formatSpec,rmse);
