clear
syms x y
F(x,y) = x^2 + y^2 -1
%kör
%fimplicit(F)
%félkör
fimplicit(F, [0 5 -5 5], 'g')
%hogy a kör tényleg kör alakban jelenjen meg
axis equal
F(0,5)