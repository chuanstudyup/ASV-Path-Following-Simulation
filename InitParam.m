global auv;

% The used model is described in the following paper
% Verification of a Six-Degree of Freedom Simulation Model for the REMUS Autonomous Underwater Vehicle

auv.m = 30.51; %kg
auv.Izz = 3.45;

auv.xg = 0; %m
auv.zg = 0.0196;

auv.Xdotu = -0.93;
auv.Xuu = -1.62; %kg/m
auv.Xvr = 35.5;
auv.Xrr = -1.93;

auv.Ydotv = -35.5;
auv.Ydotr = 1.93;
auv.Yvv = -131;
auv.Yrr = 0.632;
auv.Yur = 5.22;
auv.Yuv = -28.6;
auv.Yuudelta = -9.64;

auv.Ndotv = 1.93;
auv.Ndotr = -4.88;
auv.Nvv = -3.18;
auv.Nrr = -9.4;
auv.Nur = -2;
auv.Nuv = -2.4;
auv.Nuudelta = 6.15;

auv.M = [auv.m-auv.Xdotu,0,0;0,auv.m-auv.Ydotv,auv.m*auv.xg-auv.Ydotr;0,auv.m*auv.xg-auv.Ndotv,auv.Izz-auv.Ndotr];