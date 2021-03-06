% Tcp跨层优化吞吐量——by 路由差错消息
close all;  % 关闭所有图形窗口

%%   一种业务类型
clear;clc;
f1 = figure;

x1 = [2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,32,34,36,38,40,42,44,46,48,50,52,54,56,58,60];
y1 = [293.707, 588.022, 882.256, 1175.9, 1469.9, 1764.59, 2057.99, 2352.34, 2646.39, 2939.91, 3233.64, 3527.84, 3821.91, 4115.95, 4410.18, 4703.7, 4997.38, 5291.67, 5585.39, 5879.69, 6173.16, 6467.59, 6547.2, 6676.8, 6696, 6705.6, 6504, 6547.2, 6667.2, 6556.8];
plot(x1,y1,'*-','linewidth',1.2,'DisplayName', '业务类型A');
hold on

% axis([0 60 0 1900]);
legend('Location', 'northwest')  % 指定图例位置
legend('boxoff');  % 关闭图例框线

title('TTNT节点数与系统吞吐量之间的关系','FontSize',13);
xlabel('TTNT节点数（个）');
ylabel('系统吞吐量 (Kbps)');
grid on

% 以600分辨率输出图片到当前目录
print(f1,'-dpng','-r600','路由优化_吞吐量1');

%% 两种业务类型
clear;clc;
lineWidth = 1.2;
f2 = figure;

%   两种业务类型-A
x1 = [4,8,12,16,20,24,28,32,36,40,44,48,52,56,60];
y1 = [294.005, 587.509, 881.803, 1175.72, 1469.72, 1764.57, 2058.17, 2352.43, 2646.36, 2940.46, 3234.47, 2960.81, 2709.45, 2468.93, 2145.53];
plot(x1,y1,'*-','linewidth',lineWidth, 'DisplayName', '业务类型A');
hold on

%   两种业务类型-B
x2 = [4,8,12,16,20,24,28,32,36,40,44,48,52,56,60];
y2 = [294.227, 587.608, 881.528, 1176.24, 1470.39, 1764.1, 2058.61, 2352.38, 2646.31, 2940.78, 3234.89, 3528.79, 3823.35, 4116.67, 4411.27];
plot(x2,y2,'o-','linewidth',lineWidth, 'DisplayName', '业务类型B');

% axis([0 60 0 1100]);
legend('Location', 'northwest')  % 指定图例位置
legend('boxoff');  % 关闭图例框线

title('TTNT节点数与系统吞吐量之间的关系','FontSize',13);
xlabel('TTNT节点数（个）');
ylabel('系统吞吐量 (Kbps)');
grid on

print(f2,'-dpng','-r600','路由优化_吞吐量2');

%% 三种业务类型
clear;clc;
lineWidth = 1.2;  % 线宽
f3 = figure;

%   三种业务类型-A
x1 = [6,12,18,24,30,36,42,48,54,60];
y1 = [294.227, 587.608, 881.528, 1176.24, 1470.39, 1764.1, 2058.61, 1784.63, 1325.64, 675.422];
plot(x1,y1,'*-','linewidth',lineWidth, 'DisplayName', '业务类型A');
hold on

%   三种业务类型-B
x2 = [6,12,18,24,30,36,42,48,54,60];
y2 = [293.685, 587.894, 881.894, 1176.05, 1470.68, 1764.07, 2058.13, 2352.47, 2646.39, 2940.88];
plot(x2,y2,'o-','linewidth',lineWidth, 'DisplayName', '业务类型B')
hold on

%   三种业务类型-C
x3 = [6,12,18,24,30,36,42,48,54,60];
y3 = [293.824, 587.829, 882.677, 1176.39, 1469.78, 1764.49, 2058.66, 2352.5, 2647.16, 2940.5];
plot(x3,y3,'s-','linewidth',lineWidth, 'DisplayName', '业务类型C')

% axis([0 60 0 800]);
legend('Location', 'northwest')  % 指定图例位置
legend('boxoff');  % 关闭图例框线

title('TTNT节点数与系统吞吐量之间的关系','FontSize',13);
xlabel('TTNT节点数（个）');
ylabel('系统吞吐量 (Kbps)');
grid on

print(f3,'-dpng','-r600','路由优化_吞吐量3');

%% 四种业务类型
clear;clc;
lineWidth = 1.2;  % 线宽
f4 = figure;

%   四种业务类型-A
x1 = [8,16,24,32,40,48,56];
y1 = [293.685, 587.894, 881.894, 1176.05, 1470.68, 1196.32, 410.274];
plot(x1,y1,'*-','linewidth',lineWidth, 'DisplayName', '业务类型A');
hold on

%   四种业务类型-B
x2 = [8,16,24,32,40,48,56];
y2 = [293.824, 587.829, 882.677, 1176.39, 1469.78, 1764.49, 2058.66];
plot(x2,y2,'o-','linewidth',lineWidth, 'DisplayName', '业务类型B')

%   四种业务类型-C
x3 = [8,16,24,32,40,48,56];
y3 = [293.81, 587.934, 881.531, 1176.04, 1470.09, 1764.26, 2058.84];
plot(x3,y3,'s-','linewidth',lineWidth, 'DisplayName', '业务类型C')

%   四种业务类型-D
x4 = [8,16,24,32,40,48,56];
y4 = [293.798, 588.307, 882.571, 1176.34, 1470.69, 1764.53, 2057.82];
plot(x4,y4,'^-','linewidth',lineWidth, 'DisplayName', '业务类型D')

% axis([0 60 0 800]);
legend('Location', 'northwest')  % 指定图例位置
legend('boxoff');  % 关闭图例框线

title('TTNT节点数与系统吞吐量之间的关系','FontSize',13);
xlabel('TTNT节点数（个）');
ylabel('系统吞吐量 (Kbps)');
grid on

print(f4,'-dpng','-r600','路由优化_吞吐量4');
