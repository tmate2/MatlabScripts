clear

px = [10 20 40 50];
py = [20 40 40 20];

n = 3;

plot(px,py, 'r*--')

axis equal
axis([0 60 10 50]);
hold on

syms t

cx(t) = 0*t;
cy(t) = 0*t;

for i=0:n
   b(t) = nchoosek(n, i) * t^i * (1-t)^(n-i); 
   cx(t) = cx(t) + px(i+1) * b(t);
   cy(t) = cy(t) + py(i+1) * b(t);
end

fplot(cx, cy, [0 1], 'b')