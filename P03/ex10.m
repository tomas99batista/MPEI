#EX 10)
display("Exercicio 10\n");

#ALINEA A)
display("Alinea a)");
#ANALITICA
# X < 3 
P_A_analitica = (3-0)/(10-0); #Probb da alinea a; #formula dos slides
printf("P(X<3), analiticamente: %d\n", P_A_analitica);

#SIMULACAO
#a + rand()*( b-a); #Tirada dos slides
N = 1e5;
X = 0 + rand(1,N) * (10-0); #Slides
Sucess_A = sum(X<3);
P_A_Simulacao = Sucess_A/N;
printf("P(X<3), por simulacao: %d\n", P_A_Simulacao);
#-------------------------------------------------------------------------------

#ALINEA B)
display("\nAlinea b)");
#ANALITICA
# X > 7
P_B_analitica = (10-7)/(10-0); #Probb da alinea b
printf("P(X>7), analiticamente: %d\n", P_B_analitica);

#SIMULACAO
Sucess_B = sum(X>7);
P_B_Simulacao = Sucess_B/N;
printf("P(X>7), por simulacao: %d\n", P_B_Simulacao);
#-------------------------------------------------------------------------------

#ALINEA C)
display("\nAlinea c)");
#ANALITICA
# 1 < X < 6
P_C_analitica = (6-1)/(10-0); #Probb da alinea c
printf("P(1<X<6), analiticamente: %d\n", P_C_analitica);

#SIMULACAO
Sucess_C = sum(X > 1 & X < 6);
P_C_Simulacao = Sucess_C/N;
printf("P(1<X<6), por simulacao: %d\n", P_C_Simulacao);

#FIM