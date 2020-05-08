syms z
[A,B,C,D] = dlinmod('example1801');
I = [1 0;0 1];
H = C*inv(z*I-A)*B + D;
figure(1);
subplot(2,1,1);dimpulse(A,B,C,D);grid;
subplot(2,1,2);dstep(A,B,C,D);grid;
figure(2);grid
dbode(A,B,C,D,1,1,0:0.001:2*pi)