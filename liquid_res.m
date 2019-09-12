%% 电阻率 vs 温度

clc;
S1 = [
2.763	3.533	4.893	5.973	7.483	8.843	10.100	11.133
3.260	4.280	5.777	6.600	7.880	8.487	9.360	10.247
4.167	5.323	6.877	7.403	7.127	7.700	8.697	8.987
4.803	5.987	7.163	7.137	7.210	7.120	7.683	8.247
5.460	6.863	8.107	8.160	8.033	8.513	9.117	9.073
7.003	8.913	10.667	10.067	10.300	11.233	11.867	12.367
9.377	11.767	13.900	12.567	14.400	16.667	17.733	18.733
11.400	13.233	15.700	15.933	19.167	22.100	24.167	26.533
];
temp = [253.15;243.15;233.15;223.15;213.15;203.15;193.15;183.15];
volt = [20	50	100	200	400	600	800	1000];
figure1 = figure('Color',[1 1 1]);
% 创建 axes
axes1 = axes('Parent',figure1);
hold(axes1,'on');
plot1 = plot(temp, S1, 'LineWidth',1,'Color',[0 0 0],'Parent',axes1);
set(plot1(1),'DisplayName','20V','Marker','v');
set(plot1(2),'DisplayName','50V','Marker','x');
set(plot1(3),'DisplayName','100V','Marker','o');
set(plot1(4),'DisplayName','200V','Marker','*');
set(plot1(5),'DisplayName','400V','Marker','>');
set(plot1(6),'DisplayName','600V','Marker','pentagram');
set(plot1(7),'DisplayName','800V','Marker','diamond');
set(plot1(8),'DisplayName','1000V','Marker','^');
% 创建 xlabel
xlabel('温度(K)','FontSize',16,'FontName','黑体');
% 创建 ylabel
ylabel('体电阻率(10^8\Omega\cdotcm)','FontSize',16,'FontName','黑体');

box(axes1,'on');
grid(axes1,'on');
% 设置其余坐标轴属性
set(axes1,'FontSize',14);
% 创建 legend
legend1 = legend(axes1,'show');
set(legend1, ...
    'FontSize',14);

%% 电阻率 vs 电场强度
figure2 = figure('Color',[1 1 1]);
% 创建 axes
axes2 = axes('Parent',figure2);
hold(axes2,'on');
plot2 = plot(volt'./2, S1', 'LineWidth',1,'Color',[0 0 0],'Parent',axes2);
set(plot2(1),'DisplayName','-20℃','Marker','v');
set(plot2(2),'DisplayName','-30℃','Marker','x');
set(plot2(3),'DisplayName','-40℃','Marker','o');
set(plot2(4),'DisplayName','-50℃','Marker','*');
set(plot2(5),'DisplayName','-60℃','Marker','>');
set(plot2(6),'DisplayName','-70℃','Marker','pentagram');
set(plot2(7),'DisplayName','-80℃','Marker','diamond');
set(plot2(8),'DisplayName','-90℃','Marker','^');
% 创建 xlabel
xlabel('电场强度(V/mm)','FontSize',16,'FontName','黑体');
% 创建 ylabel
ylabel('体电阻率(10^8\Omega\cdotcm)','FontSize',16,'FontName','黑体');

box(axes2,'on');
grid(axes2,'on');
% 设置其余坐标轴属性
set(axes2,'FontSize',14);
% 创建 legend
legend2 = legend(axes2,'show');
set(legend2, ...
    'FontSize',14);
