% 跨层优化前后时延对比——by 链路误码
close all;

%%   一种业务类型
clear;clc;
f1 = figure;

hold on
x = [2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,32,34,36,38,40,42,44,46,48,50,52,54,56,58,60];
beforeOptY = [3.3580,3.4758,3.4124,3.4169,3.4004,3.3513,3.4026,3.3839,3.4106,3.3904,3.3826,3.4013,3.3671,3.3530,3.3895,3.3654,3.3619,3.3673,3.3643,3.3667,3.3997,3.4084,4.4830,5.2798,6.2093,7.1896,8.3815,9.7594,11.4684,12.9669];
afterOptY = [1.8948,1.8862,1.8895,1.9098,1.8868,1.9355,1.9308,1.9367,1.9322,1.9468,1.9354,1.9358,1.9327,1.9314,1.9523,1.9269,1.9375,1.9205,1.9174,1.9330,1.9416,1.9236,2.5993,2.9619,3.5120,4.1301,4.8010,5.4796,6.4417,7.5162];
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
print(f1,'-dpng','-r600','误码优化前后对比_时延1');

%% 两种业务类型
clear;clc;
lineWidth = 1.2;
f2 = figure;

hold on
x = [4,8,12,16,20,24,28,32,36,40,44,48,52,56,60];
%   两种业务类型-A
beforeOptY1 = [3.3766,3.3195,3.3144,3.4081,3.3967,3.4478,3.4343,3.3848,3.4453,3.4032,3.4207,4.4551,5.2469,6.0099,6.8825];
%   两种业务类型-B
beforeOptY2 = [3.4316,3.3441,3.3040,3.3243,3.3807,3.3962,3.4086,3.3438,3.3582,3.2942,3.3219,3.3412,3.3772,3.3049,3.3468];
beforeOptY = beforeOptY1 + beforeOptY2;
plot(x,beforeOptY,'*-','linewidth',lineWidth, 'DisplayName', '优化前');

%   两种业务类型-A
afterOptY1 = [1.8815,1.8962,1.8846,1.9332,1.9455,1.9804,1.9889,1.9562,1.9117,1.9327,1.9622,2.5559,2.9868,3.3765,3.9409];
%   两种业务类型-B
afterOptY2 = [1.9863,1.9289,1.9480,1.8716,1.9233,1.9285,1.8973,1.9183,1.8953,1.9245,1.8855,1.8776,1.8949,1.9014,1.9003];
afterOptY = afterOptY1 + afterOptY2;
plot(x,afterOptY,'o-','linewidth',lineWidth, 'DisplayName', '优化后');

% axis([0 60 0 1100]);
legend('Location', 'northwest')  % 指定图例位置
legend('boxoff');  % 关闭图例框线

title('TTNT跨层优化时延对比图','FontSize',13);
xlabel('TTNT节点数（个）');
ylabel('系统时延 (ms)');
grid on

print(f2,'-dpng','-r600','误码优化前后对比_时延2');

%% 三种业务类型
clear;clc;
lineWidth = 1.2;  % 线宽
f3 = figure;

hold on
x = [6,12,18,24,30,36,42,48,54,60];
%   三种业务类型-A
beforeOptY1 = [3.4443,3.3615,3.4482,3.4875,3.4564,3.3611,3.3626,4.4687,5.1126,5.7928];
%   三种业务类型-B
beforeOptY2 = [3.2356,3.2776,3.3764,3.4205,3.2729,3.3297,3.3799,3.3636,3.3370,3.3583];
%   三种业务类型-C
beforeOptY3 = [3.3163,3.2428,3.3256,3.3017,3.2771,3.2832,3.2339,3.2465,3.3220,3.2628];
beforeOptY = beforeOptY1 + beforeOptY2 + beforeOptY3;
plot(x,beforeOptY,'*-','linewidth',lineWidth, 'DisplayName', '优化前');


%   三种业务类型-A
afterOptY1 = [1.9055,1.9355,1.9659,1.9458,1.8836,1.9575,1.9537,2.5709,2.8900,3.3532];
%   三种业务类型-B
afterOptY2 = [1.8196,1.8809,1.9054,1.8806,1.9308,1.9167,1.8996,1.9549,1.8800,1.8824];
%   三种业务类型-C
afterOptY3 = [1.8923,1.9397,1.8506,1.8637,1.9270,1.8983,1.8681,1.8972,1.8682,1.8734];
afterOptY = afterOptY1 + afterOptY2 + afterOptY3;
plot(x,afterOptY,'o-','linewidth',lineWidth, 'DisplayName', '优化后')

% axis([0 60 0 800]);
legend('Location', 'northwest')  % 指定图例位置
legend('boxoff');  % 关闭图例框线

title('TTNT跨层优化时延对比图','FontSize',13);
xlabel('TTNT节点数（个）');
ylabel('系统时延 (ms)');
grid on

print(f3,'-dpng','-r600','误码优化前后对比_时延3');

%% 四种业务类型
clear;clc;
lineWidth = 1.2;  % 线宽
f4 = figure;

hold on
x = [8,16,24,32,40,48,56];
%   四种业务类型-A
beforeOptY1 = [3.6333,3.3696,3.3097,3.4665,3.3846,4.4125,5.0274];
%   四种业务类型-B
beforeOptY2 = [3.3406,3.1598,3.3048,3.3610,3.3877,3.3457,3.2579];
%   四种业务类型-C
beforeOptY3 = [3.2253,3.1949,3.1817,3.2655,3.2995,3.2058,3.2679];
%   四种业务类型-D
beforeOptY4 = [3.1869,3.2406,3.3697,3.2686,3.2690,3.2639,3.2182];

beforeOptY = beforeOptY1 + beforeOptY2 + beforeOptY3 + beforeOptY4;
plot(x,beforeOptY,'*-','linewidth',lineWidth, 'DisplayName', '优化前');


%   四种业务类型-A
afterOptY1 = [1.7855,1.9362,1.9437,1.9752,1.9314,2.5613,2.9238];
%   四种业务类型-B
afterOptY2 = [1.9916,1.8903,1.8916,1.9003,1.9191,1.9154,1.8935];
%   四种业务类型-C
afterOptY3 = [1.7803,1.9237,1.8910,1.8283,1.9321,1.8761,1.8712];
%   四种业务类型-D
afterOptY4 = [1.7998,1.8764,1.8424,1.8208,1.8803,1.8140,1.8266];

afterOptY = afterOptY1 + afterOptY2 + afterOptY3 + afterOptY4;
plot(x,afterOptY,'o-','linewidth',lineWidth, 'DisplayName', '优化后')

% axis([0 60 0 800]);
legend('Location', 'northwest')  % 指定图例位置
legend('boxoff');  % 关闭图例框线

title('TTNT跨层优化时延对比图','FontSize',13);
xlabel('TTNT节点数（个）');
ylabel('系统时延 (ms)');
grid on

print(f4,'-dpng','-r600','误码优化前后对比_时延4');