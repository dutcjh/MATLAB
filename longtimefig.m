%% 图像处理工具
% 统一图像格式 3y轴
% 陈建辉
% 2019/6/19
%% 获取句柄
% 获取当前图像句柄
fig = figure('units','normalized',...
       'DefaultAxesXMinorTick','on','DefaultAxesYminorTick','on'); 

TPMIN = 1;
TPMAX = 36565;
CVMIN = 1;
CVMAX = 652909;

T11 = T1(TPMIN:TPMAX); T22 = T2(TPMIN:TPMAX); T33 = T3(TPMIN:TPMAX); T44 = T4(TPMIN:TPMAX);
T55 = T5(TPMIN:TPMAX); T66 = T6(TPMIN:TPMAX); T77 = T7(TPMIN:TPMAX); tt = time(TPMIN:TPMAX);
P11 = P1(TPMIN:TPMAX); P22 = P2(TPMIN:TPMAX);
curr = current(CVMIN:CVMAX); volt = voltage(CVMIN:CVMAX); tt1 = time1(CVMIN:CVMAX);
tt = tt-TPMIN;
tt1 = tt1-TPMIN;
% curr(1) = 0;
% [axes,h1,h2,h3] = plotyyy(time1, current,time, [T1,T2,T3,T4,T5,T6,T7], time, [P1, P2]);
[ax,h1,h2] = plotyy(tt, [T11,T22,T33,T44,T55,T66,T77], tt, [P11,P22]);
% 温度||压强
xmax1 = 38000;
pos = [0.08  0.15  0.78  0.8];
offset = 0.08;

pos(3) = pos(3) - offset/2;
set(ax,'position',pos);  
pos3=[pos(1) pos(2) pos(3)+offset pos(4)];
set(ax(1),'XLim',[0,xmax1])
set(ax(2),'XLim',[0,xmax1])

limx3=[0  xmax1/(pos3(3)-pos3(1))*offset+xmax1];

ax(3)=axes('Position',pos3,'box','off',...
   'Color','none','XColor','k','YColor','r',...   
   'xtick',[],'xlim',limx3,'yaxislocation','right');

h3 = line(tt1,curr,'Parent',ax(3));

% limy3=get(ax(3),'YLim');

% line([xmax1 limx3(2)],[limy3(1) limy3(1)],...
%    'Color',cfig,'Parent',ax(3),'Clipping','off');
% axes(ax(2))

% 设置参数
% 图像大小 x,y,width,height
% width = 1200;
% height = 500;
% set(fig, 'Position', [200,100,width,height]);
% set(axes(1),'Position',[0.08 0.14 0.85 0.8])
% 图像背景颜色 白色
set(fig, 'Color', [1,1,1]);
set(ax,'fontsize',14);
% 创建 title
% title({'临界电流测试曲线'},'FontSize',18);
% 创建 xlabel
set(get(ax(1),'XLabel'),'string','时间(s)','FontSize',16,'Color',[0 0 0]);
% xlabel('温度(T)');
% 创建 ylabel
set(get(ax(3),'YLabel'),'string','电流(A)','Fontname','黑体', 'FontSize',16,'Color',[0 0 0]);
set(get(ax(1),'YLabel'),'string','温度(K)','Fontname','黑体','FontSize',16,'Color',[0 0 0]);
set(get(ax(2),'YLabel'),'string','压强(MPa)','Fontname','黑体','FontSize',16,'Color',[0 0 0]);
% ylabel('临界电流(A)');

% 坐标轴的 Y 范围
set(ax(3),'YLim',[0,1600])
set(ax(1),'YLim',[86,104])
set(ax(2),'YLim',[0.25,0.7])
% 设置刻度
set(ax(1),'XTick',(0:5000:xmax1),...
    'YTick',(86:2:110));
set(ax(2),'YTick',(0.2:0.05:0.7));
set(ax(3),'YTick',(0:200:1600));
% 外框和网格
box(ax(1),'on');
grid(ax(1),'on');
% 设置line1相关参数
set(h1,'LineWidth',2);
set(h2,'LineWidth',1.5,{'Color'},{'b';'m'});
set(h3,'LineWidth',1.5,'Color','r');
set(ax,'Ycolor',[0 0 0])
% % 设置line2相关参数
% set(line2, 'DisplayName','拟合曲线');
% set(line2, 'LineWidth',3, 'Color','red');
set(h3,'DisplayName','Current');
set(h1,{'DisplayName'},{'T1';'T2';'T3';'T4';'T5';'T6';'T7'})
set(h2,{'DisplayName'},{'P1';'P2'});
% 设置legend
legend(ax(1),'show','Orientation','horizontal','Location', [0.04 0.58 0.54 0.68]);
legend(ax(3),'show','Orientation','horizontal','Location', [0.37 0.58 0.47 0.68]);

width = 0.8;
height = 0.6;
set(fig, 'Position', [0.1,0.1,width,height]);

% 创建 textbox !!!
% annotation(fig,'textbox',[0.62 0.6 0.27 0.07],...
%     'String','f(x)=0.1703x+1.304',...
%     'FontSize',14,...
%     'FitBoxToText','off');
%% 保存图像
% file_root = 'D:\能源管道项目\项目实验报告\廊坊实验数据2';
% tempK = 100;
% file_name = strcat(file_root, '\总图', num2str(tempK),'K长期通流');
% 
% saveas(fig, strcat(file_name,'.fig'));
% saveas(fig, strcat(file_name,'.svg'));
% saveas(fig, strcat(file_name,'.png'));