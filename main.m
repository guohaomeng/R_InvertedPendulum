%% 仿真
clc;clear;
R_InvertedPendulum_DataFile;
% 调用仿真模型
out=sim('./R_InvertedPendulum.slx');

%% 绘图1
figure(1);
plot(out.t,out.bv,'-',out.t,out.bp,'--b',out.t,out.mv,':b','LineWidth',2);
axis([0 5 -80 80]);
xlabel('t(时间/s）','fontsize',12);
ylabel('y(输出)','fontsize',12);
title('旋转倒立摆变量监控','fontsize',16);
legend('摆杆角速度', '摆杆位置','电机旋转速度');

%% 绘图2
figure(2);
plot(out.t,out.bp,'-','LineWidth',2);
axis([0 5 -3.2 3.2]);
xlabel('t(时间/s）','fontsize',12);
ylabel('摆杆位置[rad]','fontsize',12);
title('旋转倒立摆摆杆位置变化图','fontsize',16);

%% 绘图3
figure(3);
plot(out.t,out.bv,'-','LineWidth',2);
axis([0 5 -80 80]);
xlabel('t(时间/s）','fontsize',12);
ylabel('摆杆角速度[rad/s]','fontsize',12);
title('旋转倒立摆摆杆角速度变化图','fontsize',16);

%% 绘图4
figure(4);
plot(out.t,out.mv,'-','LineWidth',2);
axis([0 5 -25 25]);
xlabel('t(时间/s）','fontsize',12);
ylabel('电机旋转速度[rad/s]','fontsize',12);
title('旋转倒立摆电机旋转速度变化图','fontsize',16);