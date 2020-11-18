% ������������ҵ������--������

clear;clc
lineWidth = 1.2;  % �߿�

%   ����ҵ������-A
x1 = [8,16,24,32,40,48,56];
y1 = [341.2060,682.5297,1024.0300,1365.0667,1706.5067,1718.2900,718.0413];
plot(x1,y1,'*-','linewidth',lineWidth, 'DisplayName', 'ҵ������A');
hold on

%   ����ҵ������-B
x2 = [8,16,24,32,40,48,56];
y2 = [330.9553,662.5080,993.7597,1324.6000,1655.5867,1986.7533,2317.7833];
plot(x2,y2,'o-','linewidth',lineWidth, 'DisplayName', 'ҵ������B')
hold on

%   ����ҵ������-C
x3 = [8,16,24,32,40,48,56];
y3 = [326.0233,652.2293,978.6170,1304.4467,1629.8800,1956.6333,2282.6567];
plot(x3,y3,'s-','linewidth',lineWidth, 'DisplayName', 'ҵ������C')

%   ����ҵ������-D
x4 = [8,16,24,32,40,48,56];
y4 = [318.4733,637.0450,955.1820,1274.0233,1592.5400,1910.9500,2229.5233];
plot(x4,y4,'^-','linewidth',lineWidth, 'DisplayName', 'ҵ������D')

% axis([0 60 0 800]);
legend('Location', 'northwest')  % ָ��ͼ��λ��
legend('boxoff');  % �ر�ͼ������

title('TTNT�ڵ�����ϵͳ������֮��Ĺ�ϵ','FontSize',13);
xlabel('TTNT�ڵ���������');
ylabel('ϵͳ������ (Kbps)');
grid on

% ��600�ֱ������ͼƬ����ǰĿ¼
print('-dpng','-r600','���ܲ��Զ���_������4');