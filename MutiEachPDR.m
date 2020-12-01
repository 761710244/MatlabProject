% 多跳网络PDR性能测试 PDR:Packet Delivery Rate 包传输成功率
close all;  % 关闭所有图形窗口

%%   一种业务类型
clear;clc;
f1 = figure;

x = [2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,32,34,36,38,40,42,44];
y = [0.9914,0.9988,0.9951,0.993,0.9947,0.9969,0.9937,0.9952,0.994,0.9956,0.9941,0.9964,0.995,0.996,0.9946,0.9953,0.9941,0.9939,0.9939,0.995,0.9966,0.9948];
plot(x,y,'*-','linewidth',1.2);
hold on

axis([0 44 0.99 1]);

title('TTNT节点数与包传输成功率之间的关系','FontSize',13);
xlabel('TTNT节点数（个）');
ylabel('包传输成功率');
grid on

% 以600分辨率输出图片到当前目录
print(f1,'-dpng','-r600','多跳包传输成功率1');

%% 两种业务类型
clear;clc;
lineWidth = 1.2;
f2 = figure;

hold on
x = [4,8,12,16,20,24,28,32,36,40,44];
y = [0.9958,0.994,0.9955,0.9947,0.9959,0.9953,0.9951,0.9975,0.9948,0.9939,0.9936];

plot(x,y,'*-','linewidth',lineWidth);

axis([0 44 0.99 1]);

title('TTNT节点数与包传输成功率之间的关系','FontSize',13);
xlabel('TTNT节点数（个）');
ylabel('包传输成功率');
grid on

print(f2,'-dpng','-r600','多跳包传输成功率2');

%% 三种业务类型
clear;clc;
lineWidth = 1.2;  % 线宽
f3 = figure;

hold on
x = [6,12,18,24,30,36,42];
y = [0.9954,0.9951,0.9944,0.9944,0.9943,0.9944,0.9951];
plot(x,y,'*-','linewidth',lineWidth);

axis([5 42 0.99 1]);

title('TTNT节点数与包传输成功率之间的关系','FontSize',13);
xlabel('TTNT节点数（个）');
ylabel('包传输成功率');
grid on

print(f3,'-dpng','-r600','多跳包传输成功率3');

%% 四种业务类型
clear;clc;
lineWidth = 1.2;  % 线宽
f4 = figure;

hold on
x = [8,16,24,32,40];
y = [0.9951,0.9956,0.9957,0.9946,0.9944];

plot(x,y,'*-','linewidth',lineWidth, 'DisplayName', '业务类型A');

axis([5 40 0.99 1]);

title('TTNT节点数与包传输成功率之间的关系','FontSize',13);
xlabel('TTNT节点数（个）');
ylabel('包传输成功率');
grid on

print(f4,'-dpng','-r600','多跳包传输成功率4');