%% ͼ������
% ͳһͼ���ʽ 3y��
% �½���
% 2019/6/19
%% ��ȡ���
% ��ȡ��ǰͼ����
fig = figure('units','normalized',...
       'DefaultAxesXMinorTick','on','DefaultAxesYminorTick','on'); 

% [axes,h1,h2,h3] = plotyyy(time1, current,time, [T1,T2,T3,T4,T5,T6,T7], time, [P1, P2]);
[ax,h1,h2] = plotyy(time, [T1,T2,T3,T4,T5,T6,T7], time, [P1,P2]);
% �¶�||ѹǿ
xmax1 = 550;
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

h3 = line(time1,current,'Parent',ax(3));

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
set(ax(3),'YLim',[0,1400])
set(ax(1),'YLim',[89,93])
set(ax(2),'YLim',[0,0.8])
% ���ÿ̶�
set(ax(1),'XTick',(0:50:xmax1),...
    'YTick',(89:0.5:93));
set(ax(2),'YTick',(0:0.1:0.8));
set(ax(3),'YTick',(0:200:1400));
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
file_root = 'D:\��Դ�ܵ���Ŀ\��Ŀʵ�鱨��\�ȷ�ʵ������2';
tempK = 92.7;
file_name = strcat(file_root, '\', num2str(tempK),'K����ͨ��2');

saveas(fig, strcat(file_name,'.fig'));
saveas(fig, strcat(file_name,'.svg'));
saveas(fig, strcat(file_name,'.png'));