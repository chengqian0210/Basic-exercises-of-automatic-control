clear all
t = 0:0.01:10;

A = [0,1;-98,-2];
B = [0;100];
C = [1,0];
D = 0;
I = eye(2);
%H = C*inv(s*I-A)*B + D;
[num,den] = ss2tf(A,B,C,D);
H = tf(num,den);%%ԭϵͳ���ݺ���

y_step = step(H,t);%%ԭϵͳ��Ծ��Ӧ
stepvalue = 1;
OverShoot = GetPerformanceOfStepResponse(y_step, stepvalue);%%����������

