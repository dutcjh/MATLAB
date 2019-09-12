%% �����仯����
% COMSOL���泬���ߣ�������С�仯����
%% main()
I0 = 1e6;
tau = 0.02;
t = (0:0.0005:0.1);
I1 = I0.*(1-exp(-t./tau));
figure1 = figure('Color',[1 1 1]);
plot(t, I1,'LineWidth',2,'Color',[0 0 1]);
% ���� xlabel
xlabel({'ʱ��(s)'},'FontSize',16);
% ���� title
title({'������С�仯'},'FontSize',16);
% ���� ylabel
ylabel({'����(A)'},'FontSize',16);
grid on;

d = 0.01;
r = d/2;
S = pi*r*r;
p1 = I1./S;
figure2 = figure('Color',[1 1 1]);
plot(t, p1,'LineWidth',2,'Color',[1 0 0]);
% ���� xlabel
xlabel({'ʱ��(s)'},'FontSize',16);
% ���� title
title({'�����ܶȴ�С�仯'},'FontSize',16);
% ���� ylabel
ylabel({'�����ܶ�(A/m^2)'},'FontSize',16);
grid on;