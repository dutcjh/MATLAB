function createfigure(X1, YMatrix1)
%CREATEFIGURE(X1, YMATRIX1)
%  X1:  x ���ݵ�ʸ��
%  YMATRIX1:  y ���ݵľ���

%  �� MATLAB �� 29-Jun-2018 19:01:54 �Զ�����

% ���� figure
figure1 = figure;

% ���� axes
axes1 = axes('Parent',figure1);
hold(axes1,'on');

% ʹ�� plot �ľ������봴������
plot1 = plot(X1,YMatrix1,'LineWidth',2,'Parent',axes1);
set(plot1(1),'DisplayName','\iti','Color',[1 0 0]);
set(plot1(2),'DisplayName','\iti\rm_2','Color',[0 0 1]);
set(plot1(3),'DisplayName','\iti\rm_3','Color',[0 0.498039215803146 0]);

% ���� xlabel
xlabel({'ʱ��(s)'},'FontSize',16,'FontName','����');

% ���� ylabel
ylabel('����(A)','FontSize',16,'FontName','����');

% ȡ�������е�ע���Ա���������� Y ��Χ
% ylim(axes1,[0 4e-08]);
box(axes1,'on');
% ������������������
set(axes1,'FontName','Times New Roman','FontSize',14,'XGrid','on','YGrid',...
    'on');
% ���� legend
legend1 = legend(axes1,'show');
set(legend1,'FontSize',16);

