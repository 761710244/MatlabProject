%   业务区分，三种业务类型-吞吐量
%   三种业务类型-A
x1 = [6,12,18,24,30,36,42,48,54,60];
y1 = [78.489,156.557,234.731,312.804,391.393,470.029,547.707,626.214,550.0012,420.844];
plot(x1,y1,'b*-','linewidth',1.6);
hold on

%   三种业务类型-B
x2 = [6,12,18,24,30,36,42,48,54,60];
y2 = [71.204,142.466,213.499,284.927,356.461,427.157,499.01,569.812,641.192,713.422];
plot(x2,y2,'ro-','linewidth',1.6)
hold on

%   三种业务类型-C
x3 = [6,12,18,24,30,36,42,48,54,60];
y3 = [65.057,130.441,195.788,260.468,325.8,391.895,456.555,521.319,586.807,652.734];
plot(x3,y3,'y.-','linewidth',1.6)

axis([0 60 0 800]);
xlabel('TTNT节点数（个）');
ylabel('系统吞吐量');
grid on
