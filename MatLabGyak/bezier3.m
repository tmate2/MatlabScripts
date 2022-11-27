clear

px = [1 3 5 7 9 12 14];
py = [2 6 -6 10 3 9 1];

n = 6;

plot(px,py, 'r*--');

axis equal
axis([0 15 -6 15])
hold on

syms t

cx(t) = 0*t;
cy(t) = 0*t;

for i=0:n
   b(t) = nchoosek(n,i) * t^i * (1-t)^(n-i);
   cx(t) = cx(t) + px(i+1) * b(t);
   cy(t) = cy(t) + py(i+1) * b(t);
end

fplot(cx, cy, [0 1])