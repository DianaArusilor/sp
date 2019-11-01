X=randn(1,1000);
%ii atribui variabilei X o matrice de dimeniune 1x1000 avand drept elemente numere
%aleatoare cu distributie normala de medie nula si variatie unitara

[m n]=size(X);
% retine dimensiunile vectorului X, m- nr de linii si n-nr de coloane
for i=1:m
% se parcurge prima linie
    for j=1:n
% se parcurg elementele pe coloane
        if X(i,j)<0
% se retine in variabila Xn valorile negative ale vectorului X si valoarea
% 0 pentru elementele pozitive
            Xn(i,j)=X(i,j);
           
        end
    end
end
Xn=Xn(Xn~=0);
% Xn devine compus din elemente negative, eliminandu-se zero-urile