clear
syms x y z
%F(x,y,z) = x^2 + y^2 + z^2 -1;
%fimplicit3(F)
%axis equal

%(0,0,1)
%ha a cmd-be "ans = 0" az eredmény, akkor a pont rajta van az alakzaton
%F(0,0,1)

%homokóra
F(x,y,z) = x^2 + y^2 - z^2;
%fimplicit3(F)
%"homokóra" alsó fele
fimplicit3(F, [-5 5 -5 5 -5 0])
axis equal