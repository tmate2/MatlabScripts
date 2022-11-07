clear

syms x y

%1. explicit alak
f(x,y) = sin(x) + cos(y);

%ábrázolása fsurf( ábrázolandó fg )
fsurf(f) %fsurf(f,'y') => egy színű lesz (pl: sárga)
%fsurf(f, [-10 10 0 20]) => megjelenítési méret megadása

axis equal
hold on

%sin(x)+cos(x)=0 => z=0 | fimplicit ( fg, 'szin', ...)
fimplicit(f,'g','LineWidth', 3)

%felveszünk egy pontot
P = [2,3,f(2,3)]
plot3(P(1),P(2),P(3),'.r', 'MarkerSize',10)