phigh = zeros(500,1);
plow = zeros(9500,1);
% 初始
[N1,edges1] = histcounts(plow,'BinWidth',1);
[N2,edges2] = histcounts(phigh,'BinWidth',1);
figure();
bar(edges1(1:end-1),N1*(-1),'FaceColor','b','EdgeColor','b');
hold on;
grid on;
bar(edges2(1:end-1),N2,'FaceColor','m','EdgeColor','m');
grid on;
% 发展
for i = 1:20
    [phigh, plow] = bianyi(phigh, plow);
end
% bar 图
[N1,edges1] = histcounts(plow,'BinWidth',1);
[N2,edges2] = histcounts(phigh,'BinWidth',1);
figure();
bar(edges1(1:end-1),N1*(-1),'FaceColor','b','EdgeColor','b');
hold on;
grid on;
bar(edges2(1:end-1),N2,'FaceColor','m','EdgeColor','m');
grid on;
% 散点图
h2 = figure();
plot(phigh,rand(length(phigh),1),...
    'LineStyle','none','Marker','o','MarkerSize',6,...
    'MarkerFace','y','MarkerEdge',[1,0,0],'LineWidth',1)
hold on;
plot(plow,rand(length(plow),1),...
    'LineStyle','none','Marker','o','MarkerSize',6,...
    'MarkerFace','m','MarkerEdge',[0,0,1],'LineWidth',1)
grid on;