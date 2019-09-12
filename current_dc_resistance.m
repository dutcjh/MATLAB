%% 直流电压下流过电介质的电流
U = 100;
C1 = 5e-11;
C2 = 1e-8;
R2 = 4e9;
R3 = 1e10;
% Z = 1./(1j*w0*C1 + 1/(R2 + 1j*w0*C2) + 1/R3);
t = 0:0.01:100;
fi1 = U./R2.*exp(-t./(R2*C2));
fi2 = C1.*U.*dirac(t);
% fi2 = 0;
fi3 = U./R3.*ones(size(t));
fi = fi1+fi2+fi3;
figure(1)
plot(t, fi, t, fi1, t, fi3);


