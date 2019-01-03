#Ex 01
#ALINEA A)
printf("Alinea A)\n");
T = [0.7 0.8; 
     0.3 0.2];
init = [1; 0];
T2 = T^2 * init;
printf("Probabilidade = %d\n" , T2(1));
#-------------------------------------------------------------------------------
#ALINEA B)
printf("\nAlinea B)\n");
initB = [0; 1];
T2B = T^2 * init;
printf("Probabilidade = %d\n" , T2B(1));
#-------------------------------------------------------------------------------
#ALINEA C)
printf("\nAlinea C)\n");
initC = [1;0];
T30 = T^30 * initC;
printf("Probabilidade = %d\n" , T30(1));
#-------------------------------------------------------------------------------
#ALINEA D)
printf("\nAlinea D)\n");
InitD = [0.85; 0.15];
probb_D = zeros(1,30);
for i = 1:30
  probbs = T^i * InitD;
  probb_D(i) = probbs(2);
endfor
printf("Graficos\n");
probb_D
figure(1);
plot(probb_D);
grid on;
title("Provabilidade de faltar a cada aula (30)");