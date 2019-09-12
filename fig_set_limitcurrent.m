%% 图像处理工具
% 统一图像格式
% 陈建辉
% 2019/5/28
%% 获取句柄
% 获取当前图像句柄
fig = gcf;
%获取坐标区域的句柄
axes1 = findobj(fig,'Tag','sftool surface axes'); 
%获取线的句柄 不同的线名称不一样，按需要更改！！！
line1 = findobj(axes1,'DisplayName','E vs. I');
line2 = findobj(axes1,'DisplayName','untitled fit 1');

tempK = 77;
%% 设置参数
% 图像大小 x,y,width,height
width = 800;
height = 500;
set(fig, 'WindowStyle', 'normal');
set(fig, 'Position', [500,100,width,height]);
set(axes1, 'Position',[0.09 0.14 0.86 0.76]);
% 图像背景颜色 白色
set(fig, 'Color', [1,1,1]);
% 坐标轴字体大小
set(axes1,'FontSize',14);
% 创建 title
% title({'临界电流测试曲线'},'FontSize',18);
% 创建 xlabel
xlabel('电流(A)');
% xlabel('温度(T)');
% 创建 ylabel
ylabel('电场(μV/cm)');
% ylabel('临界电流(A)');
% 坐标轴的 X 范围
xlim(axes1,[0 2800]);
% 坐标轴的 Y 范围
ylim(axes1,[-0.2 0.4]);
% 设置刻度
set(axes1,'XTick',(0:400:2800),...
    'YTick',(-0.2:0.1:0.4));
% 外框和网格
% box(axes1,'on');
% grid(axes1,'on');
% 设置line1相关参数
% set(line1, 'MarkerSize',10,'Marker','*','LineStyle','none');
set(line1, 'DisplayName','测量值');
% 设置line2相关参数
set(line2, 'DisplayName','拟合曲线');
set(line2, 'LineWidth',3, 'Color','red');
% 设置legend
set(legend,...% 'Location','best',...
    'Location','northwest',...
    'Interpreter','none','FontSize',14,...
    'EdgeColor',[0.15 0.15 0.15]);
% 创建 textbox !!!
% annotation(fig,'textbox',[0.62 0.6 0.27 0.07],...
%     'String','f(x)=0.1703x+1.304',...
%     'FontSize',14,...
%     'FitBoxToText','off');
%% 保存图像
file_root = 'E:\能源管道项目\项目实验报告\廊坊实验数据2';
file_name = strcat(file_root, '\', num2str(tempK),'K');

saveas(fig, strcat(file_name,'.fig'));
saveas(fig, strcat(file_name,'.svg'));
saveas(fig, strcat(file_name,'.png'));
