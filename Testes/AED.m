#89296
X=[3:15];
Special_Tempo=[0.000,0.000,0.000,0.000,0.000,0.000,0.001,0.006,0.063,0.774,8.101,103.898,1631.396];
Special_Dist_Max=[1061,1444,1793,2017,2322,2849,3516,3668,4130,4502,4831,5835,6213];
Special_Dist_Min=[821,957,944,956,968,973,1168,1176,1291,1330,1333,1635,1676];

figure(1);

subplot(2,2,1);
plot(X, Special_Dist_Max, 'r', "linewidth", 5);    #Red - MAX
hold on;
plot(X, Special_Dist_Min, 'b', "linewidth", 5);    #Blue - MIN
xlabel('Cities (3-15)', 'FontSize',12,'FontWeight','bold');
ylabel('Distance (km)', 'FontSize',12,'FontWeight','bold');
legend('Max Dist','Min Dist', 'location', 'north');
title('Distance (Special = 1)','FontSize',12,'FontWeight','bold');
grid on;
hold off;

subplot(2,2,2);
title('Time (Special = 1)')
plot(X, Special_Tempo, "linewidth", 5);
xlabel('Cities (3-15)', 'FontSize',12,'FontWeight','bold');
ylabel('Time (s)', 'FontSize',12,'FontWeight','bold');
title('Time (Special = 1)','FontSize',12,'FontWeight','bold');
grid on;

#NO SPECIAL

NS_Tempo=[0.000,0.000,0.000,0.000,0.000,0.000,0.001,0.005,0.063,0.771,8.094,102.472,1630.632];
NS_Dist_Max=[941,1420,1771,1933,2183,2604,3316,3441,3865,4219,4493,5470,5874];
NS_Dist_Min=[941,1037,1046,1062,1076,1080,1193,1202,1330,1346,1350,1728,1732];

subplot(2,2,3);
title('Time (Special = 1)')
plot(X, NS_Dist_Max, 'r', "linewidth", 5);    #Red - MAX
hold on;
plot(X, NS_Dist_Min, 'b', "linewidth", 5);    #Blue - MIN
xlabel('Cities (3-15)', 'FontSize',12,'FontWeight','bold');
ylabel('Distance (km)', 'FontSize',12,'FontWeight','bold');
legend('Max Dist','Min Dist', "location", "north");
title('Distance (Special = 0)','FontSize',12,'FontWeight','bold');
grid on;
hold off;

subplot(2,2,4);
title('Time (Special = 0)')
plot(X, NS_Tempo, "linewidth", 5);
xlabel('Cities (3-15)', 'FontSize',12,'FontWeight','bold');
ylabel('Time (s)', 'FontSize',12,'FontWeight','bold');
title('Time (Special = 0)','FontSize',12,'FontWeight','bold');
grid on;