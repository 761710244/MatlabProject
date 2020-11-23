% 跨层优化前后时延对比——by 路由差错消息
close all;

%%   一种业务类型
clear;clc;
f1 = figure;

hold on
x = [2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,32,34,36,38,40,42,44,46,48,50,52,54,56,58,60];
beforeOptY = [5.8725,5.6225,5.7832,5.7185,5.7069,5.8172,5.8228,5.8155,5.7356,5.6937,5.8376,5.8055,5.8645,5.7568,5.8424,5.8918,5.8085,5.7654,5.8165,5.7741,5.7767,5.8012,7.6342,9.1018,10.6162,12.3891,14.3495,16.8385,19.4227,22.2413];
afterOptY = [3.8537,3.7390,3.9230,3.9537,3.8254,3.9977,3.9333,3.8337,3.9440,3.8931,3.7744,3.9192,3.8319,3.8371,3.9104,3.8793,3.8923,3.8618,3.8325,3.8489,3.8248,3.8482,5.0839,6.0947,7.1039,8.2451,9.7777,11.1436,13.0582,14.7811];
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
beforeOptY1 = [5.7005,5.8205,5.6912,5.8115,5.8101,5.7198,5.6948,5.7670,5.7823,5.8165,5.7205,7.7240,8.7074,10.1619,11.6614];
%   两种业务类型-B
beforeOptY2 = [5.8708,5.7828,5.6841,5.8038,5.7972,5.4688,5.7439,5.5573,5.6552,5.6400,5.7267,5.6638,5.7837,5.7733,5.7892];
beforeOptY = beforeOptY1 + beforeOptY2;
plot(x,beforeOptY,'*-','linewidth',lineWidth, 'DisplayName', '优化前');

%   两种业务类型-A
afterOptY1 = [3.9177,3.9843,3.8830,3.8537,3.8553,3.8817,3.8594,3.9427,3.9257,3.8334,3.8973,5.0971,5.9480,6.8860,7.8428];
%   两种业务类型-B
afterOptY2 = [3.9405,3.6605,3.9627,3.7892,3.8061,3.8147,3.8582,3.7848,3.8398,3.8202,3.8229,3.7843,3.8884,3.7986,3.7686];
afterOptY = afterOptY1 + afterOptY2;
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
beforeOptY1 = [5.8125,5.9285,5.6338,6.0945,5.6861,5.8445,5.8874,7.6877,8.7017,9.7810];
%   三种业务类型-B
beforeOptY2 = [5.9908,5.7040,5.7334,5.6448,5.6732,5.7861,5.7759,5.7218,5.6779,5.7268];
%   三种业务类型-C
beforeOptY3 = [5.5010,5.5610,5.6557,5.7010,5.6962,5.5317,5.6199,5.6870,5.5219,5.5586];
beforeOptY = beforeOptY1 + beforeOptY2 + beforeOptY3;
plot(x,beforeOptY,'*-','linewidth',lineWidth, 'DisplayName', '优化前');


%   三种业务类型-A
afterOptY1 = [3.8590,3.9057,3.7701,3.8250,3.9043,3.8221,3.8354,5.1762,5.8562,6.7177];
%   三种业务类型-B
afterOptY2 = [3.8098,3.8178,3.9005,3.7805,3.8098,3.8929,3.7451,3.8405,3.7618,3.7933];
%   三种业务类型-C
afterOptY3 = [3.8887,3.6967,3.6753,3.7593,3.6855,3.8807,3.8513,3.7720,3.7491,3.8268];
afterOptY = afterOptY1 + afterOptY2 + afterOptY3;
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
beforeOptY1 = [5.8565,5.8285,5.7632,5.7005,5.7037,7.7059,8.6531];
%   四种业务类型-B
beforeOptY2 = [5.8308,5.8748,5.6894,5.7008,5.7876,5.6894,5.7433];
%   四种业务类型-C
beforeOptY3 = [5.5610,5.9190,5.4917,5.5120,5.6474,5.5730,5.6290];
%   四种业务类型-D
beforeOptY4 = [5.9393,5.5093,5.5246,5.4473,5.4745,5.4499,5.5678];

beforeOptY = beforeOptY1 + beforeOptY2 + beforeOptY3 + beforeOptY4;
plot(x,beforeOptY,'*-','linewidth',lineWidth, 'DisplayName', '优化前');


%   四种业务类型-A
afterOptY1 = [3.7017,3.8737,3.8617,3.8130,3.9795,5.1684,5.8108];
%   四种业务类型-B
afterOptY2 = [3.6712,3.6672,3.8063,3.7845,3.7869,3.8401,3.7451];
%   四种业务类型-C
afterOptY3 = [3.8913,3.7593,3.8193,3.7613,3.7820,3.7616,3.7035];
%   四种业务类型-D
afterOptY4 = [3.7622,3.6875,3.6875,3.7008,3.6507,3.7466,3.6772];

afterOptY = afterOptY1 + afterOptY2 + afterOptY3 + afterOptY4;
plot(x,afterOptY,'o-','linewidth',lineWidth, 'DisplayName', '优化后')

% axis([0 60 0 800]);
legend('Location', 'northwest')  % 指定图例位置
legend('boxoff');  % 关闭图例框线

title('TTNT跨层优化时延对比图','FontSize',13);
xlabel('TTNT节点数（个）');
ylabel('系统时延 (ms)');
grid on

print(f4,'-dpng','-r600','路由优化前后对比_时延4');