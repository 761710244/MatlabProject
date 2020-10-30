% 多跳网络两种业务类型--时延

clear;clc;
lineWidth = 1.2;

%   两种业务类型-A
x1 = [4,8,12,16,20,24,28,32,36,40,44,48,52,56,60];
y1 = [78.1207 ,156.49,234.8513 ,312.9863 ,391.2213 ,469.4763 ,547.8703 ,625.877,704.3683 ,782.3850 ,860.4657 ,939.1480 ,841.0090 ,825.0642 ,760.7559 ];
plot(x1,y1,'*-','linewidth',lineWidth, 'DisplayName', '业务类型A');
hold on

%   两种业务类型-B
x2 = [4,8,12,16,20,24,28,32,36,40,44,48,52,56,60];
y2 = [71.1747,142.7320,213.5160,284.9247,355.9853,427.5337,498.5347,569.878,641.0997,712.6773,783.6783,855.2977,926.9907,993.3822,1058.7041];
plot(x2,y2,'o-','linewidth',lineWidth, 'DisplayName', '业务类型B');

% axis([0 60 0 1100]);
legend('Location', 'northwest')  % 指定图例位置
legend('boxoff');  % 关闭图例框线

title('TTNT节点数与系统吞吐量之间的关系','FontSize',13);
xlabel('TTNT节点数（个）');
ylabel('系统吞吐量 (Kbps)');
grid on
