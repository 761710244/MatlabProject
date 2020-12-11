%% 移动性预测前——路由切换次数与时间
close all;  % 关闭所有图形窗口
clear;clc;

y1 = [1.902 1.954  1.268 1.479 1.310 1.263];
y2 = [1.801 1.991 1.841 1.135 1.486 1.333 1.850];
y3 = [1.409 1.180 1.034 1.028 1.060 1.640 1.851];


% 测试1数据绘图
figure;
bar(y1,0.5);

title('路由切换时间','FontSize',13);
xlabel('第n次路由切换');
ylabel('路由切换时间 (s)');
grid on

print('-dpng','-r600','移动性预测前_路由切换时间test1');


% 测试2数据绘图
figure;
bar(y2, 0.5);

axis([0 8.5 0 2.05]);

title('路由切换时间','FontSize',13);
xlabel('第n次路由切换');
ylabel('路由切换时间 (s)');
grid on

print('-dpng','-r600','移动性预测前_路由切换时间test2');

% 测试3数据绘图
figure;
bar(y3, 0.5);

title('路由切换时间','FontSize',13);
xlabel('第n次路由切换');
ylabel('路由切换时间 (s)');
grid on

print('-dpng','-r600','移动性预测前_路由切换时间test3');

%% 移动性预测后——路由切换次数与时间
close all;  % 关闭所有图形窗口
clear;clc;

y1 = [1.116 0];
y2 = [1.328 1.683 1.405];
y3 = [1.681 1.712];


% 测试1数据绘图
figure;
bar(y1,0.2);
axis([0 2 0 1.4]); 

title('路由切换时间','FontSize',13);
xlabel('第n次路由切换');
ylabel('路由切换时间 (s)');
grid on

print('-dpng','-r600','移动性预测后_路由切换时间test1');


% 测试2数据绘图
figure;
bar(y2, 0.4);

title('路由切换时间','FontSize',13);
xlabel('第n次路由切换');
ylabel('路由切换时间 (s)');
grid on

print('-dpng','-r600','移动性预测后_路由切换时间test2');

% 测试3数据绘图
figure;
bar(y3, 0.4);

title('路由切换时间','FontSize',13);
xlabel('第n次路由切换');
ylabel('路由切换时间 (s)');
grid on

print('-dpng','-r600','移动性预测后_路由切换时间test3');