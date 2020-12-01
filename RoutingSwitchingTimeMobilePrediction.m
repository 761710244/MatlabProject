%% 移动性预测前——路由切换次数与时间
close all;  % 关闭所有图形窗口
clear;clc;

y1 = [1618 1490 1688 1936 1618];
y2 = [1850 1801 1991 1841 1135 1486 1333 1850];
y3 = [1851 1409 1180 1034 1028 1060 1640 1851];


% 测试1数据绘图
figure;
bar(y1./1000,0.5);

title('路由切换时间','FontSize',13);
xlabel('第n次路由切换');
ylabel('路由切换时间 (s)');
grid on

print('-dpng','-r600','移动性预测前_路由切换时间test1');


% 测试2数据绘图
figure;
bar(y2./1000, 0.5);

axis([0 8.5 0 2.05]);

title('路由切换时间','FontSize',13);
xlabel('第n次路由切换');
ylabel('路由切换时间 (s)');
grid on

print('-dpng','-r600','移动性预测前_路由切换时间test2');

% 测试3数据绘图
figure;
bar(y3./1000, 0.5);

title('路由切换时间','FontSize',13);
xlabel('第n次路由切换');
ylabel('路由切换时间 (s)');
grid on

print('-dpng','-r600','移动性预测前_路由切换时间test3');

%% 移动性预测后——路由切换次数与时间
close all;  % 关闭所有图形窗口
clear;clc;

y1 = [1116 1116];
y2 = [1405 1328 1683 1405];
y3 = [1712 1681 1712];


% 测试1数据绘图
figure;
bar(y1./1000,0.3);
% axis([0 8.5 0 2200]);

title('路由切换时间','FontSize',13);
xlabel('第n次路由切换');
ylabel('路由切换时间 (s)');
grid on

print('-dpng','-r600','移动性预测后_路由切换时间test1');


% 测试2数据绘图
figure;
bar(y2./1000, 0.4);

title('路由切换时间','FontSize',13);
xlabel('第n次路由切换');
ylabel('路由切换时间 (s)');
grid on

print('-dpng','-r600','移动性预测后_路由切换时间test2');

% 测试3数据绘图
figure;
bar(y3./1000, 0.4);

title('路由切换时间','FontSize',13);
xlabel('第n次路由切换');
ylabel('路由切换时间 (s)');
grid on

print('-dpng','-r600','移动性预测后_路由切换时间test3');