clear

syms u v

x(u,v) = u - ( u^3 / 3 ) + u * v^2;
y(u,v) = u - ( v^3 / 3 ) + v * u^2;
z(u,v) = u^2 - v^2;

fsurf(x,y,z, [-25 25 -25 25])
axis equal;
axis([-5*10000 5*10000 -5*10000 5*10000 -10*10000 2*10000]);
hold on;

%Pont abrazolasa
u0 = 10;
v0 = 15;
plot3(x(u0,v0),y(u0,v0),z(u0,v0), 'r.', 'MarkerSize', 25)

%iranyvektor letrehozasa
cx(u) = x(u,v0);
cy(u) = y(u,v0);
cz(u) = z(u,v0);

cxd(u) = diff(cx,u);
cyd(u) = diff(cy,u);
czd(u) = diff(cz,u);
a = [cxd(u0),cyd(u0),czd(u0)];
P = [x(u0,v0),y(u0,v0),z(u0,v0)];
quiver3( P(1),P(2),P(3),a(1),a(2),a(3), 'm', 'LineWidth',2)

dx(v) = x(u0,v);
dy(v) = y(u0,v);
dz(v) = z(u0,v);
dxd(v) = diff(dx,v);
dyd(v) = diff(dy,v);
dzd(v) = diff(dz,v);
b = [dxd(v0),dyd(v0),dzd(v0)];
quiver3( P(1),P(2),P(3),b(1),b(2),b(3), 'm', 'LineWidth',2)

n = cross(a,b);
quiver3( P(1), P(2), P(3), n(1), n(2), n(3), 'g', 'LineWidth',2)