function X=plotFig1(k1,k2,k3,k4,C)
%Function to plot Figures 1ABCD in Strömbom et al. Effective resource
%allocation.. . Submitted.

%Convert k's to r's
r1=1-k1;
r2=1-k2;
r3=1-k3;
r4=1-k4;

%PLOT FIGURE 1A
e=0:0.001:10;

f1=(1-exp(-(1-k1)*e));
f2=(1-exp(-(1-k2)*e));
f3=(1-exp(-(1-k3)*e));
f4=(1-exp(-(1-k4)*e));

subplot(2,2,1)
plot(e,f1,'-r','LineWidth',2);
hold on
plot(e,f2,'-g','LineWidth',2);
hold on
plot(e,f3,'-b','LineWidth',2);
hold on
plot(e,f4,'-m','LineWidth',2);
hold on
plot(e,r1*e,'--r');
hold on
plot(e,r2*e,'--g');
hold on
plot(e,r3*e,'--b');
hold on
plot(e,r4*e,'--m');
title('(A)')
xlabel('Effort \epsilon')
ylabel('p_i=1-e^{-(1-k_i)*\epsilon}')
ylim([0 1])
xlim([0 10])



%PLOT FIGURE 1B

%Switch times from Formula (8)
e1=(1/r1)*log((r1*(r1-r2^2))/(r2^2*(1-r1)));
e2=(1/r2)*log((r2*(r2-r3^2))/(r3^2*(1-r2)));
e3=(1/r3)*log((r3*(r3-r4^2))/(r4^3*(1-r3)));

%Plot curves
t=0:0.001:C;
subplot(2,2,2)
t1=0:0.001:e1;
f1=1-r1*(1-exp(-r1*t1));
t2=e1:0.001:e1+e2;
f2=(1-r1*(1-exp(-r1*e1)))*(1-r2*(1-exp(-r2*(t2-e1))));
t3=e1+e2:0.001:e1+e2+e3;
f3=(1-r1*(1-exp(-r1*e1)))*(1-r2*(1-exp(-r2*e2)))*(1-r3*(1-exp(-r3*(t3-e1-e2))));
t4=e1+e2+e3:0.001:C;
f4=(1-r1*(1-exp(-r1*e1)))*(1-r2*(1-exp(-r2*e2)))*(1-r3*(1-exp(-r3*e3)))*(1-r4*(1-exp(-r4*(t4-e1-e2-e3))));
%figure;
%subplot(1,2,1)
plot(t1,5.47*f1,'r-','LineWidth',2)
hold on
plot(t2,5.47*f2,'g-','LineWidth',2)
hold on
plot(t3,5.47*f3,'b-','LineWidth',2)
hold on
plot(t4,5.47*f4,'m-','LineWidth',2)

tt1=0:0.001:C;
ff1=1-r1*(1-exp(-r1*tt1));
tt2=e1:0.001:C;
ff2=(1-r1*(1-exp(-r1*e1)))*(1-r2*(1-exp(-r2*(tt2-e1))));
tt3=e1+e2:0.001:C;
ff3=(1-r1*(1-exp(-r1*e1)))*(1-r2*(1-exp(-r2*e2)))*(1-r3*(1-exp(-r3*(tt3-e1-e2))));
tt4=e1+e2+e3:0.001:C;
ff4=(1-r1*(1-exp(-r1*e1)))*(1-r2*(1-exp(-r2*e2)))*(1-r3*(1-exp(-r3*e3)))*(1-r4*(1-exp(-r4*(tt4-e1-e2-e3))));
hold on
plot(tt1,5.47*ff1,'r--')
hold on
plot(tt2,5.47*ff2,'g--')
hold on
plot(tt3,5.47*ff3,'b--')
hold on
plot(tt4,5.47*ff4,'m--')
title('(B)')
xlabel('Effort \epsilon')
ylabel('\lambda^x(\epsilon)')
ylim([0 5.47])
xlim([0 10])


%PLOT FIGURE 1C

%Switch times from Mathematica Minimize command
e1=3.78794;
e2=3.37848;
e3=2.12919;

