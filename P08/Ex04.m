#Ex 04
#ALINEA A)
printf("Alinea A)\n");
printf("Matriz de transicao:\n");
p=0.4;
q=0.6;
T=[ p^2 0 0 q^2;
    (1-p)^2 0 0 q*(1-q);
    p*(1-p)  0 0 q*(1-q);
    p*(1-p) 1 1 (q-q)^2];
disp(T);  
#-------------------------------------------------------------------------------
#ALINEA B)
printf("\nAlinea B)\n");
T10 = T^10;
printf("Probabilidade de chegar ao estado B apos 10 transicoes sendo q inicialmente estava no A: ");
disp(T10(2,1));
printf("Apos 10 transicoes A->C: ");
disp(T10(3,1)); #A->C
printf("Apos 10 transicoes A->D: ");
disp(T10(4,1));  #A->D
