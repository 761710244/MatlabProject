%% 路由重构——路由切换时间
close all;  % 关闭所有图形窗口
clear;clc;

y1 = [1467 1435 1160 1503 1972 1053 1605 1467];
y2 = [1952 1134 1779 1044 1251 1764 1172 1952];
y3 = [1264 1476 1889 1847 1068 1264];


% 测试1数据绘图
figure;
bar(y1./1000,0.5);
% axis([0 8.5 0 2200]);

title('路由切换时间','FontSize',13);
xlabel('第n次路由切换');
ylabel('路由切换时间 (s)');
grid on

print('-dpng','-r600','路由重构_路由切换时间test1');


% 测试2数据绘图
figure;
bar(y2./1000, 0.5);

title('路由切换时间','FontSize',13);
xlabel('第n次路由切换');
ylabel('路由切换时间 (s)');
grid on

print('-dpng','-r600','路由重构_路由切换时间test2');

% 测试3数据绘图
figure;
bar(y3./1000, 0.5);

title('路由切换时间','FontSize',13);
xlabel('第n次路由切换');
ylabel('路由切换时间 (s)');
grid on

print('-dpng','-r600','路由重构_路由切换时间test3');

%% 路由重构优化——路由切换时间
close all;  % 关闭所有图形窗口
clear;clc;

y1 = [1690 1765 1018 1124 1577 1186 1771 1690];
y2 = [1915 1154 1142 1325 1240 1921 1915];
y3 = [1486 1946 1790 1586 1552 1595 1486];


% 测试1数据绘图
figure;
bar(y1./1000,0.5);
% axis([0 8.5 0 2200]);

title('路由切换时间','FontSize',13);
xlabel('第n次路由切换');
ylabel('路由切换时间 (s)');
grid on

print('-dpng','-r600','路由重构优化_路由切换时间test1');


% 测试2数据绘图
figure;
bar(y2./1000, 0.5);

title('路由切换时间','FontSize',13);
xlabel('第n次路由切换');
ylabel('路由切换时间 (s)');
grid on

print('-dpng','-r600','路由重构优化_路由切换时间test2');

% 测试3数据绘图
figure;
bar(y3./1000, 0.5);

title('路由切换时间','FontSize',13);
xlabel('第n次路由切换');
ylabel('路由切换时间 (s)');
grid on

print('-dpng','-r600','路由重构优化_路由切换时间test3');