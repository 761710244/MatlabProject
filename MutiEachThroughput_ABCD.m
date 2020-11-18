% 多跳网络四种业务类型--吞吐量

clear;clc
lineWidth = 1.2;  % 线宽

%   四种业务类型-A
x1 = [8,16,24,32,40,48,56];
y1 = [341.2060,682.5297,1024.0300,1365.0667,1706.5067,1718.2900,718.0413];
plot(x1,y1,'*-','linewidth',lineWidth, 'DisplayName', '业务类型A');
hold on

%   四种业务类型-B
x2 = [8,16,24,32,40,48,56];
y2 = [330.9553,662.5080,993.7597,1324.6000,1655.5867,1986.7533,2317.7833];
plot(x2,y2,'o-','linewidth',lineWidth, 'DisplayName', '业务类型B')
hold on

%   四种业务类型-C
x3 = [8,16,24,32,40,48,56];
y3 = [326.0233,652.2293,978.6170,1304.4467,1629.8800,1956.6333,2282.6567];
plot(x3,y3,'s-','linewidth',lineWidth, 'DisplayName', '业务类型C')

%   四种业务类型-D
x4 = [8,16,24,32,40,48,56];
y4 = [318.4733,637.0450,955.1820,1274.0233,1592.5400,1910.9500,2229.5233];
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