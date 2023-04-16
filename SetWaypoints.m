%% Task Waypoints
Waypoints = [0 30; 30 30; 30 -30; -30 -30; -30 0; -5 0];
WPNum = size(Waypoints,1);

%% Inital Pose
P0 = [0,0];
Yaw0 = 70;  %Deg