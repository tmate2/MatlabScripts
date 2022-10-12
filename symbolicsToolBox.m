clear
syms x
f(x) = sin(x);

%új ablakban nyíljon meg
figure
fplot(f, [-3 5], 'r', 'LineWidth', 3);
axis equal
axis([-4 6 -1.5 1.5])
%P = (1, f(1))

%figure
%megtartja az előző lapot
hold on
plot(1, f(1), '*b')
%ezzel már numerikusan is kiirja a pontot
double(f(1))
