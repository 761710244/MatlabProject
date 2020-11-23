% 路由重构吞吐量
close all;

%%   一种业务类型
clear;clc;
f1 = figure;

x1 = [2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,32,34,36,38,40,42,44,46,48,50,52,54,56,58,60];
y1 = [179.6210,359.2967,538.7273,718.4403,898.2150,1077.6767,1257.4967,1436.9533,1616.6433,1796.2100,1975.9133,2155.4400,2335.2033,2514.7167,2694.3567,2874.0033,3053.7100,3233.2700,3413.0000,3592.6367,3771.7433,3951.7300,3988.1667,3985.5000,3986.0000,3988.0000,3989.1667,3984.0000,3981.6667,3991.8333];
plot(x1,y1,'*-','linewidth',1.2,'DisplayName', '业务类型A');
hold on

axis([0 60 0 4200]);
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
y1 = [179.6053,359.1687,538.9250,718.4183,898.1023,1077.8267,1257.4333,1436.9333,1616.7733,1796.3967,1975.7467,1873.4000,1702.2367,1526.9700,1353.7033];
plot(x1,y1,'*-','linewidth',lineWidth, 'DisplayName', '业务类型A');
hold on

%   两种业务类型-B
x2 = [4,8,12,16,20,24,28,32,36,40,44,48,52,56,60];
y2 = [175.6463,351.2020,526.8760,702.4143,878.1160,1053.6067,1229.3033,1404.9567,1580.5767,1756.1167,1931.9567,2107.7667,2282.9333,2458.6967,2634.2967];
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
y1 = [179.6293,359.2350,538.9533,718.3530,898.2037,1077.6467,1257.3233,1209.7833,853.2430,515.0560];
plot(x1,y1,'*-','linewidth',lineWidth, 'DisplayName', '业务类型A');
hold on

%   三种业务类型-B
x2 = [6,12,18,24,30,36,42,48,54,60];
y2 = [175.6357,351.2047,526.8633,702.5413,878.0433,1053.7867,1229.4833,1405.0200,1580.6833,1756.3467];
plot(x2,y2,'o-','linewidth',lineWidth, 'DisplayName', '业务类型B')
hold on

%   三种业务类型-C
x3 = [6,12,18,24,30,36,42,48,54,60];
y3 = [171.6413,343.3037,514.9023,686.5143,858.0600,1029.7200,1201.4767,1373.0300,1544.9100,1716.0967];
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
y1 = [179.6860,359.2423,538.8257,718.4667,898.0887,889.9647,381.3050];
plot(x1,y1,'*-','linewidth',lineWidth, 'DisplayName', '业务类型A');
hold on

%   四种业务类型-B
x2 = [8,16,24,32,40,48,56];
y2 = [175.5663,351.2267,526.9090,702.6803,878.1453,1053.7967,1229.3733];
plot(x2,y2,'o-','linewidth',lineWidth, 'DisplayName', '业务类型B')

%   四种业务类型-C
x3 = [8,16,24,32,40,48,56];
y3 = [171.6217,343.1840,514.7563,686.4297,858.2927,1029.7967,1201.4700];
plot(x3,y3,'s-','linewidth',lineWidth, 'DisplayName', '业务类型C')

%   四种业务类型-D
x4 = [8,16,24,32,40,48,56];
y4 = [167.6513,335.1700,502.9120,670.4090,837.9917,1005.7300,1173.3200];
plot(x4,y4,'^-','linewidth',lineWidth, 'DisplayName', '业务类型D')

% axis([0 60 0 800]);
legend('Location', 'northwest')  % 指定图例位置
legend('boxoff');  % 关闭图例框线

title('TTNT节点数与系统吞吐量之间的关系','FontSize',13);
xlabel('TTNT节点数（个）');
ylabel('系统吞吐量 (Kbps)');
grid on

print(f4,'-dpng','-r600','路由重构_吞吐量4');