% 链路误码 时延
close all;

%%   一种业务类型
clear;clc;
f1 = figure;

x1 = [2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,32,34,36,38,40,42,44,46,48,50,52,54,56,58,60];
y1 = [11.284, 11.599, 11.7273, 11.5465, 11.494, 11.669, 11.684, 11.6078, 11.6807, 11.641, 11.7231, 11.5523, 11.634, 11.614, 11.7227, 11.599, 11.634, 11.5446, 11.6451, 11.6725, 11.6307, 11.6563, 15.2645, 17.9893, 21.1946, 24.7619, 28.6693, 33.5348, 38.73, 44.6895];
plot(x1,y1,'*-','linewidth',1.2,'DisplayName', '业务类型A');
hold on

% axis([0 60 0 1900]);
legend('Location', 'northwest')  % 指定图例位置
legend('boxoff');  % 关闭图例框线

title('TTNT节点数与系统时延之间的关系','FontSize',13);
xlabel('TTNT节点数（个）');
ylabel('系统时延 (ms)');
grid on

% 以600分辨率输出图片到当前目录
print(f1,'-dpng','-r600','链路误码_时延1');

%% 两种业务类型
clear;clc;
lineWidth = 1.2;
f2 = figure;

%   两种业务类型-A
x1 = [4,8,12,16,20,24,28,32,36,40,44,48,52,56,60];
y1 = [12.6434, 12.6819, 12.6434, 12.7397, 12.8436, 12.7076, 12.8194, 12.7493, 12.652, 12.8667, 12.7764, 25.4024, 42.9955, 72.4228, 119.59];
plot(x1,y1,'*-','linewidth',lineWidth, 'DisplayName', '业务类型A');
hold on

%   两种业务类型-B
x2 = [4,8,12,16,20,24,28,32,36,40,44,48,52,56,60];
y2 = [11.284, 11.459, 11.6107, 11.7915, 11.662, 11.5757, 11.684, 11.4678, 11.704, 11.585, 11.5449, 11.6573, 11.5478, 11.574, 11.5827];
plot(x2,y2,'o-','linewidth',lineWidth, 'DisplayName', '业务类型B');

% axis([0 60 0 1100]);
legend('Location', 'northwest')  % 指定图例位置
legend('boxoff');  % 关闭图例框线

title('TTNT节点数与系统时延之间的关系','FontSize',13);
xlabel('TTNT节点数（个）');
ylabel('系统时延 (ms)');
grid on

print(f2,'-dpng','-r600','链路误码_时延2');

%% 三种业务类型
clear;clc;
lineWidth = 1.2;  % 线宽
f3 = figure;

%   三种业务类型-A
x1 = [6,12,18,24,30,36,42,48,54,60];
y1 = [14.2128, 14.0028, 13.8768, 13.8768, 13.9608, 13.7788, 14.0328, 38.2767, 85.9969, 195.195];
plot(x1,y1,'*-','linewidth',lineWidth, 'DisplayName', '业务类型A');
hold on

%   三种业务类型-B
x2 = [6,12,18,24,30,36,42,48,54,60];
y2 = [12.4124, 12.5279, 12.5921, 12.7397, 12.6126, 12.6947, 12.8304, 12.7974, 12.9343, 12.7897];
plot(x2,y2,'o-','linewidth',lineWidth, 'DisplayName', '业务类型B')

%   三种业务类型-C
x3 = [6,12,18,24,30,36,42,48,54,60];
y3 = [11.494, 11.634, 11.6107, 11.6165, 11.718, 11.5523, 11.554, 11.599, 11.5718, 11.704];
plot(x3,y3,'s-','linewidth',lineWidth, 'DisplayName', '业务类型C')

% axis([0 60 0 800]);
legend('Location', 'northwest')  % 指定图例位置
legend('boxoff');  % 关闭图例框线

title('TTNT节点数与系统时延之间的关系','FontSize',13);
xlabel('TTNT节点数（个）');
ylabel('系统时延 (ms)');
grid on

print(f3,'-dpng','-r600','链路误码_时延3');

%% 四种业务类型
clear;clc;
lineWidth = 1.2;  % 线宽
f4 = figure;

%   四种业务类型-A
x1 = [8,16,24,32,40,48,56];
y1 = [14.9422, 15.3062, 14.9422, 14.965, 15.0696, 82.3489, 272.328];
plot(x1,y1,'*-','linewidth',lineWidth, 'DisplayName', '业务类型A');
hold on

%   四种业务类型-B
x2 = [8,16,24,32,40,48,56];
y2 = [13.7928, 13.6668, 13.9048, 13.9608, 13.9776, 13.9608, 14.0808];
plot(x2,y2,'o-','linewidth',lineWidth, 'DisplayName', '业务类型B')

%   四种业务类型-C
x3 = [8,16,24,32,40,48,56];
y3 = [12.6434, 12.8744, 12.8231, 12.8937, 12.7666, 12.7204, 12.7644];
plot(x3,y3,'s-','linewidth',lineWidth, 'DisplayName', '业务类型C')

%   四种业务类型-D
x4 = [8,16,24,32,40,48,56];
y4 = [11.914, 11.459, 11.6107, 11.5465, 11.578, 11.5873, 11.544];
plot(x4,y4,'^-','linewidth',lineWidth, 'DisplayName', '业务类型D')

% axis([0 60 0 800]);
legend('Location', 'northwest')  % 指定图例位置
legend('boxoff');  % 关闭图例框线

title('TTNT节点数与系统时延之间的关系','FontSize',13);
xlabel('TTNT节点数（个）');
ylabel('系统时延 (ms)');
grid on

print(f4,'-dpng','-r600','链路误码_时延4');