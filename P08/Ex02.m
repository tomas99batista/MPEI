#Ex 02
#ALINEA A)

#format rat
T=[ 1/3 1/4 0;
    1/3 11/20 1/2;
    1/3 1/5 1/2]

#Matriz e estocastica se todos os valores sao probabilidades
#ou seja tem de ser >= 0 ou <= 1 e a soma dar das colunas dar 1 |;
sum(T);
T >= 0;
T <= 1;

#-------------------------------------------------------------------------------
#ALINEA B)
printf("Alinea B)\n");
init = [60; 15; 15];
printf("Alunos = [60, 15, 15]\n");

#-------------------------------------------------------------------------------
#ALINEA C)
printf("\nAlinea C)\n");
printf("Numero de alunos em cada grupo apos 30 aulas c/ matriz = [60; 15; 15]: \n");
x30 = T^30 * init;
disp(x30);

#-------------------------------------------------------------------------------
#ALINEA D)
printf("\nAlinea D)\n");
printf("Numero de alunos em cada grupo apos 30 aulas c/ matriz = [30; 30; 30]: \n");
init_equiv = [30; 30; 30];
x30_equiv = T^30 * init_equiv;
disp(x30_equiv);
