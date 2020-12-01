% 多跳网络四种业务类型--时延

clear;clc;
lineWidth = 1.2;

%   四种业务类型A
x1 = [8,16,24,32,40,48,56];
y1 = [1.4581,1.4941,1.4071,1.4431,1.4397,1.8482,2.1068];
plot(x1,y1,'*-','linewidth',lineWidth, 'DisplayName', '业务类型A')
hold on

%   四种业务类型-B
x2 = [8,16,24,32,40,48,56];
y2 = [1.3217,1.4382,1.4644,1.4634,1.4309,1.4457,1.4217];
plot(x2,y2,'o-','linewidth',lineWidth, 'DisplayName', '业务类型B')
hold on

%   四种业务类型-C
x3 = [8,16,24,32,40,48,56];
y3 = [1.3913,1.4467,1.4609,1.3845,1.4013,1.4058,1.3872];
plot(x3,y3,'s-','linewidth',lineWidth, 'DisplayName', '业务类型C');

%   四种业务类型-D
x4 = [8,16,24,32,40,48,56];
y4 = [1.3958,1.3498,1.4075,1.3758,1.3712,1.3773,1.3815];
plot(x4,y4,'^-','linewidth',lineWidth, 'DisplayName', '业务类型D');


% axis([0 60 0 900]);
legend('Location', 'northwest')  % 指定图例位置
legend('boxoff');  % 关闭图例框线

title('TTNT节点数与系统时延之间的关系','FontSize',13);
xlabel('TTNT节点数（个）');
ylabel('系统时延 (ms)');
grid on

% 以600分辨率输出图片到当前目录
print('-dpng','-r600','性能测试多跳_时延4');