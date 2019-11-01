%a) initializare vectori
a=[0:0.1:2];
%b trebuie sa aiba dimensiunea 21 pentru ca inmultirea in sens matricial sa
%aiba sens
b=ones(1,21)';
inm1=a*b;

%b) inmultirea b*a nu poate avea loc pentru ca  vectorul b este de tip
%coloana
%inm2=b*a;

%c)
inm3=a.*b;
% se obtine o matrice 21x21
