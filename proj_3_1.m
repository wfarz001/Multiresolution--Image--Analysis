k= generate_haar(8);
Ndecimals = 2; 
f = 10.^Ndecimals;
A = round(f*k)/f

so=A(1,:);
subplot(8,1,1);
plot(so,'-o');
set(gca,'Visible','off')
%set(gca, 'YTick', []);

s1=A(2,:);
subplot(8,1,2);
plot(s1,'-o');
set(gca,'Visible','off')

s2=A(3,:);
subplot(8,1,3);
plot(s2,'-o');
set(gca,'Visible','off')

s3=A(4,:);
subplot(8,1,4);
plot(s3,'-o');
set(gca,'Visible','off')

s4=A(5,:);
subplot(8,1,5);
plot(s4,'-o');
set(gca,'Visible','off')

s5=A(6,:);
subplot(8,1,6);
plot(s5,'-o');
set(gca,'Visible','off')

s6=A(7,:);
subplot(8,1,7);
plot(s6,'-o');
set(gca,'Visible','off')

s7=A(8,:);
subplot(8,1,8);
plot(s7,'-o');
set(gca,'Visible','off')
suptitle('1D representation of 8*8 Haar Matrix')

A=transpose(so); B=transpose(s1);C=transpose(s2);D=transpose(s3); E=transpose(s4); F=transpose(s5); G=transpose(s6);
H=transpose(s7);

first_1= A*so; second_1=B*so; third_1=C*so; four_1=D*so; fiv_1=E*so; six_1=F*so; sev_1=G*so; eig_1=H*so;
first_2=A*s1;  second_2=B*s1; third_2=C*s1; four_2=D*s1; fiv_2=E*s1; six_2=F*s1; sev_2=G*s1; eig_2=H*s1;
first_3=A*s2;  second_3=B*s2; third_3=C*s2; four_3=D*s2; fiv_3=E*s2; six_3=F*s2; sev_3=G*s2; eig_3=H*s2;
first_4=A*s3;  second_4=B*s3; third_4=C*s3; four_4=D*s3; fiv_4=E*s3; six_4=F*s3; sev_4=G*s3; eig_4=H*s3;
first_5=A*s4;  second_5=B*s4; third_5=C*s4; four_5=D*s4; fiv_5=E*s4; six_5=F*s4; sev_5=G*s4; eig_5=H*s4;
first_6=A*s5;  second_6=B*s5; third_6=C*s5; four_6=D*s5; fiv_6=E*s5; six_6=F*s5; sev_6=G*s5; eig_6=H*s5;
first_7=A*s6;  second_7=B*s6; third_7=C*s6; four_7=D*s6; fiv_7=E*s6; six_7=F*s6; sev_7=G*s6; eig_7=H*s6;
first_8=A*s7;  second_8=B*s7; third_8=C*s7; four_8=D*s7; fiv_8=E*s7; six_8=F*s7; sev_8=G*s7; eig_8=H*s7;

figure;
subplot(8,8,1);      
imshow(first_1,[])   

subplot(8,8,2);
imshow(first_2,[])

subplot(8,8,3);
imshow(first_3,[])

subplot(8,8,4);
imshow(first_4,[])

subplot(8,8,5);
imshow(first_5,[])

subplot(8,8,6);
imshow(first_6,[])

subplot(8,8,7);
imshow(first_7,[])

subplot(8,8,8);
imshow(first_8,[])

subplot(8,8,9);
imshow(second_1,[])

subplot(8,8,10);
imshow(second_2,[])

subplot(8,8,11);
imshow(second_3,[])

subplot(8,8,12);
imshow(second_4,[])

subplot(8,8,13);
imshow(second_5,[])

subplot(8,8,14);
imshow(second_6,[])

subplot(8,8,15);
imshow(second_7,[])

subplot(8,8,16);
imshow(second_8,[])

subplot(8,8,17);
imshow(third_1,[])

subplot(8,8,18);
imshow(third_2,[])

subplot(8,8,19);
imshow(third_3,[])

subplot(8,8,20);
imshow(third_4,[])

subplot(8,8,21);
imshow(third_5,[])

subplot(8,8,22);
imshow(third_6,[])

subplot(8,8,23);
imshow(third_7,[])

subplot(8,8,24);
imshow(third_8,[])

subplot(8,8,25);
imshow(four_1,[])

subplot(8,8,26);
imshow(four_2,[])

subplot(8,8,27);
imshow(four_3,[])

subplot(8,8,28);
imshow(four_4,[])

subplot(8,8,29);
imshow(four_5,[])

subplot(8,8,30);
imshow(four_6,[])

subplot(8,8,31);
imshow(four_7,[])

subplot(8,8,32);
imshow(four_8,[])

subplot(8,8,33);
imshow(fiv_1,[])

subplot(8,8,34);
imshow(fiv_2,[])

subplot(8,8,35);
imshow(fiv_3,[])

subplot(8,8,36);
imshow(fiv_4,[])

subplot(8,8,37);
imshow(fiv_5,[])

subplot(8,8,38);
imshow(fiv_6,[])

subplot(8,8,39);
imshow(fiv_7,[])

subplot(8,8,40);
imshow(fiv_8,[])

subplot(8,8,41);
imshow(six_1,[])

subplot(8,8,42);
imshow(six_2,[])

subplot(8,8,43);
imshow(six_3,[])

subplot(8,8,44);
imshow(six_4,[])

subplot(8,8,45);
imshow(six_5,[])

subplot(8,8,46);
imshow(six_6,[])

subplot(8,8,47);
imshow(six_7,[])

subplot(8,8,48);
imshow(six_8,[])

subplot(8,8,49);
imshow(sev_1,[])

subplot(8,8,50);
imshow(sev_2,[])

subplot(8,8,51);
imshow(sev_3,[])

subplot(8,8,52);
imshow(sev_4,[])

subplot(8,8,53);
imshow(sev_5,[])

subplot(8,8,54);
imshow(sev_6,[])

subplot(8,8,55);
imshow(sev_7,[])

subplot(8,8,56);
imshow(sev_8,[])

subplot(8,8,57);
imshow(eig_1,[])

subplot(8,8,58);
imshow(eig_2,[])

subplot(8,8,59);
imshow(eig_3,[])

subplot(8,8,60);
imshow(eig_4,[])

subplot(8,8,61);
imshow(eig_5,[])

subplot(8,8,62);
imshow(eig_6,[])

subplot(8,8,63);
imshow(eig_7,[])

subplot(8,8,64);
imshow(eig_8,[])

suptitle('2D representation of 8*8 Haar Matrix')