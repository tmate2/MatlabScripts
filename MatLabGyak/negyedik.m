clear

syms x y z

z = x+y;
x = (0.5 * y - 4 * z -2)/2;
y = (x + 3 * z - 4)/2;

axis equal
hold on

fsurf(z, 'g');
fsurf(x, 'r');
fsurf(y, 'b');