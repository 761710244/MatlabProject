% 跨层优化前后时延对比——by 链路误码
close all;

%%   一种业务类型
clear;clc;
f1 = figure;

hold on
x = [2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,32,34,36,38,40,42,44,46,48,50,52,54,56,58,60];
beforeOptY = [11.284, 11.599, 11.7273, 11.5465, 11.494, 11.669, 11.684, 11.6078, 11.6807, 11.641, 11.7231, 11.5523, 11.634, 11.614, 11.7227, 11.599, 11.634, 11.5446, 11.6451, 11.6725, 11.6307, 11.6563, 15.2645, 17.9893, 21.1946, 24.7619, 28.6693, 33.5348, 38.73, 44.6895];
afterOptY = [6.608, 6.568, 6.608, 6.728, 6.736, 6.5947, 6.6194, 6.543, 6.6391, 6.636, 6.6734, 6.6413, 6.6018, 6.5966, 6.5787, 6.638, 6.6551, 6.6436, 6.5975, 6.628, 6.6442, 6.6298, 8.7662, 10.3248, 12.1538, 14.1474, 16.5856, 19.1403, 21.9806, 25.5153];
plot(x,beforeOptY,'*-','linewidth',1.2,'DisplayName', '优化前');
plot(x,afterOptY,'o-','linewidth',1.2,'DisplayName', '优化后');

% axis([0 60 0 1900]);
legend('Location', 'northwest')  % 指定图例位置
legend('boxoff');  % 关闭图例框线

title('TTNT跨层优化时延对比图','FontSize',13);
xlabel('TTNT节点数（个）');
ylabel('系统时延 (ms)');
grid on

% 以600分辨率输出图片到当前目录
print(f1,'-dpng','-r600','误码优化前后对比_时延1');

%% 两种业务类型
clear;clc;
lineWidth = 1.2;
f2 = figure;

hold on
x = [4,8,12,16,20,24,28,32,36,40,44,48,52,56,60];
%   两种业务类型-A
beforeOptY1 = [12.6434, 12.6819, 12.6434, 12.7397, 12.8436, 12.7076, 12.8194, 12.7493, 12.652, 12.8667, 12.7764, 25.4024, 42.9955, 72.4228, 119.59];
%   两种业务类型-B
beforeOptY2 = [11.284, 11.459, 11.6107, 11.7915, 11.662, 11.5757, 11.684, 11.4678, 11.704, 11.585, 11.5449, 11.6573, 11.5478, 11.574, 11.5827];
beforeOptY = (beforeOptY1 + beforeOptY2)./2;
plot(x,beforeOptY,'*-','linewidth',lineWidth, 'DisplayName', '优化前');

%   两种业务类型-A
afterOptY1 = [7.2248, 7.4448, 7.4008, 7.1808, 7.3304, 7.2981, 7.2562, 7.2688, 7.2737, 7.3348, 7.2688, 14.385, 24.4169, 41.2263, 69.1161];
%   两种业务类型-B
afterOptY2 = [6.488, 6.568, 6.6347, 6.688, 6.624, 6.6747, 6.5966, 6.563, 6.688, 6.668, 6.6262, 6.588, 6.6111, 6.5937, 6.6133];
afterOptY = (afterOptY1 + afterOptY2)./2;
plot(x,afterOptY,'o-','linewidth',lineWidth, 'DisplayName', '优化后');

% axis([0 60 0 1100]);
legend('Location', 'northwest')  % 指定图例位置
legend('boxoff');  % 关闭图例框线

title('TTNT跨层优化时延对比图','FontSize',13);
xlabel('TTNT节点数（个）');
ylabel('系统时延 (ms)');
grid on

print(f2,'-dpng','-r600','误码优化前后对比_时延2');

%% 三种业务类型
clear;clc;
lineWidth = 1.2;  % 线宽
f3 = figure;

