%   三种业务类型的吞吐量
%   业务区分，三种业务类型-吞吐量
clear;clc
lineWidth = 1.2;  % 线宽
%   三种业务类型-A
x1 = [6,12,18,24,30,36,42,48,54,60];
y1 = [70.326,140.296,210.801,280.964,351.292,421.35,492.327,562.071,496.7002,351.364];
plot(x1,y1,'*-','linewidth',lineWidth, 'DisplayName', '业务类型A');
hold on

%   三种业务类型-B
x2 = [6,12,18,24,30,36,42,48,54,60];
y2 = [64.441,128.508,192.851,257.461,321.938,386.029,450.537,513.534,578.403,642.208];
plot(x2,y2,'o-','linewidth',lineWidth, 'DisplayName', '业务类型B')
hold on

%   三种业务类型-C
x3 = [6,12,18,24,30,36,42,48,54,60];
y3 = [58.132,116.535,175.288,232.659,291.58,349.341,407.468,465.978,524.897,582.428];
plot(x3,y3,'s-','linewidth',lineWidth, 'DisplayName', '业务类型C')

% axis([0 60 0 800]);
legend('Location', 'northwest')  % 指定图例位置
legend('boxoff');  % 关闭图例框线

title('TTNT节点数与系统吞吐量之间的关系','FontSize',13);
xlabel('TTNT节点数（个）');
ylabel('系统吞吐量 (Kbps)');
grid on