% 移动预测优化前后时延对比
close all;

%%   一种业务类型
clear;clc;
f1 = figure;

hold on
x = [2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,32,34,36,38,40,42,44,46,48,50,52,54,56,58,60];
beforeOptY = [3.3463,3.3661,3.4622,3.3113,3.35,3.3618,3.368,3.3959,3.4207,3.4422,3.3955,3.4404,3.3845,3.423,3.3962,3.3056,3.3628,3.3285,3.367,3.3556,3.3703,3.3899,4.4061,5.2556,6.1868,7.2612,8.4661,9.7496,11.3716,13.1102];
afterOptY = [2.0415,1.8682,1.8975,1.9648,1.9306,1.9851,1.9491,1.9263,1.9271,1.946,1.9256,1.9266,1.9161,1.9582,1.9466,1.926,1.9428,1.9259,1.9442,1.9314,1.9294,1.9274,2.5428,3.005,3.5486,4.1449,4.856,5.6399,6.4235,7.471];
plot(x,beforeOptY,'*-','linewidth',1.2,'DisplayName', '优化前');
plot(x,afterOptY,'o-','linewidth',1.2,'DisplayName', '优化后');

% axis([0 60 0 1900]);
legend('Location', 'northwest')  % 指定图例位置
legend('boxoff');  % 关闭图例框线

title('TTNT跨层优化时延对比图','FontSize',13);
xlabel('TTNT节点数（个）');
ylabel('系统时延 (ms)');
grid on

% 以600分辨率输出图片到当前目录
print(f1,'-dpng','-r600','移动预测优化对比_时延1');

%% 两种业务类型
clear;clc;
lineWidth = 1.2;
f2 = figure;

hold on
x = [4,8,12,16,20,24,28,32,36,40,44,48,52,56,60];
%   两种业务类型-A
beforeOptY1 = [3.5073,3.3825,3.3797,3.3171,3.35,3.5189,3.373,3.3606,3.3867,3.4035,3.3219,4.3794,5.2066,6.0346,6.7699];
%   两种业务类型-B
beforeOptY2 = [3.4689,3.2193,3.3188,3.2922,3.3401,3.4145,3.3383,3.3867,3.3904,3.3362,3.3514,3.4166,3.3596,3.3671,3.2832];
beforeOptY = beforeOptY1 + beforeOptY2;
plot(x,beforeOptY,'*-','linewidth',lineWidth, 'DisplayName', '优化前');

%   两种业务类型-A
afterOptY1 = [2.0708,1.8695,1.9713,1.9845,1.9354,1.9526,1.9415,1.9257,1.9523,1.9714,1.9728,2.5667,2.9336,3.4735,3.8844];
%   两种业务类型-B
afterOptY2 = [1.8476,1.9002,1.9431,1.8972,1.9062,1.8756,1.8762,1.9008,1.9258,1.9134,1.8521,1.8816,1.925,1.9054,1.9237];
afterOptY = afterOptY1 + afterOptY2;
plot(x,afterOptY,'o-','linewidth',lineWidth, 'DisplayName', '优化后');

% axis([0 60 0 1100]);
legend('Location', 'northwest')  % 指定图例位置
legend('boxoff');  % 关闭图例框线

title('TTNT跨层优化时延对比图','FontSize',13);
xlabel('TTNT节点数（个）');
ylabel('系统时延 (ms)');
grid on

print(f2,'-dpng','-r600','移动预测优化对比_时延2');

%% 三种业务类型
clear;clc;
lineWidth = 1.2;  % 线宽
f3 = figure;

hold on
x = [6,12,18,24,30,36,42,48,54,60];
%   三种业务类型-A
beforeOptY1 = [3.372,3.5551,3.4404,3.411,3.4107,3.4089,3.382,4.4772,5.1141,5.7212];
%   三种业务类型-B
beforeOptY2 = [3.2403,3.3849,3.3383,3.3651,3.2739,3.2547,3.2726,3.3292,3.345,3.3138];
%   三种业务类型-C
beforeOptY3 = [3.3466,3.3268,3.3388,3.2789,3.3419,3.2832,3.3499,3.2241,3.288,3.306];
beforeOptY = beforeOptY1 + beforeOptY2 + beforeOptY3;
plot(x,beforeOptY,'*-','linewidth',lineWidth, 'DisplayName', '优化前');


%   三种业务类型-A
afterOptY1 = [1.9735,1.9322,1.9424,1.9662,1.9162,1.9193,1.959,2.5406,2.9539,3.3265];
%   三种业务类型-B
afterOptY2 = [1.9156,1.9036,1.9685,1.9403,1.9169,1.8605,1.9024,1.8848,1.9159,1.9263];
%   三种业务类型-C
afterOptY3 = [1.9403,1.837,1.8697,1.869,1.8715,1.8781,1.8542,1.8395,1.8791,1.9018];
afterOptY = afterOptY1 + afterOptY2 + afterOptY3;
plot(x,afterOptY,'o-','linewidth',lineWidth, 'DisplayName', '优化后')

% axis([0 60 0 800]);
legend('Location', 'northwest')  % 指定图例位置
legend('boxoff');  % 关闭图例框线

title('TTNT跨层优化时延对比图','FontSize',13);
xlabel('TTNT节点数（个）');
ylabel('系统时延 (ms)');
grid on

print(f3,'-dpng','-r600','移动预测优化对比_时延3');

%% 四种业务类型
clear;clc;
lineWidth = 1.2;  % 线宽
f4 = figure;

hold on
x = [8,16,24,32,40,48,56];
%   四种业务类型-A
beforeOptY1 = [3.3393,3.3428,3.484,3.369,3.3944,4.4921,5.1318];
%   四种业务类型-B
beforeOptY2 = [3.3499,3.3371,3.3484,3.2864,3.2977,3.2932,3.2143];
%   四种业务类型-C
beforeOptY3 = [3.1156,3.1832,3.3287,3.3752,3.3149,3.247,3.2809];
%   四种业务类型-D
beforeOptY4 = [3.4086,3.0796,3.2328,3.1665,3.1962,3.1958,3.2492];

beforeOptY = beforeOptY1 + beforeOptY2 + beforeOptY3 + beforeOptY4;
plot(x,beforeOptY,'*-','linewidth',lineWidth, 'DisplayName', '优化前');


%   四种业务类型-A
afterOptY1 = [1.8895,1.9308,1.8491,1.9228,1.9015,2.4891,2.9047];
%   四种业务类型-B
afterOptY2 = [1.8769,1.9342,1.8538,1.9352,1.903,1.9187,1.9211];
%   四种业务类型-C
afterOptY3 = [1.8803,1.829,1.8812,1.9217,1.8569,1.887,1.84];
%   四种业务类型-D
afterOptY4 = [1.8491,1.8344,1.7682,1.8551,1.8248,1.8502,1.8653];

afterOptY = afterOptY1 + afterOptY2 + afterOptY3 + afterOptY4;
plot(x,afterOptY,'o-','linewidth',lineWidth, 'DisplayName', '优化后')

% axis([0 60 0 800]);
legend('Location', 'northwest')  % 指定图例位置
legend('boxoff');  % 关闭图例框线

title('TTNT跨层优化时延对比图','FontSize',13);
xlabel('TTNT节点数（个）');
ylabel('系统时延 (ms)');
grid on

print(f4,'-dpng','-r600','移动预测优化对比_时延4');