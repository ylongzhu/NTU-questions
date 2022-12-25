clear
global k1;
global km1;
global k2;
k1=100;
km1=600;
k2=150;
y0=[10,1,0,0];
tspan=[0,0.5];
[t,y] = ode45(@odefun,tspan,y0);
figure;
plot(t,y(:,1),t,y(:,2),t,y(:,3),t,y(:,4));
legend('S','E','SE','P');

%% V-S plot
clear
global k1;
global km1;
global k2;
k1=100;
km1=600;
k2=150;
V=[];
for S=[0:5:1000]
y0=[S,1,0,0];
tspan=[0:0.0001:0.4];
[t,y] = ode45(@odefun,tspan,y0);
v=y(100,4)/t(100,1);
V(end+1)=v;
end
plot((0:5:1000),V);
%% V-S plot 2.0
clear
global k1;
global km1;
global k2;
k1=100;
km1=600;
k2=150;
V=[];
for S=[0:0.001:0.5]
y0=[S,1,0,0];
tspan=[0:0.0001:0.4];
[t,y] = ode45(@odefun,tspan,y0);
v=y(100,4)/t(100,1);
V(end+1)=v;
end
plot((0:0.001:0.5),V);


