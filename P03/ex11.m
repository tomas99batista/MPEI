#EX 11)
display("Exercicio 11\n");

N = 1e6;       
media = 14;
desvio_Padrao = 2;
X = desvio_Padrao.*randn(1,N) + media; 

#ALINEA A)
display("Alinea a)");
P_A_12_16 = sum(X >= 12 & X <= 16)/N;
printf("Probabilidade de um aluno ter uma classificacao entre 12 e 16: %d\n", P_A_12_16);

#-------------------------------------------------------------------------------

#ALINEA B)
display("\nAlinea b)");
P_B_10_18 = sum(X >= 10 & X <= 18)/N;
printf("Probabilidade de os alunos terem classifcacoes entre 10 e 18: %d\n", P_B_10_18);

#-------------------------------------------------------------------------------

#ALINEA C)
display("\nAlinea c)");
P_C_Passar = sum(X >= 10)/N;
printf("Probabilidade de um aluno passar: %d\n", P_C_Passar);


#FIM