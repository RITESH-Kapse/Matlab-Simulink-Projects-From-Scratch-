%%
Sim_Time = 7;
Step_Final = 1;
M = 1;
b = 10;
k = 20;


Kp = 1000; %200, 500, 800, 1000
Ki = 0; 
Kd = 0;
sim('PID_Tunning');

%Plotting SECTION
figure
plot(IN.time,IN.data)
hold all
plot(OUT.time,OUT.data)
