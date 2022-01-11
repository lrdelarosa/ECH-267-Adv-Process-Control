% HW 1 ECH 267 Problem 3 

%% Data
Fv = 1;             % L/s
V = 5;              % L
inv_rt = Fv./V;     % 1/s
CAin = 0.5;         % M
CBin = 2;           % M

% steady-state
CAs = 0.20;         % M
CBs = 0.50;         % M
CCs = 0.75;         % M

%% Creating State-Space Matrix
a = [-(inv_rt+3.*CBs.^0.5) -1.5.*CAs.*CBs.^(-0.5) 0;
    -1.5.*CBs.^0.5 -(inv_rt+0.75.*CAs.*CBs.^(-0.5)) 0;
    3.*CBs.^0.5 1.5.*CAs.*CBs.^(-0.5) -inv_rt ];
b = [inv_rt 0; 0 inv_rt; 0 0];
c = [1 0 0; 0 1 0; 0 0 1];
d = [0 0; 0 0; 0 0];

%% Open-Loop Simulation
runsim_OL = sim('hw1p3')      % to run simulink
tcalc_OL  = runsim_OL.get('tout');   % extract time data from runsim results
CC_OL     = runsim_OL.get('CC');     % extract CC data from runsim results
CB_OL     = runsim_OL.get('CB');     % extract CB data from runsim results
CA_OL     = runsim_OL.get('CA');     % extract CA data from runsim results
% Plot
figure(1)
plot(CC_OL,'Linewidth',3)
hold on
plot(CB_OL,'Linewidth',3)
hold on
plot(CA_OL,'Linewidth',3)
grid on
title('Concentration vs. time (Open-Loop)')
xlabel('time,s')
ylabel('Concentration, M')
legend('CC','CB','CA')

%% Disturbance
runsim_OL = sim('hw1p3')      % to run simulink
CAin_OL = runsim_OL.get('CAin');   % extract CAin' data from runsim results
% Plot
figure(2)
plot(CAin_OL,'Linewidth',3)
title('Disturbance Step Change')
xlabel('t,s')
ylabel('Disturbance (CAin), M')