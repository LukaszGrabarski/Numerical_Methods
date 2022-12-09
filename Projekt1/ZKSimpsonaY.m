function res = ZKSimpsonaY(f, x, c, d, m)
% skrypt obllicza złożoną kwadraturę Simpsona według drugiej współrzędnej
% dla dwuargumntowej funkcji f(x,y) 
% na przedziale [a, b] podzielonym na n części. 

h = (d - c)/m;

sum1 = 0; 
sum2 = 0;

for i = 1:1:(m - 1)
    sum1 = sum1 + f(x, c + i*h);
end

for i = 0:1:(m - 1)
    sum2 = sum2 + f(x, c + i*h + 0.5*h);
end

res = (h/6)*(f(x, c) + f(x, d) + 2*sum1 + 4*sum2);
