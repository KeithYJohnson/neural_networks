%Inputs
x0 = 18;
x1 = 9;
x2 = -8

%weights
wxh = -0.1;
whh = 0.5;
why = .25;

%biases
hbias = 0.4;
ybias = 0.0;

%targets at t-timestep
t0 = 0.1;
t1 = -0.1;
t2 = -0.2;


%computations
z0 = wxh*x0 + hbias;
%hidden unit value at t0
h0 = 1 / (1+exp(-z0));
%output unit value at t0
y0 = why*h0 + ybias;
%error at t0
e0 = .5*(t0-y0)^2;


z1 = wxh * x1 + whh * h0 + hbias;
%hidden unit value at t1
h1 = 1 / (1+exp(-z1));
%output unit value at t1
y1 = why *h1 + ybias;
% error at t1
e1 = .5*(t1-y1)^2;

z2 = wxh*x2 + whh*h1 + hbias;
%hidden unit value at t2
h2 = h1 = 1 / (1+exp(-z2));
%hidden unit value at t2
y2 = why*h2 + ybias;
% error at y2
e2 = .5*(t2-y2)^2;

E = e0 + e1 + e2
