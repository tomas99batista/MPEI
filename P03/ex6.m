#EX 6)
display("Exercicio 6\n");

#DISTRIBUIÇÃO BINOMIAL
p = 1/1000; #probabilidade
n = 8000;   #amostra de 8000
k = 7;      #probabilidade de aparecerem 7
N = 1e3;    #Numero de experiencias a realizar
#Meti N = 1e3 porque estava a crashar constantemente com 1e5 e 1e4
#SIMULACAO
P_7_simul = f_prob_Simul(p,n,k,N);
printf("Probabilidade por simulacao: %d \n", P_7_simul);
#-------------------------------------------------------------------------------

#ANALITICA
P_7 = f_prob_Binomial(p,n,k); #Overflow 8000! e muito grande
P_7_analitica = (prod(7994:8000)/factorial(k))*p^7*((1-p)^(8000-7));
printf("Probabilidade analitica: %d \n", P_7_analitica);
#-------------------------------------------------------------------------------

#APROXIMACAO DE POISSON
lambda = n*p;
P_7_poisson = f_Poisson(k, lambda); #f(7,8) 
printf("Probabilidade por aproximacao de Poisson: %d \n", P_7_poisson);

printf("OS resultados sao muito aproximados uns dos outros.");
#FIM