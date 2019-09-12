%% ͼ������
% ͳһͼ���ʽ 3y��
% �½���
% 2019/6/19
%% ��ȡ���
% ��ȡ��ǰͼ����
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
% �¶�||ѹǿ
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

% ���ò���
% ͼ���С x,y,width,height
% width = 1200;
% height = 500;
% set(fig, 'Position', [200,100,width,height]);
% set(axes(1),'Position',[0.08 0.14 0.85 0.8])
% ͼ�񱳾���ɫ ��ɫ
set(fig, 'Color', [1,1,1]);
set(ax,'fontsize',14);
% ���� title
% title({'�ٽ������������'},'FontSize',18);
% ���� xlabel
set(get(ax(1),'XLabel'),'string','ʱ��(s)','FontSize',16,'Color',[0 0 0]);
% xlabel('�¶�(T)');
% ���� ylabel
set(get(ax(3),'YLabel'),'string','����(A)','Fontname','����', 'FontSize',16,'Color',[0 0 0]);
set(get(ax(1),'YLabel'),'string','�¶�(K)','Fontname','����','FontSize',16,'Color',[0 0 0]);
set(get(ax(2),'YLabel'),'string','ѹǿ(MPa)','Fontname','����','FontSize',16,'Color',[0 0 0]);
% ylabel('�ٽ����(A)');

% ������� Y ��Χ
set(ax(3),'YLim',[0,1600])
set(ax(1),'YLim',[86,104])
set(ax(2),'YLim',[0.25,0.7])
% ���ÿ̶�
set(ax(1),'XTick',(0:5000:xmax1),...
    'YTick',(86:2:110));
set(ax(2),'YTick',(0.2:0.05:0.7));
set(ax(3),'YTick',(0:200:1600));
% ��������
box(ax(1),'on');
grid(ax(1),'on');
% ����line1��ز���
set(h1,'LineWidth',2);
set(h2,'LineWidth',1.5,{'Color'},{'b';'m'});
set(h3,'LineWidth',1.5,'Color','r');
set(ax,'Ycolor',[0 0 0])
% % ����line2��ز���
% set(line2, 'DisplayName','�������');
% set(line2, 'LineWidth',3, 'Color','red');
set(h3,'DisplayName','Current');
set(h1,{'DisplayName'},{'T1';'T2';'T3';'T4';'T5';'T6';'T7'})
set(h2,{'DisplayName'},{'P1';'P2'});
% ����legend
legend(ax(1),'show','Orientation','horizontal','Location', [0.04 0.58 0.54 0.68]);
legend(ax(3),'show','Orientation','horizontal','Location', [0.37 0.58 0.47 0.68]);

width = 0.8;
height = 0.6;
set(fig, 'Position', [0.1,0.1,width,height]);

% ���� textbox !!!
% annotation(fig,'textbox',[0.62 0.6 0.27 0.07],...
%     'String','f(x)=0.1703x+1.304',...
%     'FontSize',14,...
%     'FitBoxToText','off');
%% ����ͼ��
% file_root = 'D:\��Դ�ܵ���Ŀ\��Ŀʵ�鱨��\�ȷ�ʵ������2';
% tempK = 100;
% file_name = strcat(file_root, '\��ͼ', num2str(tempK),'K����ͨ��');
% 
% saveas(fig, strcat(file_name,'.fig'));
% saveas(fig, strcat(file_name,'.svg'));
% saveas(fig, strcat(file_name,'.png'));