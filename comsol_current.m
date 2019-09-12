%% 电流变化曲线
% COMSOL仿真超导线，电流大小变化曲线
%% main()
I0 = 1e6;
tau = 0.02;
t = (0:0.0005:0.1);
I1 = I0.*(1-exp(-t./tau));
figure1 = figure('Color',[1 1 1]);
plot(t, I1,'LineWidth',2,'Color',[0 0 1]);
% 创建 xlabel
xlabel({'时间(s)'},'FontSize',16);
% 创建 title
title({'电流大小变化'},'FontSize',16);
% 创建 ylabel
ylabel({'电流(A)'},'FontSize',16);
grid on;

d = 0.01;
r = d/2;
S = pi*r*r;
p1 = I1./S;
figure2 = figure('Color',[1 1 1]);
plot(t, p1,'LineWidth',2,'Color',[1 0 0]);
% 创建 xlabel
xlabel({'时间(s)'},'FontSize',16);
% 创建 title
title({'电流密度大小变化'},'FontSize',16);
% 创建 ylabel
ylabel({'电流密度(A/m^2)'},'FontSize',16);
grid on;