%Plot curves
t=0:0.001:C;
subplot(2,2,3)
t1=0:0.001:e1;
f1=1-r1*(1-exp(-r1*t1));
t2=e1:0.001:e1+e2;
f2=(1-r1*(1-exp(-r1*e1)))*(1-r2*(1-exp(-r2*(t2-e1))));
t3=e1+e2:0.001:e1+e2+e3;
f3=(1-r1*(1-exp(-r1*e1)))*(1-r2*(1-exp(-r2*e2)))*(1-r3*(1-exp(-r3*(t3-e1-e2))));
t4=e1+e2+e3:0.001:C;
f4=(1-r1*(1-exp(-r1*e1)))*(1-r2*(1-exp(-r2*e2)))*(1-r3*(1-exp(-r3*e3)))*(1-r4*(1-exp(-r4*(t4-e1-e2-e3))));
%figure;
%subplot(1,2,1)
plot(t1,5.47*f1,'r-','LineWidth',2)
hold on
plot(t2,5.47*f2,'g-','LineWidth',2)
hold on
plot(t3,5.47*f3,'b-','LineWidth',2)
hold on
plot(t4,5.47*f4,'m-','LineWidth',2)

tt1=0:0.001:C;
ff1=1-r1*(1-exp(-r1*tt1));
tt2=e1:0.001:C;
ff2=(1-r1*(1-exp(-r1*e1)))*(1-r2*(1-exp(-r2*(tt2-e1))));
tt3=e1+e2:0.001:C;
ff3=(1-r1*(1-exp(-r1*e1)))*(1-r2*(1-exp(-r2*e2)))*(1-r3*(1-exp(-r3*(tt3-e1-e2))));
tt4=e1+e2+e3:0.001:C;
ff4=(1-r1*(1-exp(-r1*e1)))*(1-r2*(1-exp(-r2*e2)))*(1-r3*(1-exp(-r3*e3)))*(1-r4*(1-exp(-r4*(tt4-e1-e2-e3))));
hold on
plot(tt1,5.47*ff1,'r--')
hold on
plot(tt2,5.47*ff2,'g--')
hold on
plot(tt3,5.47*ff3,'b--')
hold on
plot(tt4,5.47*ff4,'m--')
title('(C)')
xlabel('Effort \epsilon')
ylabel('\lambda^x(\epsilon)')
ylim([0 5.47])
xlim([0 10])

%PLOT FIGURE 1D

%Example random switch times and order of application
e1=0.3;
e2=7.6;
e3=0.2;
r=[r2;r4;r1;r3];
r1=r(1,1);
r2=r(2,1);
r3=r(3,1);
r4=r(4,1);

%Plot curves
t=0:0.001:C;
subplot(2,2,4)
t1=0:0.001:e1;
f1=1-r1*(1-exp(-r1*t1));
t2=e1:0.001:e1+e2;
f2=(1-r1*(1-exp(-r1*e1)))*(1-r2*(1-exp(-r2*(t2-e1))));
t3=e1+e2:0.001:e1+e2+e3;
f3=(1-r1*(1-exp(-r1*e1)))*(1-r2*(1-exp(-r2*e2)))*(1-r3*(1-exp(-r3*(t3-e1-e2))));
t4=e1+e2+e3:0.001:C;
f4=(1-r1*(1-exp(-r1*e1)))*(1-r2*(1-exp(-r2*e2)))*(1-r3*(1-exp(-r3*e3)))*(1-r4*(1-exp(-r4*(t4-e1-e2-e3))));
%figure;
%subplot(1,2,1)
plot(t1,5.47*f1,'r-','LineWidth',2)
hold on
plot(t2,5.47*f2,'g-','LineWidth',2)
hold on
plot(t3,5.47*f3,'b-','LineWidth',2)
hold on
plot(t4,5.47*f4,'m-','LineWidth',2)

tt1=0:0.001:C;
ff1=1-r1*(1-exp(-r1*tt1));
tt2=e1:0.001:C;
ff2=(1-r1*(1-exp(-r1*e1)))*(1-r2*(1-exp(-r2*(tt2-e1))));
tt3=e1+e2:0.001:C;
ff3=(1-r1*(1-exp(-r1*e1)))*(1-r2*(1-exp(-r2*e2)))*(1-r3*(1-exp(-r3*(tt3-e1-e2))));
tt4=e1+e2+e3:0.001:C;
ff4=(1-r1*(1-exp(-r1*e1)))*(1-r2*(1-exp(-r2*e2)))*(1-r3*(1-exp(-r3*e3)))*(1-r4*(1-exp(-r4*(tt4-e1-e2-e3))));
hold on
plot(tt1,5.47*ff1,'r--')
hold on
plot(tt2,5.47*ff2,'g--')
hold on
plot(tt3,5.47*ff3,'b--')
hold on
plot(tt4,5.47*ff4,'m--')
title('(B)')
xlabel('Effort \epsilon')
ylabel('\lambda^x(\epsilon)')
ylim([0 5.47])
xlim([0 10])

