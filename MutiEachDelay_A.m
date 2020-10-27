% 多跳网络一种业务类型--时延
%   一种业务类型
clear;clc
x1=[2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,32,34,36,38,40,42,44,46,48,50,52,54,56,58,60];
y1 = [10.39811,20.4329,32.832,42.24908,46.73725,63.69198,69.60345,84.18488,91.91637,101.4045,124.4191,121.2407,131.3441,147.8068,156.1083,170.663,176.2512,190.8725,192.5709,212.1356,224.5169,225.4652,238.3331,314.5315,397.8705,494.4165,568.5452,637.4491,832.4578,903.7401];
plot(x1,y1,'*-','linewidth',1.2, 'DisplayName', '业务类型A');
hold on

% axis([0 60 0 1000]);
legend('Location', 'northwest')  % 指定图例位置
legend('boxoff');  % 关闭图例框线

title('TTNT节点数与系统时延之间的关系','FontSize',13);
xlabel('TTNT节点数（个）');
ylabel('系统时延 (ms)');
grid on
