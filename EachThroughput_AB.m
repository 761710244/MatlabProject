%   业务区分-两种业务类型，吞吐量
%   两种业务类型-A
x1 = [4,8,12,16,20,24,28,32,36,40,44,48,52,56,60];
y1 = [78.179,156.919,234.808,312.785,391.109,469.663,547.672,625.708,704.175,783.097,860.835,938.624,842.927,778.9693,684.9786];
plot(x1,y1,'bo-','linewidth',1.6)
hold on

%   两种业务类型-B
x2 = [4,8,12,16,20,24,28,32,36,40,44,48,52,56,60];
y2 = [71.257,142.419,214.07,284.785,356.062,427.763,498.732,570.407,640.797,713.09,783.364,855.061,926.073,998.031,1068.021];
plot(x2,y2,'rx-','linewidth',1.6)

axis([0 60 0 1200]);
xlabel('TTNT节点数（个）');
ylabel('系统吞吐量');
grid on
