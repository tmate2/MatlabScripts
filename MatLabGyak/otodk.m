clear

syms u v

axis equal
hold on

P1 = [0 0 0];
P2 = [0 1 1];
R1 = [1 0 1];
R2 = [1 1 0];

p(u) = (1-u) * P1 + u * P2;
r(u) = (1-u) * R1 + u * R2;

s(u,v) = (1-v)*p(u)+v*r(u);

fsurf(p,r, [0 1])