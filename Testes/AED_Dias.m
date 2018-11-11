#89236
X=[3:15];
Special_Tempo=[0.000,0.000,0.000,0.000,0.000,0.000,0.001,0.005,0.062,0.772,8.076,102.383,1631.964];
Special_Dist_Max=[1144,1303,1661,1979,2361,2594,3675,4098,4413,5021,5581,6497,6620];
Special_Dist_Min=[946,949,1003,1094,1076,1102,1506,1655,1661,1571,1600,1632,1678];

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

NS_Tempo=[0.000,0.000,0.000,0.000,0.000,0.000,0.001,0.005,0.062,0.773,8.102,102.484,1633.009];
NS_Dist_Max=[1045,1243,1563,1824,2214,2385,3378,3876,4044,4695,5242,6002,6105];
NS_Dist_Min=[1045,1048,1116,1197,1208,1297,1801,1810,1817,1817,1831,1832,1848];

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