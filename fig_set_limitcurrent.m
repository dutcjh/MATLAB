%% ͼ������
% ͳһͼ���ʽ
% �½���
% 2019/5/28
%% ��ȡ���
% ��ȡ��ǰͼ����
fig = gcf;
%��ȡ��������ľ��
axes1 = findobj(fig,'Tag','sftool surface axes'); 
%��ȡ�ߵľ�� ��ͬ�������Ʋ�һ��������Ҫ���ģ�����
line1 = findobj(axes1,'DisplayName','E vs. I');
line2 = findobj(axes1,'DisplayName','untitled fit 1');

tempK = 77;
%% ���ò���
% ͼ���С x,y,width,height
width = 800;
height = 500;
set(fig, 'WindowStyle', 'normal');
set(fig, 'Position', [500,100,width,height]);
set(axes1, 'Position',[0.09 0.14 0.86 0.76]);
% ͼ�񱳾���ɫ ��ɫ
set(fig, 'Color', [1,1,1]);
% �����������С
set(axes1,'FontSize',14);
% ���� title
% title({'�ٽ������������'},'FontSize',18);
% ���� xlabel
xlabel('����(A)');
% xlabel('�¶�(T)');
% ���� ylabel
ylabel('�糡(��V/cm)');
% ylabel('�ٽ����(A)');
% ������� X ��Χ
xlim(axes1,[0 2800]);
% ������� Y ��Χ
ylim(axes1,[-0.2 0.4]);
% ���ÿ̶�
set(axes1,'XTick',(0:400:2800),...
    'YTick',(-0.2:0.1:0.4));
% ��������
% box(axes1,'on');
% grid(axes1,'on');
% ����line1��ز���
% set(line1, 'MarkerSize',10,'Marker','*','LineStyle','none');
set(line1, 'DisplayName','����ֵ');
% ����line2��ز���
set(line2, 'DisplayName','�������');
set(line2, 'LineWidth',3, 'Color','red');
% ����legend
set(legend,...% 'Location','best',...
    'Location','northwest',...
    'Interpreter','none','FontSize',14,...
    'EdgeColor',[0.15 0.15 0.15]);
% ���� textbox !!!
% annotation(fig,'textbox',[0.62 0.6 0.27 0.07],...
%     'String','f(x)=0.1703x+1.304',...
%     'FontSize',14,...
%     'FitBoxToText','off');
%% ����ͼ��
file_root = 'E:\��Դ�ܵ���Ŀ\��Ŀʵ�鱨��\�ȷ�ʵ������2';
file_name = strcat(file_root, '\', num2str(tempK),'K');

saveas(fig, strcat(file_name,'.fig'));
saveas(fig, strcat(file_name,'.svg'));
saveas(fig, strcat(file_name,'.png'));
