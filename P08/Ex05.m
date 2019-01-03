#Ex 05
#ALINEA A)
printf("Alinea A)\n");
printf("Matriz de transicao:\n");
  #Sol Nuvens Chuva
A=[0.7  0.2 0.1;
    0.2 0.3 0.5
    0.3 0.3 0.4];
#T e a transposta do A
T=A';
disp(T);  

#-------------------------------------------------------------------------------
#ALINEA B)
printf("\nAlinea B)\n");
printf("Probabilidade de no dia atual ser sol e no dia seguinte chuva: ");

disp(T(3,1));

#-------------------------------------------------------------------------------
#ALINEA C)
printf("\nAlinea C)\n");
M=[];
for i = 1:20
  Tn = T^i;
  M=[M Tn(:)];
endfor
figure(1);
plot(M');
#-------------------------------------------------------------------------------
#ALINEA D)
printf("\nAlinea D)\n");
disp(">>>>Duvidas");
