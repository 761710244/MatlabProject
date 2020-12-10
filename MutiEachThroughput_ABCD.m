% 多跳网络四种业务类型--吞吐量

clear;clc
lineWidth = 1.2;  % 线宽

%   四种业务类型-A
x1 = [8,16,24,32,40,48,56];
y1 = [484.992, 969.888, 1455.59, 1940.34, 2426.1, 1976, 828.678];
plot(x1,y1,'*-','linewidth',lineWidth, 'DisplayName', '业务类型A');
hold on

%   四种业务类型-B
x2 = [8,16,24,32,40,48,56];
y2 = [484.635, 970.358, 1455.38, 1939.92, 2427.84, 2910.65, 3395];
plot(x2,y2,'o-','linewidth',lineWidth, 'DisplayName', '业务类型B')
hold on

%   四种业务类型-C
x3 = [8,16,24,32,40,48,56];
y3 = [485.272, 968.912, 1454.75, 1939.82, 2427.24, 2910.33, 3396.94];
plot(x3,y3,'s-','linewidth',lineWidth, 'DisplayName', '业务类型C')

%   四种业务类型-D
x4 = [8,16,24,32,40,48,56];
y4 = [485.005, 970.182, 1455.86, 1941.8, 2425.66, 2910.86, 3396.11];
plot(x4,y4,'^-','linewidth',lineWidth, 'DisplayName', '业务类型D')

% axis([0 60 0 800]);
legend('Location', 'northwest')  % 指定图例位置
legend('boxoff');  % 关闭图例框线

title('TTNT节点数与系统吞吐量之间的关系','FontSize',13);
xlabel('TTNT节点数（个）');
ylabel('系统吞吐量 (Kbps)');
grid on

% 以600分辨率输出图片到当前目录
print('-dpng','-r600','性能测试多跳_吞吐量4');