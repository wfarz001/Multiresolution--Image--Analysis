function vert =haar_transform(x)
k=x(:,1:2:end);
l=x(:,2:2:end);
%  haar_matrix = 1/sqrt(2)*[1 1; 1 -1] implementation
horizavg=(k+l)/sqrt(2); %along the row (avg of horizontal component) using [1 1] (Low frequencey)
horizdif=(k-l)/sqrt(2); %along the row( diff between horizontal component) using [1 -1](High Frequency)
horiz=[horizavg horizdif];

vertavg=(horiz(1:2:end,:)+horiz(2:2:end,:))/sqrt(2); % columwise using [1 1]
vertdif=(horiz(1:2:end,:)-horiz(2:2:end,:))/sqrt(2); % columwise using [1 -1]
vert=[vertavg; vertdif];
end