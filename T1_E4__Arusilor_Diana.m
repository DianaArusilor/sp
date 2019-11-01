%a) z = [0,0,0,0,0,1,0,0,...,0], vectorul z având lungimea 21

z = zeros(1,21);
z(1,6)=1;
n=0:20;
m=-5:15;
subplot(2,1,1), stem(n,z)
subplot(2,1,2), stem(m,z)

%b) t = 10 ? n , reprezentat grafic în func?ie de n = 0:20.
n=0:20;
t=abs(10-n);
stem(n,t)
figure 

% %c
n1=-15:0.01:25;
n2=0:0.01:50;
x=sin(pi*n1/17);
subplot(2,1,1);
plot(n1,x)
hold on;
x=cos(pi*n2/sqrt(23));
plot(n2,x),title('sinus si cosinus')
hold off;
subplot(2,1,2)
plot(n2,x),title('cosinus')
