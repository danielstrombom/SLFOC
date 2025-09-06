function f4f=aRAND(k1,k2,k3,k4,C)
%Function to calculate the final growrate of random application of controls 
%at random times.

%Growth rates (Formula (8) uses r_i, so convert input k_i first)
r1=1-k1;
r2=1-k2;
r3=1-k3;
r4=1-k4;


%RANDOM APPLICATION OF CONTROLS

%Random switch times
e1=C*rand;
e2=(C-e1)*rand;
e3=(C-e1-e2)*rand;

%Randomize control order
r=[r1;r2;r3;r4];
Q=r;
       dd=randperm(4); % d is a random permutation of the vector [1,2,3,4]
       for i=1:4 % This loop randomly change the order of the rows.
          P(i,1)=Q(dd(i),1); 
       end
       r=P;
       r1=r(1,1);
       r2=r(2,1);
       r3=r(3,1);
       r4=r(4,1);
 
t=0:0.001:C;

t1=0:0.001:e1;
f1=1-r1*(1-exp(-r1*t1));
t2=e1:0.001:e1+e2;
f2=(1-r1*(1-exp(-r1*e1)))*(1-r2*(1-exp(-r2*(t2-e1))));
t3=e1+e2:0.001:e1+e2+e3;
f3=(1-r1*(1-exp(-r1*e1)))*(1-r2*(1-exp(-r2*e2)))*(1-r3*(1-exp(-r3*(t3-e1-e2))));
t4=e1+e2+e3:0.001:C;
f4=(1-r1*(1-exp(-r1*e1)))*(1-r2*(1-exp(-r2*e2)))*(1-r3*(1-exp(-r3*e3)))*(1-r4*(1-exp(-r4*(t4-e1-e2-e3))));

    f4f=5.47*f4(1,size(f4,2)); %Final growth rate.

