close all

X = logsout{1}.Values.Data;
Y = logsout{2}.Values.Data;

WaypointsPlot = [P0;Waypoints];

figure
hold on;grid on;box on;
plot(WaypointsPlot(:,2),WaypointsPlot(:,1),'--r','LineWidth',1.5);
plot(Y,X,'-b','LineWidth',1.5);
scatter(Y(1),X(1),40,'p','filled','MarkerFaceColor','red');
scatter(Y(end),X(end),40,'h','filled','MarkerFaceColor','black');
scatter(WaypointsPlot(2:end,2),WaypointsPlot(2:end,1),40,'o','MarkerEdgeColor','red');
axis equal;
legend({'TaskPath','Track','Start','End','WayPoints'},'Location','best');legend('boxoff');
xlabel('Y[m]');ylabel('X[m]');