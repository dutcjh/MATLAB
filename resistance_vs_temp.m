A = 2e-4;
B = 6000;
T = 20:0.02:100;
phi = 1./A.*exp(B./(273.15+T));
plot(T, phi)