#EX 5)
display("Exercicio 5\n");

#Temos que testar todas as possibilidades, assim:
probbs = [0: 0.01 : 1];

#2 motores
#Para se despenhar tem de falhar os 2 motores
n = 2;
k=2;
p_2motores = nchoosek(n,k)*(probbs.^k).*((1-probbs).^(n-k)); #Combinacoes (n k)

#4 motores
#Para se despenhar tem de falhar mais que 2 motores, podem ser 3 ou os 4
n = 4;
p_4motores = 0;
for k = 3:4 #podem avariar os 3 ou os 4
  p_4motores += nchoosek(n,k)*(probbs.^k).*((1-probbs).^(n-k));
endfor
plot(probbs, p_2motores, 'b' ,probbs, p_4motores, 'r'); #Ver o crescimento de cada funcao
legend("2 motores", "4motores");
title("Grafico das funcoes de: probabilidades de avariar motor e de despenhar, em avioes com 2 ou 4 motores");
xlabel("P(avaria motor)");
ylabel("P(despenhar)");
grid on;
probbs = (p_2motores > p_4motores);
turning_point = sum(probbs == 1);
printf("Se a probabilidade de avaria motor for <= 33%%, e mais seguro andar num aviao de 4 motores\n");
printf("Mas se a probabilidade de avaria motor for >33%%, e mais seguro andar num aviao com 2 motores.\n");

#FIM