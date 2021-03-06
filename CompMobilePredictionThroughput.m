% 移动预测优化对比 吞吐量
close all;

%%   一种业务类型
clear;clc;
f1 = figure;

hold on
x = [2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,32,34,36,38,40,42,44,46,48,50,52,54,56,58,60];
beforeOptY = [294.072, 588.088, 882.65, 1176.01, 1469.25, 1763.5, 2057.77, 2351.92, 2645.65, 2939.57, 3233.24, 3527.43, 3821.15, 4114.89, 4408.98, 4702.85, 4997.54, 5291.99, 5586.33, 5880.67, 6175.65, 6469.73, 6676.8, 6504, 6523.2, 6552, 6532.8, 6595.2, 6604.8, 6484.8];
afterOptY = [441.274, 881.966, 1322.96, 1763.8, 2205.5, 2645.27, 3085.97, 3526.73, 3967.27, 4408.4, 4849.73, 5291.26, 5732.16, 6173.23, 6613.78, 7054.42, 7495.48, 7937.08, 8378.5, 8820.02, 9260.82, 9701.11, 9943.2, 9734.4, 9928.8, 9784.8, 9849.6, 9914.4, 9864, 9849.6];
plot(x,beforeOptY,'*-','linewidth',1.2,'DisplayName', '优化前');
plot(x,afterOptY,'o-','linewidth',1.2,'DisplayName', '优化后');

axis([0 60 0 10500]);
legend('Location', 'northwest')  % 指定图例位置
legend('boxoff');  % 关闭图例框线

title('TTNT跨层优化吞吐量对比图','FontSize',13);
xlabel('TTNT节点数（个）');
ylabel('系统吞吐量 (Kbps)');
grid on

% 以600分辨率输出图片到当前目录
print(f1,'-dpng','-r600','移动预测优化对比_吞吐量1');

%% 两种业务类型
clear;clc;
lineWidth = 1.2;
f2 = figure;

hold on
x = [4,8,12,16,20,24,28,32,36,40,44,48,52,56,60];
%   两种业务类型-A
beforeOptY1 = [293.779, 588.176, 881.646, 1175.05, 1469.74, 1764.01, 2057.78, 2351.36, 2645.54, 2939.97, 3234.45, 3186.47, 2723.94, 2473.83, 2103.36];
%   两种业务类型-B
beforeOptY2 = [294.309, 587.994, 881.4, 1176.24, 1469.88, 1763.58, 2058.15, 2352.35, 2647.19, 2940.76, 3235.18, 3528.73, 3823.26, 4116.57, 4410.24];
beforeOptY = beforeOptY1 + beforeOptY2;
plot(x,beforeOptY,'*-','linewidth',lineWidth, 'DisplayName', '优化前');

%   两种业务类型-A
afterOptY1 = [440.417, 882.977, 1322.45, 1764.07, 2206.55, 2646.7, 3086.21, 3528.06, 3969.1, 4410.18, 4849.92, 4443.24, 4054.14, 3743.1, 3236.59];
%   两种业务类型-B
afterOptY2 = [440.578, 881.573, 1323.19, 1765.03, 2203.97, 2646.39, 3088.05, 3526.69, 3967.98, 4409.85, 4851.19, 5291.16, 5730.66, 6171.3, 6613.01];
afterOptY = afterOptY1 + afterOptY2;
plot(x,afterOptY,'o-','linewidth',lineWidth, 'DisplayName', '优化后');

% axis([0 60 0 1100]);
legend('Location', 'northwest')  % 指定图例位置
legend('boxoff');  % 关闭图例框线

title('TTNT跨层优化吞吐量对比图','FontSize',13);
xlabel('TTNT节点数（个）');
ylabel('系统吞吐量 (Kbps)');
grid on

print(f2,'-dpng','-r600','移动预测优化对比_吞吐量2');

%% 三种业务类型
clear;clc;
lineWidth = 1.2;  % 线宽
f3 = figure;

