% 跨层优化前后时延对比——by 路由差错消息
close all;

%%   一种业务类型
clear;clc;
f1 = figure;

hold on
x = [2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,32,34,36,38,40,42,44,46,48,50,52,54,56,58,60];
beforeOptY = [19.824, 19.884, 19.824, 19.944, 19.848, 19.904, 19.9097, 19.944, 19.9307, 19.92, 19.9004, 19.944, 19.944, 19.9269, 19.896, 19.869, 19.8946, 19.8907, 19.9124, 19.896, 19.8697, 19.8622, 26.2228, 30.9972, 36.3211, 42.3562, 49.2493, 57.1112, 66.1744, 76.6277];
afterOptY = [13.216, 12.936, 13.1093, 13.196, 13.168, 13.136, 13.2389, 13.286, 13.296, 13.328, 13.3033, 13.2693, 13.2898, 13.2731, 13.2907, 13.296, 13.2772, 13.2827, 13.2623, 13.244, 13.2617, 13.2705, 17.5002, 20.6692, 24.2416, 28.2729, 32.8792, 38.1358, 44.1783, 50.8213];
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
print(f1,'-dpng','-r600','路由优化前后对比_时延1');

%% 两种业务类型
clear;clc;
lineWidth = 1.2;
f2 = figure;

hold on
x = [4,8,12,16,20,24,28,32,36,40,44,48,52,56,60];
%   两种业务类型-A
beforeOptY1 = [23.6448, 23.8608, 23.8368, 23.9328, 24.048, 23.9568, 23.8505, 23.9148, 23.8528, 23.8608, 23.8543, 47.1493, 80.1371, 134.359, 224.738];
%   两种业务类型-B
beforeOptY2 = [20.064, 20.004, 20.064, 19.914, 19.728, 19.724, 19.8411, 19.689, 19.784, 19.716, 19.7913, 19.854, 19.9348, 19.9011, 19.952];
beforeOptY = (beforeOptY1 + beforeOptY2)./2;
plot(x,beforeOptY,'*-','linewidth',lineWidth, 'DisplayName', '优化前');

%   两种业务类型-A
afterOptY1 = [16.2432, 15.9552, 15.8912, 15.8352, 15.8208, 15.7632, 15.7358, 15.7512, 15.7419, 15.7344, 15.7283, 31.1161, 52.9205, 88.6863, 148.36];
%   两种业务类型-B
afterOptY2 = [13.056, 13.096, 13.0293, 13.056, 13.04, 13.056, 13.1246, 13.176, 13.2693, 13.24, 13.2524, 13.236, 13.2283, 13.2103, 13.168];
afterOptY = (afterOptY1 + afterOptY2)./2;
plot(x,afterOptY,'o-','linewidth',lineWidth, 'DisplayName', '优化后');

% axis([0 60 0 1100]);
legend('Location', 'northwest')  % 指定图例位置
legend('boxoff');  % 关闭图例框线

title('TTNT跨层优化时延对比图','FontSize',13);
xlabel('TTNT节点数（个）');
ylabel('系统时延 (ms)');
grid on

print(f2,'-dpng','-r600','路由优化前后对比_时延2');

%% 三种业务类型
clear;clc;
lineWidth = 1.2;  % 线宽
f3 = figure;

hold on
x = [6,12,18,24,30,36,42,48,54,60];
%   三种业务类型-A
beforeOptY1 = [27.5856, 27.8376, 27.8096, 27.9216, 28.056, 27.9496, 27.8256, 76.7267, 173.531, 386.652];
%   三种业务类型-B
beforeOptY2 = [24.0768, 24.0048, 24.0768, 23.8968, 23.6736, 23.6688, 23.8094, 23.6268, 23.7408, 23.9616];
%   三种业务类型-C
beforeOptY3 = [19.824, 20.004, 19.704, 19.674, 19.752, 19.804, 19.7383, 19.929, 20.0107, 19.776];
beforeOptY = (beforeOptY1 + beforeOptY2 + beforeOptY3)./3;
plot(x,beforeOptY,'*-','linewidth',lineWidth, 'DisplayName', '优化前');


%   三种业务类型-A
afterOptY1 = [18.9504, 18.6144, 18.5397, 18.4744, 18.4576, 18.3904, 18.3584, 50.5351, 114.331, 256.331];
%   三种业务类型-B
afterOptY2 = [15.6672, 15.7152, 15.6352, 15.6672, 15.648, 15.6672, 15.7495, 15.8112, 15.9232, 15.888];
%   三种业务类型-C
afterOptY3 = [13.136, 13.016, 13.0827, 13.036, 13.168, 13.3893, 13.296, 13.196, 13.1093, 13.096];
afterOptY = (afterOptY1 + afterOptY2 + afterOptY3)./3;
plot(x,afterOptY,'o-','linewidth',lineWidth, 'DisplayName', '优化后')

% axis([0 60 0 800]);
legend('Location', 'northwest')  % 指定图例位置
legend('boxoff');  % 关闭图例框线

title('TTNT跨层优化时延对比图','FontSize',13);
xlabel('TTNT节点数（个）');
ylabel('系统时延 (ms)');
grid on

print(f3,'-dpng','-r600','路由优化前后对比_时延3');

%% 四种业务类型
clear;clc;
lineWidth = 1.2;  % 线宽
f4 = figure;

hold on
x = [8,16,24,32,40,48,56];
%   四种业务类型-A
beforeOptY1 = [31.9104, 31.4304, 31.3344, 31.2384, 31.5264, 173.395, 481.736];
%   四种业务类型-B
beforeOptY2 = [27.0816, 27.1656, 27.7536, 28.0896, 27.9888, 28.0056, 28.0176];
%   四种业务类型-C
beforeOptY3 = [23.3568, 24.0768, 24.0288, 23.9688, 23.8752, 23.9328, 23.9328];
%   四种业务类型-D
beforeOptY4 = [19.344, 20.064, 19.984, 19.944, 20.04, 19.924, 19.8583];

beforeOptY = (beforeOptY1 + beforeOptY2 + beforeOptY3 + beforeOptY4)./3;
plot(x,beforeOptY,'*-','linewidth',lineWidth, 'DisplayName', '优化前');


%   四种业务类型-A
afterOptY1 = [21.6576, 21.2736, 21.1883, 21.1136, 21.0944, 115.597, 309.381];
%   四种业务类型-B
afterOptY2 = [18.2784, 18.3344, 18.2411, 18.2784, 18.256, 18.2784, 18.3744];
%   四种业务类型-C
afterOptY3 = [15.7632, 15.6192, 15.6992, 15.6432, 15.8016, 16.0672, 15.9552];
%   四种业务类型-D
afterOptY4 = [13.056, 13.096, 13.0293, 13.316, 13.312, 13.0827, 13.1246];

afterOptY = (afterOptY1 + afterOptY2 + afterOptY3 + afterOptY4)./3;
plot(x,afterOptY,'o-','linewidth',lineWidth, 'DisplayName', '优化后')

% axis([0 60 0 800]);
legend('Location', 'northwest')  % 指定图例位置
legend('boxoff');  % 关闭图例框线

title('TTNT跨层优化时延对比图','FontSize',13);
xlabel('TTNT节点数（个）');
ylabel('系统时延 (ms)');
grid on

print(f4,'-dpng','-r600','路由优化前后对比_时延4');