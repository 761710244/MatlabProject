%   四种业务类型的时延
%   业务区分，时延
%   四种业务类型A
x1 = [8,16,24,32,40,48,56];
y1 = [1.9376, 1.9966, 1.9258, 1.9435, 1.9659, 10.9162, 39.0954];
plot(x1,y1,'*-','linewidth',1.2, 'DisplayName', '业务类型A')
hold on

%   四种业务类型-B
x2 = [8,16,24,32,40,48,56];
y2 = [1.8054, 1.8726, 1.8428, 1.881, 1.8614, 1.882, 1.8598];
plot(x2,y2,'o-','linewidth',1.2, 'DisplayName', '业务类型B')
hold on

%   四种业务类型-C
x3 = [8,16,24,32,40,48,56];
y3 = [1.7299, 1.7511, 1.7582, 1.7723, 1.766, 1.7652, 1.7557];
plot(x3,y3,'s-','linewidth',1.2, 'DisplayName', '业务类型C');

%   四种业务类型-D
x4 = [8,16,24,32,40,48,56];
y4 = [1.612, 1.667, 1.642, 1.687, 1.658, 1.6587, 1.662];
plot(x4, y4,'^-','linewidth',1.2, 'DisplayName', '业务类型D');


% axis([0 60 0 900]);
legend('Location', 'northwest')  % 指定图例位置
legend('boxoff');  % 关闭图例框线

title('TTNT节点数与系统时延之间的关系','FontSize',13);
xlabel('TTNT节点数（个）');
ylabel('系统时延 (ms)');
grid on

% 以600分辨率输出图片到当前目录
print('-dpng','-r600','性能测试单跳_时延4');