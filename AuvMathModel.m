function Out = AuvMathModel(In)
% In = [u;v;r(rad/s);Xprop(N);NDisturb;Deltar(rad)]
% Out = [dotu;dotw;dotr(rad/s/s)]

% The used model is described in the following paper
% Verification of a Six-Degree of Freedom Simulation Model for the REMUS Autonomous Underwater Vehicle

u = In(1);
v = In(2);
r = In(3);
Xprop = In(4);
NDisturb = In(5);
Deltar = In(6);

global auv;

Xsum = auv.Xuu*u*abs(u)+(auv.Xvr+auv.m)*v*r+(auv.Xrr+auv.m*auv.xg)*r*r+Xprop;
Ysum = auv.Yvv*v*abs(v)+auv.Yrr*r*abs(r)+(auv.Yur-auv.m)*u*r+auv.Yuv*u*v+auv.Yuudelta*u*u*Deltar;
Nsum = NDisturb+auv.Nvv*v*abs(v)+auv.Nrr*r*abs(r)+(auv.Nur-auv.m*auv.xg)*u*r+auv.Nuv*u*v+auv.Nuudelta*u*u*Deltar;

Out = auv.M\[Xsum;Ysum;Nsum];

end