hold on
x = [6,12,18,24,30,36,42,48,54,60];
%   三种业务类型-A
beforeOptY1 = [293.95, 587.994, 881.4, 1176.24, 1469.88, 1763.58, 2058.15, 2009.67, 1263.28, 632.822];
%   三种业务类型-B
beforeOptY2 = [294.373, 587.47, 882.155, 1175.8, 1469.63, 1764.41, 2058.54, 2352.81, 2646.56, 2941.37];
%   三种业务类型-C
beforeOptY3 = [293.803, 587.582, 881.858, 1175.56, 1470.33, 1764.74, 2058.73, 2352.71, 2646.97, 2939.4];
beforeOptY = beforeOptY1 + beforeOptY2 + beforeOptY3;
plot(x,beforeOptY,'*-','linewidth',lineWidth, 'DisplayName', '优化前');


%   三种业务类型-A
afterOptY1 = [440.578, 881.573, 1323.19, 1764.36, 2206.05, 2645.88, 3085.81, 2687.68, 1905.99, 1007.41];
%   三种业务类型-B
afterOptY2 = [441.403, 881.69, 1324.17, 1764.68, 2204.63, 2644.39, 3086.13, 3525.85, 3966.35, 4409.6];
%   三种业务类型-C
afterOptY3 = [441.574, 882.377, 1322.53, 1764.06, 2203.82, 2645.34, 3084.62, 3528.07, 3970.06, 4410.99];
afterOptY = afterOptY1 + afterOptY2 + afterOptY3;
plot(x,afterOptY,'o-','linewidth',lineWidth, 'DisplayName', '优化后')

% axis([0 60 0 800]);
legend('Location', 'northwest')  % 指定图例位置
legend('boxoff');  % 关闭图例框线

title('TTNT跨层优化吞吐量对比图','FontSize',13);
xlabel('TTNT节点数（个）');
ylabel('系统吞吐量 (Kbps)');
grid on

print(f3,'-dpng','-r600','移动预测优化对比_吞吐量3');

%% 四种业务类型
clear;clc;
lineWidth = 1.2;  % 线宽
f4 = figure;

hold on
x = [8,16,24,32,40,48,56];
%   四种业务类型-A
beforeOptY1 = [294.373, 587.47, 882.155, 1175.8, 1469.63, 1421.73, 415.101];
%   四种业务类型-B
beforeOptY2 = [293.803, 587.582, 881.858, 1175.56, 1470.33, 1764.74, 2058.73];
%   四种业务类型-C
beforeOptY3 = [293.904, 587.89, 881.661, 1176.23, 1470.36, 1764.36, 2058.69];
%   四种业务类型-D
beforeOptY4 = [294.09, 588.347, 881.918, 1176.12, 1470.39, 1764.37, 2057.87];

beforeOptY = beforeOptY1 + beforeOptY2 + beforeOptY3 + beforeOptY4;
plot(x,beforeOptY,'*-','linewidth',lineWidth, 'DisplayName', '优化前');


%   四种业务类型-A
afterOptY1 = [441.048, 881.676, 1322.98, 1764.68, 2204.63, 1805.64, 567.6];
%   四种业务类型-B
afterOptY2 = [440.479, 881.119, 1324.23, 1764.06, 2203.82, 2645.34, 3084.62];
%   四种业务类型-C
afterOptY3 = [441.046, 881.59, 1322.57, 1762.5, 2204.23, 2643.51, 3088.22];
%   四种业务类型-D
afterOptY4 = [441.528, 882.766, 1323.31, 1763.94, 2203.66, 2647.11, 3087.56];

afterOptY = afterOptY1 + afterOptY2 + afterOptY3 + afterOptY4;
plot(x,afterOptY,'o-','linewidth',lineWidth, 'DisplayName', '优化后')

% axis([0 60 0 800]);
legend('Location', 'northwest')  % 指定图例位置
legend('boxoff');  % 关闭图例框线

title('TTNT跨层优化吞吐量对比图','FontSize',13);
xlabel('TTNT节点数（个）');
ylabel('系统吞吐量 (Kbps)');
grid on

print(f4,'-dpng','-r600','移动预测优化对比_吞吐量4');