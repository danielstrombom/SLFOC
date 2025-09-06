function A=labRAND(T)
%Function for calculating the mean, sd, min, max of T random deployment of
%controls.

X=[];
for k=1:T
Y=aRAND(0.1,0.15,0.35,0.5,10);
X=[X,Y];
end
A=[mean(X),std(X),min(X),max(X)];
%figure;
