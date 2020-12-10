% 移动预测优化前后时延对比
close all;

%%   一种业务类型
clear;clc;
f1 = figure;

hold on
x = [2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,32,34,36,38,40,42,44,46,48,50,52,54,56,58,60];
beforeOptY = [13.296, 13.096, 13.0827, 13.096, 13.072, 13.0693, 13.1017, 13.076, 13.0649, 13.056, 13.0705, 13.116, 13.1483, 13.1531, 13.1627, 13.171, 13.1831, 13.1716, 13.1655, 13.188, 13.1779, 13.176, 17.3992, 20.5631, 24.1141, 28.1308, 32.7037, 37.9436, 43.9611, 50.8945];
afterOptY = [6.608, 6.588, 6.5947, 6.578, 6.6, 6.608, 6.5851, 6.598, 6.5991, 6.604, 6.5971, 6.5847, 6.5865, 6.5794, 6.5787, 6.573, 6.6245, 6.6147, 6.6101, 6.608, 6.6099, 6.6025, 8.7271, 10.3132, 12.1, 14.1075, 16.4065, 19.0281, 22.043, 25.5309];
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
beforeOptY1 = [15.7632, 16.0032, 15.9552, 16.0512, 15.9936, 16.0192, 15.9415, 15.9552, 15.9339, 15.9456, 15.9465, 31.5596, 53.6722, 89.9317, 150.448];
%   两种业务类型-B
beforeOptY2 = [13.056, 13.416, 13.4027, 13.216, 13.248, 13.216, 13.296, 13.256, 13.2782, 13.216, 13.1942, 13.196, 13.2037, 13.176, 13.1787];
beforeOptY = (beforeOptY1 + beforeOptY2)./2;
plot(x,beforeOptY,'*-','linewidth',lineWidth, 'DisplayName', '优化前');

%   两种业务类型-A
afterOptY1 = [7.7376, 7.8336, 7.9136, 7.9176, 7.9584, 7.9936, 7.957, 7.9416, 7.9616, 7.9536, 7.9427, 15.7323, 26.7535, 44.8339, 75.0089];
%   两种业务类型-B
afterOptY2 = [6.608, 6.668, 6.728, 6.638, 6.624, 6.5813, 6.6251, 6.643, 6.5947, 6.588, 6.5862, 6.6047, 6.608, 6.6137, 6.6133];
afterOptY = (afterOptY1 + afterOptY2)./2;
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
beforeOptY1 = [18.8384, 18.6704, 18.6144, 18.7264, 18.6592, 18.6891, 18.5984, 51.1896, 115.798, 259.66];
%   三种业务类型-B
beforeOptY2 = [15.8592, 16.0992, 16.0832, 15.8592, 15.8976, 15.8592, 15.9552, 15.9072, 15.9339, 15.8592];
%   三种业务类型-C
beforeOptY3 = [13.216, 13.296, 13.136, 13.256, 13.312, 13.2693, 13.1817, 13.166, 13.1804, 13.208];
beforeOptY = (beforeOptY1 + beforeOptY2 + beforeOptY3)./3;
plot(x,beforeOptY,'*-','linewidth',lineWidth, 'DisplayName', '优化前');


%   三种业务类型-A
afterOptY1 = [9.0272, 9.1392, 9.2325, 9.3772, 9.3072, 9.2885, 9.3232, 25.537, 57.7645, 129.519];
%   三种业务类型-B
afterOptY2 = [7.9296, 8.0016, 8.0736, 7.8816, 7.9008, 7.8736, 7.8542, 7.8936, 7.9509, 7.944];
%   三种业务类型-C
afterOptY3 = [6.728, 6.788, 6.5813, 6.528, 6.576, 6.6747, 6.6537, 6.633, 6.5902, 6.588];
afterOptY = (afterOptY1 + afterOptY2 + afterOptY3)./3;
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
beforeOptY1 = [21.5296, 21.3376, 21.2736, 21.4016, 21.3248, 117.474, 506.408];
%   四种业务类型-B
beforeOptY2 = [18.5024, 18.7824, 18.7637, 18.5024, 18.5472, 18.5024, 18.6144];
%   四种业务类型-C
beforeOptY3 = [15.8592, 15.9552, 15.7632, 15.9072, 15.9744, 15.9232, 15.8181];
%   四种业务类型-D
beforeOptY4 = [13.616, 13.136, 13.296, 13.256, 13.12, 13.1227, 13.1703];

beforeOptY = (beforeOptY1 + beforeOptY2 + beforeOptY3 + beforeOptY4)./4;
plot(x,beforeOptY,'*-','linewidth',lineWidth, 'DisplayName', '优化前');


%   四种业务类型-A
afterOptY1 = [10.5088, 10.6368, 10.7221, 10.7168, 10.6368, 58.3851, 251.778];
%   四种业务类型-B
afterOptY2 = [9.4192, 9.4472, 9.1952, 9.1952, 9.2176, 9.1859, 9.1632];
%   四种业务类型-C
afterOptY3 = [8.1696, 7.8096, 7.9136, 7.8336, 7.8912, 8.0096, 7.9845];
%   四种业务类型-D
afterOptY4 = [6.688, 6.628, 6.528, 6.628, 6.664, 6.588, 6.5909];

afterOptY = (afterOptY1 + afterOptY2 + afterOptY3 + afterOptY4)./4;
plot(x,afterOptY,'o-','linewidth',lineWidth, 'DisplayName', '优化后')

% axis([0 60 1.5 4.5]);
legend('Location', 'northwest')  % 指定图例位置
legend('boxoff');  % 关闭图例框线

title('TTNT跨层优化时延对比图','FontSize',13);
xlabel('TTNT节点数（个）');
ylabel('系统时延 (ms)');
grid on

print(f4,'-dpng','-r600','移动预测优化对比_时延4');