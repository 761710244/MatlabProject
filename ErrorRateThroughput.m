% 链路误码 吞吐量
close all;

%%   一种业务类型
clear;clc;
f1 = figure;

x1 = [2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,32,34,36,38,40,42,44,46,48,50,52,54,56,58,60];
y1 = [56.3067,112.5180,168.6360,224.8047,281.1487,337.4517,393.3210,449.7850,505.8887,562.0493,618.1010,674.4543,730.7353,787.1093,843.2483,899.5800,955.3083,1011.3600,1067.6233,1123.6933,1180.8000,1236.1033,1256.5333,1254.1333,1262.9333,1264.0000,1266.4000,1263.4667,1258.1333,1263.4667];
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
print(f1,'-dpng','-r600','链路误码_吞吐量1');

%% 两种业务类型
clear;clc;
lineWidth = 1.2;
f2 = figure;

%   两种业务类型-A
x1 = [4,8,12,16,20,24,28,32,36,40,44,48,52,56,60];
y1 = [56.1325,112.3995,168.6533,224.8883,281.1035,337.1880,393.4061,449.4669,505.8189,562.1104,617.9429,654.9609,613.1183,541.5781,488.5488];
plot(x1,y1,'*-','linewidth',lineWidth, 'DisplayName', '业务类型A');
hold on

%   两种业务类型-B
x2 = [4,8,12,16,20,24,28,32,36,40,44,48,52,56,60];
y2 = [50.5944,101.0240,151.7677,202.4557,253.0984,303.5003,354.1237,405.0795,455.5611,505.9677,555.9856,607.1725,658.0816,708.5552,759.1845];
plot(x2,y2,'o-','linewidth',lineWidth, 'DisplayName', '业务类型B');

% axis([0 60 0 1100]);
legend('Location', 'northwest')  % 指定图例位置
legend('boxoff');  % 关闭图例框线

title('TTNT节点数与系统吞吐量之间的关系','FontSize',13);
xlabel('TTNT节点数（个）');
ylabel('系统吞吐量 (Kbps)');
grid on

print(f2,'-dpng','-r600','链路误码_吞吐量2');

%% 三种业务类型
clear;clc;
lineWidth = 1.2;  % 线宽
f3 = figure;

%   三种业务类型-A
x1 = [6,12,18,24,30,36,42,48,54,60];
y1 = [56.2432,112.3477,168.7003,224.9360,280.9675,337.2901,393.5736,449.7816,401.4625,308.5022];
plot(x1,y1,'*-','linewidth',lineWidth, 'DisplayName', '业务类型A');
hold on

%   三种业务类型-B
x2 = [6,12,18,24,30,36,42,48,54,60];
y2 = [50.6075,100.9701,151.7744,202.4440,252.9707,303.6853,353.7493,404.9680,455.4419,506.2251];
plot(x2,y2,'o-','linewidth',lineWidth, 'DisplayName', '业务类型B')
hold on

%   三种业务类型-C
x3 = [6,12,18,24,30,36,42,48,54,60];
y3 = [45.8744,91.6656,137.5205,183.2501,228.9144,274.9296,320.3821,366.3312,412.4291,458.3395];
plot(x3,y3,'s-','linewidth',lineWidth, 'DisplayName', '业务类型C')

% axis([0 60 0 800]);
legend('Location', 'northwest')  % 指定图例位置
legend('boxoff');  % 关闭图例框线

title('TTNT节点数与系统吞吐量之间的关系','FontSize',13);
xlabel('TTNT节点数（个）');
ylabel('系统吞吐量 (Kbps)');
grid on

print(f3,'-dpng','-r600','链路误码_吞吐量3');