%%Load Data
Data = xlsread('Battery_Parameters.xlsx');

%%Name the data
SOC = Data(:,1);
OCV = Data(:,2);
R_Charge = Data(:,3);
R_Discharge = Data(:,4);

%%Plot
figure
plot(SOC,OCV);
figure
plot(SOC,R_Charge);
figure
plot(SOC,R_Discharge);


%%Def Parameters
I = 2.3;
Cn = 2.3 *3600; %capacity per seconds
sim_time = 3600 ; % since battery will take one hour to get full charge. 
% Hence changing actual simulation time before execution. 

%%Run the model
sim('BatteryStateOfCharge');


