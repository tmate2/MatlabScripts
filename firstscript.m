clear
% , és szókoz esetén 1x4-es mátrixot hoz létre, ; esetén pedig 4x1-est
x = [1 4 7 10];
y = [3 5 6 4];

%rajzolás 'ro--' esetén összeköti a pontokat szagatott vonallal
%'ro-' esetén pedig sima vonallal
%egyéb esetben ' ' ok közötti karakter jelöli a pontokat
plot(x,y,'ro-')

%tengelyek hosszának megadása xkezdő xvég ykezdő yvég
axis([-2 14 1 7])

%x és y tengely beosztásai egyenlőek legyenek
axis equal
%vonalazás
grid on
box off

%origo beállítása rajzoláshoz
ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';