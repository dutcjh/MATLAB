%% ͼ������
% ͳһͼ���ʽ
% �½���
% 2019/5/30
%% ��ȡ���
% ��ȡ��ǰͼ����
fig = figure();
[axes,h1,h2] = plotyy(time1, current,time, [T1,T2,T3,T4,T5,T6,T7]);

% fig = gcf;
% %��ȡ��������ľ��
% axes1 = findobj(fig,'Tag','sftool surface axes'); 
% %��ȡ�ߵľ�� ��ͬ�������Ʋ�һ��������Ҫ���ģ�����
% line1 = findobj(axes1,'DisplayName','E vs. I');
% line2 = findobj(axes1,'DisplayName','untitled fit 1');

%% ���ò���
% ͼ���С x,y,width,height
width = 1200;
height = 600;
set(fig, 'Position', [200,100,width,height]);
set(axes(1),'Position',[0.1 0.14 0.82 0.8])
% ͼ�񱳾���ɫ ��ɫ
set(fig, 'Color', [1,1,1]);
set(axes,'fontsize',16);
% ���� title
% title({'�ٽ������������'},'FontSize',18);
% ���� xlabel
set(get(axes(1),'XLabel'),'string','ʱ��(s)','FontSize',20,'FontName','����','Color',[0 0 0]);
% xlabel('�¶�(T)');
% ���� ylabel
set(get(axes(1),'YLabel'),'string','����(A)','FontSize',20,'FontName','����','Color',[0 0 0]);
set(get(axes(2),'YLabel'),'string','�¶�(K)','FontSize',20,'FontName','����','Color',[0 0 0]);
% ylabel('�ٽ����(A)');
% ������� X ��Χ
set(axes(1),'XLim',[0,550])
set(axes(2),'XLim',[0,550])
% ������� Y ��Χ
set(axes(1),'YLim',[0,1600])
set(axes(2),'YLim',[89,93])
% ���ÿ̶�
set(axes(1),'XTick',(0:50:550),...
    'YTick',(0:200:1600));
set(axes(2),'YTick',(89:0.5:93));
% ��������
box(axes(1),'on');
grid(axes(1),'on');
% ����line1��ز���
set(h1,'LineWidth',2,'Color','r');
set(h2,'LineWidth',1);
set(axes,'Ycolor',[0 0 0])
% % ����line2��ز���
% set(line2, 'DisplayName','�������');
% set(line2, 'LineWidth',3, 'Color','red');
set(h1,'DisplayName','Current');
set(h2,{'DisplayName'},{'T1';'T2';'T3';'T4';'T5';'T6';'T7'})
% ����legend
legend(axes(1),'show');
set(legend,'Location','best',...
    'Orientation','horizontal',...
    'Interpreter','none','FontSize',16,...
    'EdgeColor',[0.15 0.15 0.15]);
% ���� textbox !!!
% annotation(fig,'textbox',[0.62 0.6 0.27 0.07],...
%     'String','f(x)=0.1703x+1.304',...
%     'FontSize',14,...
%     'FitBoxToText','off');
%% ����ͼ��
file_root = 'D:\��Դ�ܵ���Ŀ\��Ŀʵ�鱨��\�ȷ�ʵ������2';
tempK = 92.7;
file_name = strcat(file_root, '\', num2str(tempK),'K����ͨ��');

saveas(fig, strcat(file_name,'.fig'));
saveas(fig, strcat(file_name,'.svg'));
saveas(fig, strcat(file_name,'.png'));