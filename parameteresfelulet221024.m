clear

R = 2;
r = 1.2; %fánk szélének a vastagsága

syms u v

%"fánk"/tourusz
x(u,v) = (R+r*cos(v))*cos(u);
y(u,v) = (R+r*cos(v))*sin(u);
z(u,v) = r*sin(v);

fsurf(x,y,z, [0, 2*pi, 0, 2*pi])
%fsurf(x,y,z, [0, 2*pi, 0, pi]) %csak a fánk felső fele  rajzólódik ki
axis equal

% pont ábrázolása
u0 = pi/2;
v0 = pi;
hold on
plot3(x(u0,v0),y(u0,v0),z(u0,v0), 'r.', 'MarkerSize', 25)