m = 1000;
b = 50;
r = 10;

%Here s will let matlab know that , we are going to create
%transfer function in s-domain
s = tf('s');
Plant_TF = 1/(m*s + b);

Kp = 1000;
%In-matlab to use pid controller , directly write pid.
Controller = pid(Kp);

TF_ClosedLoop = feedback(Controller*Plant_TF,1);


%% use Kp equal to 100 and a reference speed of 10 m/s
t = 0:0.1:20;
figure

%step function will act as input in simulink and so here we can calculate
%the response for time period t.
step(r*TF_ClosedLoop,t)

%Here axis 0 25 represents x-axis label range , 0 10 represents y-label
%range.

axis([0 25 0 10])

%% PID Controller
Kp = 800;
Ki = 40;
Controller = pid(Kp,Ki);

TF_ClosedLoop = feedback(Controller*Plant_TF,1);

step(r*TF_ClosedLoop,t)
axis([0 20 0 10])