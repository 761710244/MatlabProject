%% 路由重构——路由切换时间
close all;  % 关闭所有图形窗口
clear;clc;

y1 = [1.435 1.160 1.503 1.972 1.053 1.605 1.467];
y2 = [1.134 1.779 1.044 1.251 1.764 1.172 1.952];
y3 = [1.476 1.889 1.847 1.068 1.264];


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
bar(y2, 0.5);

title('路由切换时间','FontSize',13);
xlabel('第n次路由切换');
ylabel('路由切换时间 (s)');
grid on

print('-dpng','-r600','路由重构_路由切换时间test2');

% 测试3数据绘图
figure;
bar(y3, 0.5);

title('路由切换时间','FontSize',13);
xlabel('第n次路由切换');
ylabel('路由切换时间 (s)');
grid on

print('-dpng','-r600','路由重构_路由切换时间test3');

%% 路由重构优化——路由切换时间
close all;  % 关闭所有图形窗口
clear;clc;

y1 = [1.765 1.018 1.124 1.577 1.186 1.771 1.690];
y2 = [1.154 1.142 1.325 1.240 1.921 1.915];
y3 = [1.946 1.790 1.586 1.552 1.595 1.486];


% 测试1数据绘图
figure;
bar(y1,0.5);
% axis([0 8.5 0 2200]);

title('路由切换时间','FontSize',13);
xlabel('第n次路由切换');
ylabel('路由切换时间 (s)');
grid on

print('-dpng','-r600','路由重构优化_路由切换时间test1');


% 测试2数据绘图
figure;
bar(y2, 0.5);

title('路由切换时间','FontSize',13);
xlabel('第n次路由切换');
ylabel('路由切换时间 (s)');
grid on

print('-dpng','-r600','路由重构优化_路由切换时间test2');

% 测试3数据绘图
figure;
bar(y3, 0.5);

title('路由切换时间','FontSize',13);
xlabel('第n次路由切换');
ylabel('路由切换时间 (s)');
grid on

print('-dpng','-r600','路由重构优化_路由切换时间test3');