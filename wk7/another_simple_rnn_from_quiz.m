% The figure below shows a Recurrent Neural Network (RNN) with one input unit x, one logistic hidden unit h, and one linear output unit
%
% y. The RNN is unrolled in time for T=0,1, and 2.
%
%
% The network parameters are: Wxh=0.5 , Whh=−1.0 , Why=−0.7 , hbias=−1.0, and ybias=0.0. Remember, σ(k)=11+exp(−k).
%
% If the input x takes the values 9,4,−2 at time steps 0,1,2 respectively, what is the value of the hidden state h at T=2? Give your answer with at least two digits after the decimal point.

%inputs
x0 = 9;
x1 = 4;
x2 = -2;

%weights
wxh = 0.5;
whh = -1.0;
why = -0.7;

hbias = -1.0;
ybias = 0.0;

%computations
%t0
z0 = wxh * x0 + hbias;
h0 = 1 / (1 + exp(-z0));
y0 = why *h0 + ybias;
disp('y0')
disp(y0)

%t1
z1 = (wxh * x1) + (whh * h0) + hbias;
h1 = 1 / (1 + exp(-z1));
y1 = why * h1 + ybias;
disp('y1')
disp(y1)

%t2
z2 = wxh * x2 + whh * h1 + hbias;
h2 = 1 / (1+exp(-z2));
y2 = why * h1 + ybias;
