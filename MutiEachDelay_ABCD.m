% 多跳网络四种业务类型--时延

clear;clc;
lineWidth = 1.2;

%   四种业务类型A
x1 = [8,16,24,32,40,48,56];
y1 = [5.7773, 5.9012, 5.7655, 5.8923, 5.8339, 32.2942, 115.811];
plot(x1,y1,'*-','linewidth',lineWidth, 'DisplayName', '业务类型A')
hold on

%   四种业务类型-B
x2 = [8,16,24,32,40,48,56];
y2 = [5.4835, 5.5675, 5.6403, 5.5171, 5.4768, 5.6123, 5.5651];
plot(x2,y2,'o-','linewidth',lineWidth, 'DisplayName', '业务类型B')
hold on

%   四种业务类型-C
x3 = [8,16,24,32,40,48,56];
y3 = [5.2216, 5.3488, 5.2746, 5.2693, 5.2597, 5.3223, 5.1989];
plot(x3,y3,'s-','linewidth',lineWidth, 'DisplayName', '业务类型C');

%   四种业务类型-D
x4 = [8,16,24,32,40,48,56];
y4 = [4.986, 4.911, 4.986, 4.956, 5.034, 4.986, 4.9517];
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