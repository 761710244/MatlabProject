% 移动预测前 时延
close all;

%%   一种业务类型
clear;clc;
f1 = figure;

x1 = [2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,32,34,36,38,40,42,44,46,48,50,52,54,56,58,60];
y1 = [3.3463,3.3661,3.4622,3.3113,3.35,3.3618,3.368,3.3959,3.4207,3.4422,3.3955,3.4404,3.3845,3.423,3.3962,3.3056,3.3628,3.3285,3.367,3.3556,3.3703,3.3899,4.4061,5.2556,6.1868,7.2612,8.4661,9.7496,11.3716,13.1102];
plot(x1,y1,'*-','linewidth',1.2,'DisplayName', '业务类型A');
hold on

% axis([0 60 0 1900]);
legend('Location', 'northwest')  % 指定图例位置
legend('boxoff');  % 关闭图例框线

title('TTNT节点数与系统时延之间的关系','FontSize',13);
xlabel('TTNT节点数（个）');
ylabel('系统时延 (ms)');
grid on

% 以600分辨率输出图片到当前目录
print(f1,'-dpng','-r600','移动预测前_时延1');

%% 两种业务类型
clear;clc;
lineWidth = 1.2;
f2 = figure;

%   两种业务类型-A
x1 = [4,8,12,16,20,24,28,32,36,40,44,48,52,56,60];
y1 = [3.5073,3.3825,3.3797,3.3171,3.35,3.5189,3.373,3.3606,3.3867,3.4035,3.3219,4.3794,5.2066,6.0346,6.7699];
plot(x1,y1,'*-','linewidth',lineWidth, 'DisplayName', '业务类型A');
hold on

%   两种业务类型-B
x2 = [4,8,12,16,20,24,28,32,36,40,44,48,52,56,60];
y2 = [3.4689,3.2193,3.3188,3.2922,3.3401,3.4145,3.3383,3.3867,3.3904,3.3362,3.3514,3.4166,3.3596,3.3671,3.2832];
plot(x2,y2,'o-','linewidth',lineWidth, 'DisplayName', '业务类型B');

% axis([0 60 0 1100]);
legend('Location', 'northwest')  % 指定图例位置
legend('boxoff');  % 关闭图例框线

title('TTNT节点数与系统时延之间的关系','FontSize',13);
xlabel('TTNT节点数（个）');
ylabel('系统时延 (ms)');
grid on

print(f2,'-dpng','-r600','移动预测前_时延2');

%% 三种业务类型
clear;clc;
lineWidth = 1.2;  % 线宽
f3 = figure;

%   三种业务类型-A
x1 = [6,12,18,24,30,36,42,48,54,60];
y1 = [3.372,3.5551,3.4404,3.411,3.4107,3.4089,3.382,4.4772,5.1141,5.7212];
plot(x1,y1,'*-','linewidth',lineWidth, 'DisplayName', '业务类型A');
hold on

%   三种业务类型-B
x2 = [6,12,18,24,30,36,42,48,54,60];
y2 = [3.2403,3.3849,3.3383,3.3651,3.2739,3.2547,3.2726,3.3292,3.345,3.3138];
plot(x2,y2,'o-','linewidth',lineWidth, 'DisplayName', '业务类型B')

%   三种业务类型-C
x3 = [6,12,18,24,30,36,42,48,54,60];
y3 = [3.3466,3.3268,3.3388,3.2789,3.3419,3.2832,3.3499,3.2241,3.288,3.306];
plot(x3,y3,'s-','linewidth',lineWidth, 'DisplayName', '业务类型C')

% axis([0 60 0 800]);
legend('Location', 'northwest')  % 指定图例位置
legend('boxoff');  % 关闭图例框线

title('TTNT节点数与系统时延之间的关系','FontSize',13);
xlabel('TTNT节点数（个）');
ylabel('系统时延 (ms)');
grid on

print(f3,'-dpng','-r600','移动预测前_时延3');

%% 四种业务类型
clear;clc;
lineWidth = 1.2;  % 线宽
f4 = figure;

%   四种业务类型-A
x1 = [8,16,24,32,40,48,56];
y1 = [3.3393,3.3428,3.484,3.369,3.3944,4.4921,5.1318];
plot(x1,y1,'*-','linewidth',lineWidth, 'DisplayName', '业务类型A');
hold on

%   四种业务类型-B
x2 = [8,16,24,32,40,48,56];
y2 = [3.3499,3.3371,3.3484,3.2864,3.2977,3.2932,3.2143];
plot(x2,y2,'o-','linewidth',lineWidth, 'DisplayName', '业务类型B')

%   四种业务类型-C
x3 = [8,16,24,32,40,48,56];
y3 = [3.1156,3.1832,3.3287,3.3752,3.3149,3.247,3.2809];
plot(x3,y3,'s-','linewidth',lineWidth, 'DisplayName', '业务类型C')

%   四种业务类型-D
x4 = [8,16,24,32,40,48,56];
y4 = [3.4086,3.0796,3.2328,3.1665,3.1962,3.1958,3.2492];
plot(x4,y4,'^-','linewidth',lineWidth, 'DisplayName', '业务类型D')

% axis([0 60 0 800]);
legend('Location', 'northwest')  % 指定图例位置
legend('boxoff');  % 关闭图例框线

title('TTNT节点数与系统时延之间的关系','FontSize',13);
xlabel('TTNT节点数（个）');
ylabel('系统时延 (ms)');
grid on

print(f4,'-dpng','-r600','移动预测前_时延4');