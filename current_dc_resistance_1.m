function createfigure(X1, YMatrix1)
%CREATEFIGURE(X1, YMATRIX1)
%  X1:  x 数据的矢量
%  YMATRIX1:  y 数据的矩阵

%  由 MATLAB 于 29-Jun-2018 19:01:54 自动生成

% 创建 figure
figure1 = figure;

% 创建 axes
axes1 = axes('Parent',figure1);
hold(axes1,'on');

% 使用 plot 的矩阵输入创建多行
plot1 = plot(X1,YMatrix1,'LineWidth',2,'Parent',axes1);
set(plot1(1),'DisplayName','\iti','Color',[1 0 0]);
set(plot1(2),'DisplayName','\iti\rm_2','Color',[0 0 1]);
set(plot1(3),'DisplayName','\iti\rm_3','Color',[0 0.498039215803146 0]);

% 创建 xlabel
xlabel({'时间(s)'},'FontSize',16,'FontName','黑体');

% 创建 ylabel
ylabel('电流(A)','FontSize',16,'FontName','黑体');

% 取消以下行的注释以保留坐标轴的 Y 范围
% ylim(axes1,[0 4e-08]);
box(axes1,'on');
% 设置其余坐标轴属性
set(axes1,'FontName','Times New Roman','FontSize',14,'XGrid','on','YGrid',...
    'on');
% 创建 legend
legend1 = legend(axes1,'show');
set(legend1,'FontSize',16);

