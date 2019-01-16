#Ex 07
#ALINEA A)
printf("Alinea A)\n");
printf("Matriz de transicao:\n");
    #A   B   C  
H=[ 0.8 0.1 0.05;
    0.2 0.6 0.2;
    0 0.3 0.75];
disp(H);  
printf("\nDinheiro de cada um 4 janeiro(A; B; C):");
#12h 1 janeiro
Init = [100; 200; 30]; #Dinheiro inicial de cada um #A;B;C
#No dia 4 de janeiro as 12h ocorreram 3 transacoes
T3 = T^3 * Init;
disp(T3')
#-------------------------------------------------------------------------------
#ALINEA B)
printf("\nAlinea B)\n");
#No dia 1 de janeiro do ano (antes das 23:55 do dia 1)
#seguinte ocorreram 366 transacoes (bissexto)
printf("\nDinheiro de cada um 1 janeiro ano seguinte (366 dias)(A; B; C):");
T366 = T^366 * Init;
disp(T366')
#-------------------------------------------------------------------------------
#ALINEA C)
printf("\nAlinea C)\n");
day = 1;
while (1)
  P_Cat = T ^ day * Init;
  if (P_Cat(3) > 130) 
    break;
  endif
  day++;
endwhile
printf("%d dias depois a Catarina passou a ter mais de 130 euros, ", day);
printf("ou seja, no dia 10 de janeiro\n");