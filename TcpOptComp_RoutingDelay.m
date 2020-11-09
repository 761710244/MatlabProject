% ����Ż�ǰ��ʱ�ӶԱȡ���by ·�ɲ����Ϣ
close all;

%%   һ��ҵ������
clear;clc;
f1 = figure;

hold on
x = [2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,32,34,36,38,40,42,44,46,48,50,52,54,56,58,60];
beforeOptY = [33.9558,68.8717,102.0680,134.1167,168.6453,197.4417,231.9973,267.0467,299.2157,329.2250,366.1137,397.4433,435.4393,470.3817,507.6707,538.1067,561.6757,598.5650,631.5737,672.4633,700.3923,732.9083,997.7640,1224.7400,1481.5533,1785.4600,2156.0533,2579.7767,3095.0500,3694.1367];
afterOptY = [20.775,43.3367,61.8717,80.7667,101.8617,121.0367,143.905,163.3467,186.255,207.1767,217.0983,247.7533,273.2617,282.7033,306.265,327.4267,344.1217,370.07,396.0317,412.74,422.7817,453.2367,624.6208,776.991,940.4166,1148.5681,1368.3049,1663.9901,1994.9864,2409.4045];
plot(x,beforeOptY,'*-','linewidth',1.2,'DisplayName', '�Ż�ǰ');
plot(x,afterOptY,'o-','linewidth',1.2,'DisplayName', '�Ż���');

% axis([0 60 0 1900]);
legend('Location', 'northwest')  % ָ��ͼ��λ��
legend('boxoff');  % �ر�ͼ������

title('TTNT����Ż�ʱ�ӶԱ�ͼ','FontSize',13);
xlabel('TTNT�ڵ���������');
ylabel('ϵͳʱ�� (ms)');
grid on

% ��600�ֱ������ͼƬ����ǰĿ¼
print(f1,'-dpng','-r600','·���Ż�ǰ��Ա�_ʱ��1');

%% ����ҵ������
clear;clc;
lineWidth = 1.2;
f2 = figure;

hold on
x = [4,8,12,16,20,24,28,32,36,40,44,48,52,56,60];
%   ����ҵ������-A
beforeOptY1 = [33.2225,67.7250,102.2542,131.5300,168.2592,199.5750,228.5175,270.7400,299.4825,329.6517,368.5008,523.0461,655.6413,799.4104,986.1918];
%   ����ҵ������-B
beforeOptY2 = [30.2675,63.6150,93.1625,128.0567,160.0975,187.3117,220.6992,250.9933,283.5942,316.2083,344.3025,376.9300,411.0242,437.9583,471.6925];
beforeOptY = beforeOptY1 + beforeOptY2;
plot(x,beforeOptY,'*-','linewidth',lineWidth, 'DisplayName', '�Ż�ǰ');

%   ����ҵ������-A
afterOptY1 = [21.5483,44.1367,64.2983,82.74,101.715,127.5167,142.385,163.613,172.615,200.2433,227.6983,326.77,402.5257,506.6477,637.6321];
%   ����ҵ������-B
afterOptY2 = [15.7783,34.61,60.0417,76.94,92.785,118.23,130.6883,154.9333,175.0717,187.9433,213.7483,227.1,248.505,265.8833,297.4883];
afterOptY = afterOptY1 + afterOptY2;
plot(x,afterOptY,'o-','linewidth',lineWidth, 'DisplayName', '�Ż���');

% axis([0 60 0 1100]);
legend('Location', 'northwest')  % ָ��ͼ��λ��
legend('boxoff');  % �ر�ͼ������

title('TTNT����Ż�ʱ�ӶԱ�ͼ','FontSize',13);
xlabel('TTNT�ڵ���������');
ylabel('ϵͳʱ�� (ms)');
grid on

print(f2,'-dpng','-r600','·���Ż�ǰ��Ա�_ʱ��2');

%% ����ҵ������
clear;clc;
lineWidth = 1.2;  % �߿�
f3 = figure;

hold on
x = [6,12,18,24,30,36,42,48,54,60];
%   ����ҵ������-A
beforeOptY1 = [33.9292,65.8717,100.4808,133.4900,167.3792,199.8950,232.5975,272.0200,391.5633,497.4283];
%   ����ҵ������-B
beforeOptY2 = [31.2275,62.5483,93.2958,125.6567,154.9508,188.7117,222.2458,252.5933,284.6342,317.7017];
%   ����ҵ������-C
beforeOptY3 = [28.2858,59.5183,86.8842,117.3033,147.1092,179.0750,207.1742,236.4200,267.8792,295.5250];
beforeOptY = beforeOptY1 + beforeOptY2 + beforeOptY3;
plot(x,beforeOptY,'*-','linewidth',lineWidth, 'DisplayName', '�Ż�ǰ');


%   ����ҵ������-A
afterOptY1 = [19.6683,35.95,57.485,81.2067,104.275,123.1167,137.465,164.6267,239.7937,311.3215];
%   ����ҵ������-B
afterOptY2 = [21.0583,39.37,55.7083,79.7667,88.4917,114.51,137.9817,151.64,171.4317,200.9033];
%   ����ҵ������-C
afterOptY3 = [15.6217,34.9233,56.7583,71.98,84.095,104.6233,128.3417,142.5867,155.8617,178.31];
afterOptY = afterOptY1 + afterOptY2 + afterOptY3;
plot(x,afterOptY,'o-','linewidth',lineWidth, 'DisplayName', '�Ż���')

% axis([0 60 0 800]);
legend('Location', 'northwest')  % ָ��ͼ��λ��
legend('boxoff');  % �ر�ͼ������

title('TTNT����Ż�ʱ�ӶԱ�ͼ','FontSize',13);
xlabel('TTNT�ڵ���������');
ylabel('ϵͳʱ�� (ms)');
grid on

print(f3,'-dpng','-r600','·���Ż�ǰ��Ա�_ʱ��3');