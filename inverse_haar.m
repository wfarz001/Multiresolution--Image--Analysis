function d=inverse_haar(vert)
c=vert;
c(1:2:end,:)=( vert(1:end/2,:)+ vert(end/2+1:end,:) )/sqrt(2);
c(2:2:end,:)=( vert(1:end/2,:)- vert(end/2+1:end,:) )/sqrt(2);
% figure;
% imagesc(c);colormap(gray);axis image;

d=c;
d(:,1:2:end)= ( c(:,1:end/2) + c(:,end/2+1:end) )/sqrt(2);
d(:,2:2:end)= ( c(:,1:end/2) - c(:,end/2+1:end) )/sqrt(2);
end