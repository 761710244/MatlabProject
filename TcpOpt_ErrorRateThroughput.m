% Tcp跨层优化吞吐量——by 链路误码率
close all;  % 关闭所有图形窗口

%%   一种业务类型
clear;clc;
f1 = figure;

x1 = [2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,32,34,36,38,40,42,44,46,48,50,52,54,56,58,60];
y1 = [440.47, 882.494, 1322.83, 1764.67, 2206.97, 2644.61, 3086.41, 3528.51, 3970.13, 4408.71, 4850.9, 5291.78, 5731.54, 6173.79, 6617.28, 7055.67, 7498.05, 7935.28, 8379.86, 8818.92, 9260.62, 9702.99, 9741.6, 9979.2, 10036.8, 10065.6, 9993.6, 9763.2, 9792, 9806.4];
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
print(f1,'-dpng','-r600','误码优化_吞吐量1');

%% 两种业务类型
clear;clc;
lineWidth = 1.2;
f2 = figure;

%   两种业务类型-A
x1 = [4,8,12,16,20,24,28,32,36,40,44,48,52,56,60];
y1 = [441.199, 882.11, 1322.25, 1763.71, 2205.74, 2647.5, 3087.3, 3526.98, 3968.33, 4408.08, 4849.54, 4759.88, 4231.52, 3661.12, 3154.11];
plot(x1,y1,'*-','linewidth',lineWidth, 'DisplayName', '业务类型A');
hold on

%   两种业务类型-B
x2 = [4,8,12,16,20,24,28,32,36,40,44,48,52,56,60];
y2 = [440.446, 882.031, 1322.91, 1763.8, 2205.95, 2645.23, 3087.08, 3527.79, 3969.25, 4408.74, 4850.68, 5291.32, 5733.28, 6174.08, 6616.29];
plot(x2,y2,'o-','linewidth',lineWidth, 'DisplayName', '业务类型B');

% axis([0 60 0 1100]);
legend('Location', 'northwest')  % 指定图例位置
legend('boxoff');  % 关闭图例框线

title('TTNT节点数与系统吞吐量之间的关系','FontSize',13);
xlabel('TTNT节点数（个）');
ylabel('系统吞吐量 (Kbps)');
grid on

print(f2,'-dpng','-r600','误码优化_吞吐量2');

%% 三种业务类型
clear;clc;
lineWidth = 1.2;  % 线宽
f3 = figure;

%   三种业务类型-A
x1 = [6,12,18,24,30,36,42,48,54,60];
y1 = [440.818, 882.338, 1322.96, 1765.23, 2206.22, 2645.95, 3087.11, 2780.42, 2115.28, 1236.4];
plot(x1,y1,'*-','linewidth',lineWidth, 'DisplayName', '业务类型A');
hold on

%   三种业务类型-B
x2 = [6,12,18,24,30,36,42,48,54,60];
y2 = [440.654, 881.338, 1323.08, 1764.23, 2203.84, 2645.16, 3087.07, 3527.8, 3967.89, 4411.28];
plot(x2,y2,'o-','linewidth',lineWidth, 'DisplayName', '业务类型B')
hold on

%   三种业务类型-C
x3 = [6,12,18,24,30,36,42,48,54,60];
y3 = [440.45, 881.256, 1322.73, 1764.86, 2205.47, 2645.71, 3087.44, 3526.98, 3968.03, 4410.72];
plot(x3,y3,'s-','linewidth',lineWidth, 'DisplayName', '业务类型C')

% axis([0 60 0 800]);
legend('Location', 'northwest')  % 指定图例位置
legend('boxoff');  % 关闭图例框线

title('TTNT节点数与系统吞吐量之间的关系','FontSize',13);
xlabel('TTNT节点数（个）');
ylabel('系统吞吐量 (Kbps)');
grid on

print(f3,'-dpng','-r600','误码优化_吞吐量3');

%% 四种业务类型
clear;clc;
lineWidth = 1.2;  % 线宽
f4 = figure;

%   四种业务类型-A
x1 = [8,16,24,32,40,48,56];
y1 = [440.832, 881.304, 1322.88, 1764.22, 2204.95, 2111.27, 725.374];
plot(x1,y1,'*-','linewidth',lineWidth, 'DisplayName', '业务类型A');
hold on

%   四种业务类型-B
x2 = [8,16,24,32,40,48,56];
y2 = [441.022, 881.362, 1322.84, 1763.02, 2204.77, 2646.19, 3087.75];
plot(x2,y2,'o-','linewidth',lineWidth, 'DisplayName', '业务类型B')

%   四种业务类型-C
x3 = [8,16,24,32,40,48,56];
y3 = [440.731, 882.058, 1322.79, 1763.96, 2203.38, 2647.11, 3086.9];
plot(x3,y3,'s-','linewidth',lineWidth, 'DisplayName', '业务类型C')

%   四种业务类型-D
x4 = [8,16,24,32,40,48,56];
y4 = [441.427, 882.42, 1322.7, 1764.23, 2203.97, 2646.64, 3086.37];
plot(x4,y4,'^-','linewidth',lineWidth, 'DisplayName', '业务类型D')

% axis([0 60 0 800]);
legend('Location', 'northwest')  % 指定图例位置
legend('boxoff');  % 关闭图例框线

title('TTNT节点数与系统吞吐量之间的关系','FontSize',13);
xlabel('TTNT节点数（个）');
ylabel('系统吞吐量 (Kbps)');
grid on

print(f4,'-dpng','-r600','误码优化_吞吐量4');