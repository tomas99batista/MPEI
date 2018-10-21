#EX 7)
display("Exercicio 7\n");
#Lei de Poisson c/ média de 15 mensagens p/ segundo.

#ALINEA A)
display("Alinea a)");
lambda = 15;
P_0 = f_Poisson(0,lambda);  #f(0,15); lambda = 15; #formula dos slides; 0 mensagens
printf("Probabilidade de nao receber nenhuma mensagem num segundo:");
disp(P_0); #Ao usar P_0 no printf ficava em ^-, assim printa todos os 0's
#-------------------------------------------------------------------------------

#ALINEA B)
printf("\nAlinea b)\n");
#P(X>10) = 1-P(X<=10) = 1 -( P(X=0) + .... + P(X=10)) 1-Acontecimento contrario
P_0_ate_10 = 0;
for i = 1:11 #Desde 0 ate 10, inclusive
  P_0_ate_10 += f_Poisson(i-1 , lambda); #Somatorio das varias probabilidades
endfor
P_mais_de_10 = 1 - P_0_ate_10;      #Probb do acontecimento contrario
printf("Probabilidade de receber mais de 10 mensagens num periodo de segundo: %d \n", P_mais_de_10);

#FIM