%   三种业务类型的时延
%   业务区分，时延
%   三种业务类型A
x1 = [6,12,18,24,30,36,42,48,54,60];
y1 = [0.4714,0.4922,0.4918,0.4717,0.4872,0.4719,0.4820,0.6331,0.7334,0.8298];
plot(x1,y1,'*-','linewidth',1.2, 'DisplayName', '业务类型A')
hold on

%   三种业务类型-B
x2 = [6,12,18,24,30,36,42,48,54,60];
y2 = [0.4712,0.5072,0.4551,0.4870,0.4864,0.4643,0.4794,0.4831,0.4779,0.4776];
plot(x2,y2,'o-','linewidth',1.2, 'DisplayName', '业务类型B')
hold on

%   三种业务类型-C
x3 = [6,12,18,24,30,36,42,48,54,60];
y3 = [0.4591,0.4463,0.4559,0.4727,0.4657,0.4718,0.4707,0.4689,0.4774,0.4691];
plot(x3,y3,'s-','linewidth',1.2, 'DisplayName', '业务类型C');


% axis([0 60 0 900]);
legend('Location', 'northwest')  % 指定图例位置
legend('boxoff');  % 关闭图例框线

title('TTNT节点数与系统时延之间的关系','FontSize',13);
xlabel('TTNT节点数（个）');
ylabel('系统时延 (ms)');
grid on

% 以600分辨率输出图片到当前目录
print('-dpng','-r600','性能测试单跳_时延3');