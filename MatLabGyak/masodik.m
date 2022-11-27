clear

syms x y
z(x,y) = sqrt( 1 - x^2 - 0.5 * y^2 );

fsurf(z, 'g')

axis equal;
hold on;

P = [0.5, 0.2, z(0.5,0.2)];
plot3(P(1),P(2),P(3), '.r', 'MarkerSize', 20)