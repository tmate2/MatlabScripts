clear
px = [ 0 2 4 6 ];
py = [ 1 4 3 -1 ];
plot(px,py, '*--');
axis([-1 20 -10 10]);
axis equal;
hold on;

n=3;
syms t
cx(t) = 0*t; cy(t) = 0*t;

for i=0:n
    b(t) = nchoosek(n, i) * t^i * (1-t)^(n-i);
    cx(t) = cx(t) + px(i+1) * b(t);
    cy(t) = cy(t) + py(i+1) * b(t);
end
hold on; 
fplot(cx,cy, [0 1])

m=4;

rx = [px(4), px(4) + n/m * (px(4)-px(3)), 10, 12, 15 ];
ry = [py(4), py(4) + n/m * (py(4)-py(3)), -7, -5, 3 ];

plot(rx,ry, '*--')

cx(t) = 0*t; cy(t) = 0*t;

for i=0:m
    b(t) = nchoosek(m, i) * t^i * (1-t)^(m-i);
    cx(t) = cx(t) + rx(i+1) * b(t);
    cy(t) = cy(t) + ry(i+1) * b(t);
end
hold on; 
fplot(cx,cy, [0 1])