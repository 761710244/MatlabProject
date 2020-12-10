% 路由重构吞吐量
close all;

%%   一种业务类型
clear;clc;
f1 = figure;

x1 = [2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,32,34,36,38,40,42,44,46,48,50,52,54,56,58,60];
y1 = [245.14, 490.401, 735.395, 980.467, 1225.02, 1469.9, 1714.29, 1959.23, 2204.56, 2449.77, 2694.43, 2939.06, 3183.96, 3429.24, 3674.2, 3919.27, 4163.91, 4409.19, 4653.61, 4899.01, 5143.77, 5388.77, 5520, 5588, 5496, 5408, 5460, 5532, 5500, 5520];
plot(x1,y1,'*-','linewidth',1.2,'DisplayName', '业务类型A');
hold on

% axis([0 60 0 4200]);
legend('Location', 'northwest')  % 指定图例位置
legend('boxoff');  % 关闭图例框线

title('TTNT节点数与系统吞吐量之间的关系','FontSize',13);
xlabel('TTNT节点数（个）');
ylabel('系统吞吐量 (Kbps)');
grid on

% 以600分辨率输出图片到当前目录
print(f1,'-dpng','-r600','路由重构_吞吐量1');

%% 两种业务类型
clear;clc;
lineWidth = 1.2;
f2 = figure;

%   两种业务类型-A
x1 = [4,8,12,16,20,24,28,32,36,40,44,48,52,56,60];
y1 = [244.979, 490.161, 735.172, 979.655, 1224.76, 1470.36, 1715.67, 1960.53, 2205.6, 2449.98, 2695.24, 2555.63, 2222.15, 2100.99, 1843.83];
plot(x1,y1,'*-','linewidth',lineWidth, 'DisplayName', '业务类型A');
hold on

%   两种业务类型-B
x2 = [4,8,12,16,20,24,28,32,36,40,44,48,52,56,60];
y2 = [244.889, 490.064, 734.547, 980.203, 1225.5, 1470.37, 1715.59, 1960.14, 2205.21, 2450.8, 2694.98, 2940.37, 3185.85, 3431.01, 3676.17];
plot(x2,y2,'o-','linewidth',lineWidth, 'DisplayName', '业务类型B');

% axis([0 60 0 1100]);
legend('Location', 'northwest')  % 指定图例位置
legend('boxoff');  % 关闭图例框线

title('TTNT节点数与系统吞吐量之间的关系','FontSize',13);
xlabel('TTNT节点数（个）');
ylabel('系统吞吐量 (Kbps)');
grid on

print(f2,'-dpng','-r600','路由重构_吞吐量2');

%% 三种业务类型
clear;clc;
lineWidth = 1.2;  % 线宽
f3 = figure;

%   三种业务类型-A
x1 = [6,12,18,24,30,36,42,48,54,60];
y1 = [244.889, 490.064, 734.547, 980.203, 1225.5, 1470.37, 1715.59, 1575.33, 1048.86, 628.195];
plot(x1,y1,'*-','linewidth',lineWidth, 'DisplayName', '业务类型A');
hold on

%   三种业务类型-B
x2 = [6,12,18,24,30,36,42,48,54,60];
y2 = [244.932, 489.968, 735.069, 980.365, 1224.84, 1469.81, 1715.06, 1960.47, 2204.94, 2449.03];
plot(x2,y2,'o-','linewidth',lineWidth, 'DisplayName', '业务类型B')
hold on

%   三种业务类型-C
x3 = [6,12,18,24,30,36,42,48,54,60];
y3 = [245.229, 489.687, 735.295, 980.167, 1225.13, 1470.63, 1715.15, 1960.2, 2206.21, 2450.77];
plot(x3,y3,'s-','linewidth',lineWidth, 'DisplayName', '业务类型C')

% axis([0 60 0 800]);
legend('Location', 'northwest')  % 指定图例位置
legend('boxoff');  % 关闭图例框线

title('TTNT节点数与系统吞吐量之间的关系','FontSize',13);
xlabel('TTNT节点数（个）');
ylabel('系统吞吐量 (Kbps)');
grid on

print(f3,'-dpng','-r600','路由重构_吞吐量3');

%% 四种业务类型
clear;clc;
lineWidth = 1.2;  % 线宽
f4 = figure;

%   四种业务类型-A
x1 = [8,16,24,32,40,48,56];
y1 = [245.239, 490.363, 735.005, 980.257, 1224.8, 1066.8, 334.788];
plot(x1,y1,'*-','linewidth',lineWidth, 'DisplayName', '业务类型A');
hold on

%   四种业务类型-B
x2 = [8,16,24,32,40,48,56];
y2 = [245.057, 490.012, 735.261, 979.568, 1225.49, 1469.72, 1714.93];
plot(x2,y2,'o-','linewidth',lineWidth, 'DisplayName', '业务类型B')

%   四种业务类型-C
x3 = [8,16,24,32,40,48,56];
y3 = [244.943, 489.964, 734.997, 980.865, 1224.43, 1469.64, 1714.62];
plot(x3,y3,'s-','linewidth',lineWidth, 'DisplayName', '业务类型C')

%   四种业务类型-D
x4 = [8,16,24,32,40,48,56];
y4 = [244.9, 490.236, 734.761, 979.615, 1225.3, 1469.84, 1715.67];
plot(x4,y4,'^-','linewidth',lineWidth, 'DisplayName', '业务类型D')

% axis([0 60 0 800]);
legend('Location', 'northwest')  % 指定图例位置
legend('boxoff');  % 关闭图例框线

title('TTNT节点数与系统吞吐量之间的关系','FontSize',13);
xlabel('TTNT节点数（个）');
ylabel('系统吞吐量 (Kbps)');
grid on

print(f4,'-dpng','-r600','路由重构_吞吐量4');