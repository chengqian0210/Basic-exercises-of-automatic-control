clear all
syms s k1 k2

K = [k1,k2];
A = [0,1;-98,-2];
B = [0;100];
C = [1,0];
D = 0;
I = eye(2);

H = det(s*I-(A+B*K));

G = C*inv(s*I-(A+B*K))*B + D;

%overshoot = exp(-pi*xigema/sqrt(1-xigema^2));
% a = 2-100*k2 = 2*xigema*wn;
% b = 98 - 100*k1 = wn^2;

wn = 10;
overshoot = 0.3;
xigemamax = -log(overshoot)/(sqrt((log(overshoot))^2+ pi^2));

k1 = (wn^2 - 98)/(-100);
k2 = (2 - 2*xigemamax*wn)/(100);

t = 0:0.01:10;

A_new = A + B*[k1,k2];
B = [0;100];
C = [1,0];
D = 0;
I = eye(2);
%H = C*inv(s*I-A)*B + D;
[num,den] = ss2tf(A_new,B,C,D);
H = tf(num,den);%%状态反馈后的系统传递函数

y_step = step(H,t);%%系统阶跃响应
stepvalue = 1;
OverShoot = GetPerformanceOfStepResponse(y_step, stepvalue);%%新的超调量计算




