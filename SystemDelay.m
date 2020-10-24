%  系统时延，分多种业务类型
%一种业务类型
x1=[2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,32,34,36,38,40,42,44,46,48,50,52,54,56,58,60];
y1 = [2.84938,5.66875,8.41812,11.1375,14.0169,16.7863,19.5756,22.385,25.1744,27.8537,30.8931,33.6225,36.5419,39.4412,42.0106,44.82,47.4894,50.3887,53.2181,56.2075,58.9269,61.4762,64.4956,88.8162,109.556,133.482,161.997,194.977,234.929,281.971];
plot(x1,y1,'r*-','linewidth',1.6);
hold on

%两种业务类型
x2 = [4,8,12,16,20,24,28,32,36,40,44,48,52,56,60];
y2 = [5.4125,10.835,16.4875,21.78,27.2725,32.855,38.1975,43.79,49.0225,54.495,59.9875,65.44,82.6411,97.7321,115.145];
plot(x2,y2,'bo-','linewidth',1.6)
hold on

%三种业务类型
x3 = [6,12,18,24,30,36,42,48,54,60];
y3 = [7.95937,15.9588,23.9381,31.7275,39.9369,47.9063,55.3456,63.435,79.2302,94.1014];
plot(x3,y3,'k.-','linewidth',1.6)

axis([0 60 0 300]);
xlabel('TTNT节点数（个）');
ylabel('系统时延');
grid on
