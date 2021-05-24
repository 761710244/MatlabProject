% 三种业务类型的吞吐量

%   业务区分，三种业务类型-吞吐量
clear;clc
lineWidth = 1.2;  % 线宽
%   三种业务类型-A
x1 = [6,12,18,24,30,36,42,48,54,60];
y1 = [490.253, 979.075, 1469.48, 1960.93, 2449.81, 2940.27, 3430.38, 3097.32, 2053, 1304.52];
plot(x1,y1,'*-','linewidth',lineWidth, 'DisplayName', '业务类型A');
hold on

%   三种业务类型-B
x2 = [6,12,18,24,30,36,42,48,54,60];
y2 = [490.392, 979.653, 1470.25, 1959.71, 2448.03, 2940.69, 3428.35, 3920.5, 4409.3, 4900.83];
plot(x2,y2,'o-','linewidth',lineWidth, 'DisplayName', '业务类型B')
hold on

%   三种业务类型-C
x3 = [6,12,18,24,30,36,42,48,54,60];
y3 = [489.736, 980.624, 1469.34, 1958.97, 2449.96, 2940.52, 3430.7, 3918.17, 4409.7, 4898.65];
plot(x3,y3,'s-','linewidth',lineWidth, 'DisplayName', '业务类型C')

% axis([0 60 0 800]);
legend('Location', 'northwest')  % 指定图例位置
legend('boxoff');  % 关闭图例框线

%   求出系统吞吐量
total = y1 + y2 + y3;
plot(x3,total,'*-','linewidth',lineWidth, 'DisplayName', '业务类型C')

title('TTNT节点数与业务吞吐量之间的关系','FontSize',13);
xlabel('TTNT节点数（个）');
ylabel('业务吞吐量 (Kbps)');
grid on

% 以600分辨率输出图片到当前目录
print('-dpng','-r600','性能测试单跳_吞吐量3');
%print('-dpng','-r600','性能测试单跳_系统吞吐量');