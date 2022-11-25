clear

px = [1 3 6 10 13]; py = [1 -3 -5 -4 0];
plot(px, py, '*--')
axis([-15 15 -15 15]); axis equal
hold on
n=4;

syms t
cx(t) = 0*t; cy(t) = 0*t;

for i=0:n
    b(t) = nchoosek(n, i) * t^i * (1-t)^(n-i);
    cx(t) = cx(t) + px(i+1) * b(t);
    cy(t) = cy(t) + py(i+1) * b(t);
end

fplot(cx, cy, [0 1])

v0 = [n * (px(5)-px(4)), n * (py(5)-py(4))];

rx = [ px(5), 14 ];
ry = [ py(5), 3 ];
plot(rx,ry, '*')

vx = [v0(1), 3];
vy = [v0(2), -2];
quiver( rx(2),ry(2),vx(2),vy(2) )
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

t0 = 0;
t1 = 2;
syms a3 a2 a1 a0 t
c(t) = a3 * t^3 + a2 * t^2 + a1 * t + a0;
cd(t) = diff(c, t)

e = [ c(t0) == rx(1), c(t1) == rx(2), cd(t0) == vx(1), cd(t1) == vx(2) ];
m = solve( e, [a3 a2 a1 a0] );
x(t) = subs( c, [a3 a2 a1 a0], [m.a3, m.a2, m.a1, m.a0] );

e = [ c(t0) == ry(1), c(t1) == ry(2), cd(t0) == vy(1), cd(t1) == vy(2) ];
m = solve( e, [a3 a2 a1 a0] );
y(t) = subs( c, [a3 a2 a1 a0], [m.a3, m.a2, m.a1, m.a0] );


fplot(x, y, [t0,t1])
