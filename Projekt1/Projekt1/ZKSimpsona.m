function S = ZKSimpsona()

% inicjujemy potrzebne parametry
a = 0;
b = 1;
c = 0;
d = 2*pi;
n = 100;
m = 100;

h1 = (b - a)/n;
h2 = (d - c)/m;

% obliczamy złożoną kwadraturę Simpsona ze względu na pierwszą zmienną
% fuckcji, a następnie na niej stosujemy kwadraturę ze względu na drugą zmienną

s1 = ZKSimpsonaY(a, c, d, m);
s2 = ZKSimpsonaY(b, c, d, m);

s3 = 0;
for i = 1:1:(n - 1)
    s3 = s3 +  ZKSimpsonaY(a + i*h1, c, d, m);
end

s4 = 0;
for i = 0:1:(n - 1)
    s4 = s4 +  ZKSimpsonaY(a + i*h1 + 0.5*h1, c, d, m);
end

S = (h1/6)*(s1 + s2 + 2*s3 + 4*s4);


