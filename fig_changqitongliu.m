%% 图像处理工具
% 统一图像格式
% 陈建辉
% 2019/5/30
%% 获取句柄
% 获取当前图像句柄
fig = figure();
[axes,h1,h2] = plotyy(time1, current,time, [T1,T2,T3,T4,T5,T6,T7]);

% fig = gcf;
% %获取坐标区域的句柄
% axes1 = findobj(fig,'Tag','sftool surface axes'); 
% %获取线的句柄 不同的线名称不一样，按需要更改！！！
% line1 = findobj(axes1,'DisplayName','E vs. I');
% line2 = findobj(axes1,'DisplayName','untitled fit 1');

%% 设置参数
% 图像大小 x,y,width,height
width = 1200;
height = 600;
set(fig, 'Position', [200,100,width,height]);
set(axes(1),'Position',[0.1 0.14 0.82 0.8])
% 图像背景颜色 白色
set(fig, 'Color', [1,1,1]);
set(axes,'fontsize',16);
% 创建 title
% title({'临界电流测试曲线'},'FontSize',18);
% 创建 xlabel
set(get(axes(1),'XLabel'),'string','时间(s)','FontSize',20,'FontName','黑体','Color',[0 0 0]);
% xlabel('温度(T)');
% 创建 ylabel
set(get(axes(1),'YLabel'),'string','电流(A)','FontSize',20,'FontName','黑体','Color',[0 0 0]);
set(get(axes(2),'YLabel'),'string','温度(K)','FontSize',20,'FontName','黑体','Color',[0 0 0]);
% ylabel('临界电流(A)');
% 坐标轴的 X 范围
set(axes(1),'XLim',[0,550])
set(axes(2),'XLim',[0,550])
% 坐标轴的 Y 范围
set(axes(1),'YLim',[0,1600])
set(axes(2),'YLim',[89,93])
% 设置刻度
set(axes(1),'XTick',(0:50:550),...
    'YTick',(0:200:1600));
set(axes(2),'YTick',(89:0.5:93));
% 外框和网格
box(axes(1),'on');
grid(axes(1),'on');
% 设置line1相关参数
set(h1,'LineWidth',2,'Color','r');
set(h2,'LineWidth',1);
set(axes,'Ycolor',[0 0 0])
% % 设置line2相关参数
% set(line2, 'DisplayName','拟合曲线');
% set(line2, 'LineWidth',3, 'Color','red');
set(h1,'DisplayName','Current');
set(h2,{'DisplayName'},{'T1';'T2';'T3';'T4';'T5';'T6';'T7'})
% 设置legend
legend(axes(1),'show');
set(legend,'Location','best',...
    'Orientation','horizontal',...
    'Interpreter','none','FontSize',16,...
    'EdgeColor',[0.15 0.15 0.15]);
% 创建 textbox !!!
% annotation(fig,'textbox',[0.62 0.6 0.27 0.07],...
%     'String','f(x)=0.1703x+1.304',...
%     'FontSize',14,...
%     'FitBoxToText','off');
%% 保存图像
file_root = 'D:\能源管道项目\项目实验报告\廊坊实验数据2';
tempK = 92.7;
file_name = strcat(file_root, '\', num2str(tempK),'K长期通流');

saveas(fig, strcat(file_name,'.fig'));
saveas(fig, strcat(file_name,'.svg'));
saveas(fig, strcat(file_name,'.png'));