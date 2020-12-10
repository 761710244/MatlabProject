% 四种业务类型的吞吐量

%   业务区分，四种业务类型-吞吐量
clear;clc
lineWidth = 1.2;  % 线宽
%   四种业务类型-A
x1 = [8,16,24,32,40,48,56];
y1 = [489.997, 980.152, 1470.49, 1960.18, 2448.81, 2179.78, 710.907];
plot(x1,y1,'*-','linewidth',lineWidth, 'DisplayName', '业务类型A');
hold on

%   四种业务类型-B
x2 = [8,16,24,32,40,48,56];
y2 = [490.603, 979.909, 1469.94, 1958.39, 2450.39, 2941.34, 3429.68];
plot(x2,y2,'o-','linewidth',lineWidth, 'DisplayName', '业务类型B')
hold on

%   四种业务类型-C
x3 = [8,16,24,32,40,48,56];
y3 = [490.632, 980.053, 1470.2, 1959.58, 2449.85, 2938.99, 3430.2];
plot(x3,y3,'s-','linewidth',lineWidth, 'DisplayName', '业务类型C')

%   四种业务类型-D
x4 = [8,16,24,32,40,48,56];
y4 = [490.059, 980.307, 1470.11, 1961.5, 2450.59, 2939.89, 3429.21];
plot(x4,y4,'^-','linewidth',lineWidth, 'DisplayName', '业务类型D')

% axis([0 60 0 800]);
legend('Location', 'northwest')  % 指定图例位置
legend('boxoff');  % 关闭图例框线

title('TTNT节点数与系统吞吐量之间的关系','FontSize',13);
xlabel('TTNT节点数（个）');
ylabel('系统吞吐量 (Kbps)');
grid on

% 以600分辨率输出图片到当前目录
print('-dpng','-r600','性能测试单跳_吞吐量4');