hold on
x = [6,12,18,24,30,36,42,48,54,60];
%   三种业务类型-A
beforeOptY1 = [14.2128, 14.0028, 13.8768, 13.8768, 13.9608, 13.7788, 14.0328, 38.2767, 85.9969, 195.195];
%   三种业务类型-B
beforeOptY2 = [12.4124, 12.5279, 12.5921, 12.7397, 12.6126, 12.6947, 12.8304, 12.7974, 12.9343, 12.7897];
%   三种业务类型-C
beforeOptY3 = [11.494, 11.634, 11.6107, 11.6165, 11.718, 11.5523, 11.554, 11.599, 11.5718, 11.704];
beforeOptY = (beforeOptY1 + beforeOptY2 + beforeOptY3)./3;
plot(x,beforeOptY,'*-','linewidth',lineWidth, 'DisplayName', '优化前');


%   三种业务类型-A
afterOptY1 = [8.0736, 7.8816, 7.8976, 7.8336, 7.968, 7.9696, 7.9639, 21.7899, 49.2771, 110.535];
%   三种业务类型-B
afterOptY2 = [7.1368, 7.2688, 7.1955, 7.3898, 7.3832, 7.3275, 7.3191, 7.2578, 7.2932, 7.3612];
%   三种业务类型-C
afterOptY3 = [6.808, 6.568, 6.6213, 6.578, 6.624, 6.668, 6.6651, 6.658, 6.5769, 6.64];
afterOptY = (afterOptY1 + afterOptY2 + afterOptY3)./3;
plot(x,afterOptY,'o-','linewidth',lineWidth, 'DisplayName', '优化后')

% axis([0 60 0 800]);
legend('Location', 'northwest')  % 指定图例位置
legend('boxoff');  % 关闭图例框线

title('TTNT跨层优化时延对比图','FontSize',13);
xlabel('TTNT节点数（个）');
ylabel('系统时延 (ms)');
grid on

print(f3,'-dpng','-r600','误码优化前后对比_时延3');

%% 四种业务类型
clear;clc;
lineWidth = 1.2;  % 线宽
f4 = figure;

hold on
x = [8,16,24,32,40,48,56];
%   四种业务类型-A
beforeOptY1 = [14.9422, 15.3062, 14.9422, 14.965, 15.0696, 82.3489, 358.328];
%   四种业务类型-B
beforeOptY2 = [13.7928, 13.6668, 13.9048, 13.9608, 13.9776, 13.9608, 14.0808];
%   四种业务类型-C
beforeOptY3 = [12.6434, 12.8744, 12.8231, 12.8937, 12.7666, 12.7204, 12.7644];
%   四种业务类型-D
beforeOptY4 = [11.914, 11.459, 11.6107, 11.5465, 11.578, 11.5873, 11.544];

beforeOptY = (beforeOptY1 + beforeOptY2 + beforeOptY3 + beforeOptY4)./4;
plot(x,beforeOptY,'*-','linewidth',lineWidth, 'DisplayName', '优化前');


%   四种业务类型-A
afterOptY1 = [8.6424, 8.8504, 8.5211, 8.5644, 8.788, 47.7715, 203.737];
%   四种业务类型-B
afterOptY2 = [8.1216, 8.0736, 8.0256, 8.0736, 8.0064, 7.8416, 7.9982];
%   四种业务类型-C
afterOptY3 = [7.1368, 7.4448, 7.1661, 7.4448, 7.3216, 7.2468, 7.2625];
%   四种业务类型-D
afterOptY4 = [6.688, 6.628, 6.648, 6.628, 6.672, 6.6213, 6.6766];

afterOptY = (afterOptY1 + afterOptY2 + afterOptY3 + afterOptY4)./4;
plot(x,afterOptY,'o-','linewidth',lineWidth, 'DisplayName', '优化后')

% axis([0 60 1.5 5]);
legend('Location', 'northwest')  % 指定图例位置
legend('boxoff');  % 关闭图例框线

title('TTNT跨层优化时延对比图','FontSize',13);
xlabel('TTNT节点数（个）');
ylabel('系统时延 (ms)');
grid on

print(f4,'-dpng','-r600','误码优化前后对比_时延4');