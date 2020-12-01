% 多跳网络一种业务类型--吞吐量
%   一种业务类型
clear;clc;
x1=[2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,32,34,36,38,40,42,44,46,48,50,52,54,56,58,60];
y1 = [355.6517,711.4727,1067.2433,1422.59,1778.61,2133.9367,2489.6167,2845.6267,3201.2833,3556.5433,3912.4933,4268.13,4623.7267,4979.1267,5335.59,5690.5033,6045.9333,6401.83,6758.31,7113.37,7469.0867,7824.23,7900.86,7889.31,7895.91,7913.07,7891.29,7893.6,7904.49,7892.28];
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
print('-dpng','-r600','性能测试多跳_吞吐量1');