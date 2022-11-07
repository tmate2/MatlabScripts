clear
syms t
x(t) = t*cos(t);
y(t) = t*sin(t);
z(t) = t;

%3 dimenziós térbeni ábrázolás
fplot3(x, y, z, [0 12*pi])
axis equal

%tengelyek elnevezése
xlabel('x');
ylabel('y');
zlabel('z');

%felveszünk egy pontot
t0 = 8*pi;
hold on

%3d ábrázolás miatt már a plot3-at kell használnunk itt is
%plot3(x(t0),y(t0),z(t0), 'r.', 'MarkerSize', 25)

%Érintő vektort készítűnk t0-ra
%lista a t0 ponttal
P = [x(t0),y(t0),z(t0)];
plot3(P(1),P(2),P(3),'r.', 'MarkerSize', 25)

%deriválás
%diff( x fg-t deriváljuk t érték szerint)
xd(t) = diff(x,t);
yd(t) = diff(y,t);
zd(t) = diff(z,t);

%létrehozzuk a vektort
v = [xd(t0),yd(t0),zd(t0)];
quiver3(P(1),P(2),P(3),v(1),v(2),v(3))
