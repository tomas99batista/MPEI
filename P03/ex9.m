#EX 9)
display("Exercicio 9\n");

#P(pelo menos um erro) = P(>=1) = 1 - P(<1) = 1 - P(0)
k = 0;        #P(0)
lambda = 1;   
P_0 = f_Poisson(k, lambda);  #f(0,1);   #Lambda dado no enunciado 
P_pelomenos_1 = 1 - P_0;     #1 - P(0)M acontecimento contrario
printf("A probabilidade de existir pelo menos 1 erro numa determinada pag e: %d \n", P_pelomenos_1);

#FIM