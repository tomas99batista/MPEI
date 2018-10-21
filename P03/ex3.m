#ALINEA A)
display("Alinea a)\nGraficos\n");
#X = {0, 1, 2, 3, 4}
X = zeros(1, 5); #Vetor a ser preenchido c/ as probabilidades
p = 0.5;  #probabilidade de sair cara (moeda nao viciada)
k = 4;    #4 lancamentos 
N = 1e5;  #Num de experiencias
for i = 0: 4 #for para preencher o vetor c/ as probabilidades
  X(i+1) = f_prob_Simul(p, 4, i, N); #funcao que calcula a probabilidade
endfor
figure(1);
stem(0:4, X, "r"); #display das probabilidades
title("Representacao grafica da funcao massa de probabilidade de X");
xlabel("xi");
ylabel("P(X=xi)");
grid on;
#-------------------------------------------------------------------------------

#ALINEA B)
display("Alinea b)");
valor_Esperado = sum([0:k].*X);
printf("Valor esperado: %d\n", valor_Esperado);
variancia = sum(([0:k]).^2.*X) - valor_Esperado^2;
printf("Variancia: %d\n", variancia);   
desvio_Padrao = sqrt(variancia);   
printf("Desvio padrao: %d\n", desvio_Padrao); #Raiz de variancia
#-------------------------------------------------------------------------------

#ALINEA C)
display("\nAlinea c)");
printf("Trata-se de uma Distribuicao Binomial\n");
printf("k:Numero de sucessos\nn:numero de tentativas\np:probabilidade de sucesso\n");
printf("Funcao: (n!/(k!*(n-k)!)) * p^k * (1-p)^(n-k)\n");
#-------------------------------------------------------------------------------

#ALINEA D)
display("\nAlinea d)");
prob_Binomial = [1:5];
for i = 1:5
  prob_Binomial(i) = f_prob_Binomial(0.5, 4, i-1); 
endfor  
compare_values = abs(X - prob_Binomial);
printf("Diferencas, desde xi = 0 ate xi = 4: %d\n", compare_values)
printf("A diferenca dos valores sao bastante baixas\n");
#-------------------------------------------------------------------------------

#ALINEA E)
display("\nAlinea e)");
#i.
#Probabilidade contraria: 1-P(obter menos do que 2 coroas) = 1-(P(X=0) + P(X=1))
n=4;    #numero de tentativas
p=0.5;  #probabilidade caso sucesso
P_X0 = f_prob_Binomial(p,n,0); #P(X=0)
P_X1 = f_prob_Binomial(p,n,1); #P(X=1)
P_pelo_menos_2 = 1 - (P_X0 + P_X1);     #P(X=1) + P(X=0)
printf("i. Probabilidade de pelo menos 2 coroas %d", P_pelo_menos_2);
#ii.
#Probabilidade de obter até 1, incluindo 1 e igual a probb da alinea i.
P_Ate_1 = P_X0 + P_X1;
printf("\nii. Probabilidade de ate 1 coroa: %d", P_Ate_1);
#iii.
#Probabilidade de obter entre 1 e 3, incluindo o 1 e o 3
P_X2= f_prob_Binomial(p,n,2);      #P(X=2)
P_X3= f_prob_Binomial(p,n,3);      #P(X=3)
P_Entre_1e3_inc = P_X1 + P_X2 + P_X3; #P(X=1) + P(X=2) + P(X=3)
printf("\niii. Probabilidade de entre 1 e 3 coroas: %d\n", P_Entre_1e3_inc);
##printf("iii. Excluindo 1 e 3 (P(X=2)): %d\n",P_X2);

#FIM