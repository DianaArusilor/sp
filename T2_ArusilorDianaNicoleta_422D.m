k=-50:1:50;
T=40;%perioada
f=1/40;%frecventa 
wo=2*pi*f;
duty=(1/40)*100;%factorul de umplere al semnalului conform  numarului de
%ordine (1) din lista cu studenti furnizata de seful grupei
timp=-80:0.2:80;%rezolutie temporala pentru afisarea a 4 perioade

figure (1)

sq=0.5+0.5*square(2*pi*1/40*timp,duty);%semnalul dreptunghiular
subplot(2,1,1)
plot(timp,sq),grid,axis([-80 80 -0.5 1.5]),xlabel('timp(s)'),
ylabel('Amplitudine'),title('Semnal Dreputunghiular');%se afiseaza semnalul

%Calcul coeficienti
syms t %se creeaza o variabila simbolica pentru a face posibila integrarea 
Xk=1/40*int(1*exp(-i*k*2*pi*f*t),t,0,1)%xd sparge integrala in 2, cu capete
%de la 0 la 1 si de la 1 la 40. Integrala de la 1 la 40 este 0 pentru 
%ca semnalul pe acea portiune e 0.

%Spectru de Amplitudini
Ak=2*abs(Xk) %formula obtinuta la cursul de SS

Ak(51)=1/40*1 %componenta continua C(0)= 1/P* integrala din x(t) pe o perioada
%Este necesara calcularea acesteia in acest mod pentru ca exista un caz
%de nedefinire pentru ca Xk va fi egal cu (j/(2*k*pi))*(....) . Asadar am 
%calculat componenta continua cu formula specifica.
subplot(2,1,2)
stem(k,Ak),grid,axis([-5 5 0 1]),xlabel('k'),
ylabel('Ak'),title('Spectrul de Amplitudini');%se afiseaza spectrul;


figure (2)  %Figura 2 cu reconstructia semnalului;
%Semnalul dreptunghiular este format dintr-o suma de sinusuri;
%Semnalul dreptunghiular obtinut de square() este unul ideal;
%Adunarea mai multor sinusuri de frecvente = k*fo (fo este frecventa fundamentala)
%duce la obtinerea semnalului dreptunghiular;
%semnalul dreptunghiular ia forma sinusului cu frecventa fundamentala
%prin reconstructie se evidentiaza cele spuse mai sus
clear

T=40;
f=1/40;
wo=2*pi*f;
duty=(1/40)*100;

kneg=-50:-1;  %Am decis sa impart N=-50:1:50 in pozitiv, negativ si 0
%pentru ca C(0) va duce la un caz de nedefinire pentru ca 
%Xk va fi egal cu (j/(2*k*pi))*.... .Asadar am sa calculez componenta
%continua cu formula specifica.
kpoz=1:50;
 k=kneg;
 Cneg=j*(exp(-j*k*34/40*pi)-1)./(2*pi*k);
 k=kpoz;
 Cpoz=j*(exp(-j*k*34/40*pi)-1)./(2*pi*k);
 C0=1/40;
 k=[kneg,0,kpoz]; %concatenez k
 C=[Cneg,C0,Cpoz];%concatenez coeficientii 
 n=0;
 for t=-80:.02:80
n=n+1;
%se creeaza un vector ftrunc care ia valoarea fiecarei sume dintre 
%elementele vectorului C.*(exp(j*k*2*pi*t/40)) la fiecare moment de timp

ftrunc(n)=sum(C.*(exp(j*k*2*pi*t/40)));%se scrie functia pentru recontructia
%semnalului
end
 t=-80:.02:80;
 sq=0.5+0.5*square(2*pi*1/40*t,duty);
 
 subplot(2,1,1);
 plot(t,real(ftrunc),':b',t,sq,'k'),grid,xlabel('timp(s)'),
ylabel('Amplitudine'),title('Reconstructia semnalului N=50');%se afiseaza semnalul
 %reconstructia semnalului peste semnalul dreptunghiular pentru a se 
 %vedea diferenta dintre cele doua
 
 subplot(2,1,2);
 plot(t,real(ftrunc),':b',t,sq,'k'),grid,axis([-5 45 -0.2 1.2 ]),xlabel('timp(s)'),
ylabel('Amplitudine'),title('Reconstructia semnalului N=50');
%zoom in pe reconstructie

%In concluzie,seria Fourier este reprezentarea semnalului sub forma de suma pana la
%infinit din sinusuri si cosinusuri,exponentiale, sau armonici; Se observa din cursuri
%ca semnalul poate fi analizat pe esantioane si aproximat astfel incat sa se obtina un
%model cat mai apropiat de cel real cu o eroare cat mai mica. Astfel, se esantioneaza si 
%se calculeaza coeficientii seriei Fourier.

