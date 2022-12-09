function res = ZKSimpsonaX(f, y, a, b, n)
% skrypt obllicza złożoną kwadraturę Simpsona według pierwszej współrzędnej
% dla dwuargumntowej funkcji f(x,y) 
% na przedziale [a, b] podzielonym na n części. 

h = (b - a)/n;

sum1 = 0;
sum2 = 0;

for i = 1:1:(n-1)
    sum1 = sum1 + f(a+i*h, y);
end

for i = 0:1:(n-1)
    sum2 = sum2 + f(a+i*h+0.5*h, y);
end

res = (h/6)*(f(a,y) + f(b,y) + 2*sum1 + 4*sum2);
