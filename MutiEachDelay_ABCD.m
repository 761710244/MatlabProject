% 多跳网络四种业务类型--时延

clear;clc;
lineWidth = 1.2;

%   四种业务类型A
x1 = [8,16,24,32,40,48,56];
y1 = [1.5841,1.4896,1.4575,1.4821,1.4525,1.8735,2.1890];
plot(x1,y1,'*-','linewidth',lineWidth, 'DisplayName', '业务类型A')
hold on

%   四种业务类型-B
x2 = [8,16,24,32,40,48,56];
y2 = [1.4997,1.4827,1.4947,1.4944,1.4349,1.3862,1.4520];
plot(x2,y2,'o-','linewidth',lineWidth, 'DisplayName', '业务类型B')
hold on

%   四种业务类型-C
x3 = [8,16,24,32,40,48,56];
y3 = [1.5473,1.4533,1.3553,1.4063,1.3923,1.3798,1.3853];
plot(x3,y3,'s-','linewidth',lineWidth, 'DisplayName', '业务类型C');

%   四种业务类型-D
x4 = [8,16,24,32,40,48,56];
y4 = [1.4278,1.4578,1.3691,1.3946,1.3444,1.3708,1.3854];
plot(x4,y4,'^-','linewidth',lineWidth, 'DisplayName', '业务类型D');


% axis([0 60 0 900]);
legend('Location', 'northwest')  % 指定图例位置
legend('boxoff');  % 关闭图例框线

title('TTNT节点数与系统时延之间的关系','FontSize',13);
xlabel('TTNT节点数（个）');
ylabel('系统时延 (ms)');
grid on

% 以600分辨率输出图片到当前目录
print('-dpng','-r600','性能测试多跳_时延4');