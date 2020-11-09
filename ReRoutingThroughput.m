% 路由重构吞吐量
close all;

%%   一种业务类型
clear;clc;
f1 = figure;

x1 = [2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,32,34,36,38,40,42,44,46,48,50,52,54,56,58,60];
y1 = [35.0512,70.2952,105.4387,140.4457,175.5853,210.8140,245.9037,280.9610,315.9957,351.6207,386.1977,421.4597,456.7077,491.9940,526.9820,561.7303,597.2307,632.2300,667.3700,702.3440,737.5720,773.0093,783.6667,785.3333,790.3333,779.3333,790.1667,788.8333,786.3333,789.6667];
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
print(f1,'-dpng','-r600','路由重构_吞吐量1');

%% 两种业务类型
clear;clc;
lineWidth = 1.2;
f2 = figure;

%   两种业务类型-A
x1 = [4,8,12,16,20,24,28,32,36,40,44,48,52,56,60];
y1 = [35.1490,70.2903,105.3713,140.4772,175.5325,210.7617,245.9622,280.9817,316.2453,351.3338,386.3548,412.3530,373.2459,341.5135,309.1752];
plot(x1,y1,'*-','linewidth',lineWidth, 'DisplayName', '业务类型A');
hold on

%   两种业务类型-B
x2 = [4,8,12,16,20,24,28,32,36,40,44,48,52,56,60];
y2 = [31.5950,63.2630,94.8053,126.4893,158.1213,189.6032,221.4125,253.0848,284.5693,316.5402,347.8637,379.4803,411.0875,442.6532,474.4917];
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
y1 = [35.1793,70.2265,105.3543,140.4723,175.5940,210.7112,245.8375,281.0880,244.4705,179.7923];
plot(x1,y1,'*-','linewidth',lineWidth, 'DisplayName', '业务类型A');
hold on

%   三种业务类型-B
x2 = [6,12,18,24,30,36,42,48,54,60];
y2 = [31.5882,63.2828,94.9288,126.5557,157.9932,189.7540,221.2100,253.0412,284.6630,316.1635];
plot(x2,y2,'o-','linewidth',lineWidth, 'DisplayName', '业务类型B')
hold on

%   三种业务类型-C
x3 = [6,12,18,24,30,36,42,48,54,60];
y3 = [28.6078,57.3540,86.0383,114.4617,143.1338,171.6180,200.3448,229.1097,257.6998,286.2108];
plot(x3,y3,'s-','linewidth',lineWidth, 'DisplayName', '业务类型C')

% axis([0 60 0 800]);
legend('Location', 'northwest')  % 指定图例位置
legend('boxoff');  % 关闭图例框线

title('TTNT节点数与系统吞吐量之间的关系','FontSize',13);
xlabel('TTNT节点数（个）');
ylabel('系统吞吐量 (Kbps)');
grid on

print(f3,'-dpng','-r600','路由重构_吞吐量3');