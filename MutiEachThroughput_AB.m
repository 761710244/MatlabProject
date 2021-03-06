% 多跳网络两种业务类型--吞吐量

clear;clc;
lineWidth = 1.2;

%   两种业务类型-A
x1 = [4,8,12,16,20,24,28,32,36,40,44,48,52,56,60];
y1 = [484.775, 970.675, 1455.66, 1940.79, 2427.08, 2911.09, 3396.2, 3879.31, 4366.61, 4850.42, 5336.23, 5163.83, 4693.34, 4125.84, 3449.01];
plot(x1,y1,'*-','linewidth',lineWidth, 'DisplayName', '业务类型A');
hold on

%   两种业务类型-B
x2 = [4,8,12,16,20,24,28,32,36,40,44,48,52,56,60];
y2 = [484.828, 969.495, 1455.77, 1940.58, 2425.42, 2910.72, 3397.01, 3880.74, 4364.71, 4851.43, 5337.43, 5821.21, 6307.54, 6787.92, 7274.67];
plot(x2,y2,'o-','linewidth',lineWidth, 'DisplayName', '业务类型B');

% axis([0 60 0 1100]);
legend('Location', 'northwest')  % 指定图例位置
legend('boxoff');  % 关闭图例框线

title('TTNT节点数与系统吞吐量之间的关系','FontSize',13);
xlabel('TTNT节点数（个）');
ylabel('系统吞吐量 (Kbps)');
grid on

% 以600分辨率输出图片到当前目录
print('-dpng','-r600','性能测试多跳_吞吐量2');