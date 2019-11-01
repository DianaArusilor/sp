function [media_aritmetica,vec_patrat,mat] = T1_E3_functie_Arusilor_Diana(vector)
media_aritmetica=mean(real(vector));
%calculeaza media aritmetica a partilor reale ale elementelor
%real extrage partea reala a vectorului
vec_patrat=vector.^2;
%vectorul care contine elementele vectorului initial ridicate la patrat
mat=vector*transpose(vector);
%matricea obtinuta prin inmultirea vectorului initial cu transpusul sau
end

