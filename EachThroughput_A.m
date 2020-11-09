%% 一种业务类型的吞吐量
%   业务区分，一种业务类型-吞吐量
%   一种业务类型-A
clear;clc;clf
x1 = [2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,32,34,36,38,40,42,44,46,48,50,52,54,56,58,60];
y1 = [71.573,142.7701,214.2865,285.6934,356.615,428.365,499.7591,571.4672,642.802,713.9142,785.6469,857.135,928.3257,999.6332,1070.7071,1141.9416,1213.5611,1285.0128,1356.5237,1428.2117,1499.1624,1571.1332,1621.8987,1615.8832,1630.1779,1626.8266,1635.0274,1637.4635,1613.76,1618.3029];
plot(x1,y1,'*-', 'linewidth',1.2, 'DisplayName', '业务类型A');
hold on

% axis([0 60 0 1900]);
legend('Location', 'northwest')  % 指定图例位置
legend('boxoff');  % 关闭图例框线

title('TTNT节点数与系统吞吐量之间的关系','FontSize',13);
xlabel('TTNT节点数（个）');
ylabel('系统吞吐量 (Kbps)');
grid on;