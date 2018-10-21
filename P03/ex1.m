#EX 1)
display("Exercicio 1\n");

#ALINEA A)
display("Alinea a)");
printf("Grafico\n");
#Assumindo que é um dado não viciado,  p(X=1) = p(X=2) = .... = p(X=6) = 1/6
X = zeros(1,6); #Vetor para preencher c/ probbs
for i = 1:6   #for para preencher o vetor X
  X(i) = 1/6; #Vai preencher o vetor X com a probabilidade 1/6
endfor
figure(1);
stem([1:6], X ,"b"); #display das probabilidades
title("Representacao grafica da funcao massa de probabilidade de X");
xlabel("xi");
ylabel("P(X=xi)");
grid on;
#-------------------------------------------------------------------------------

#ALINEA B)
display("\nAlinea b)");
printf("Graficos");
Y = zeros(1, 8); #Vetor a ser preenchido com as probabilidades acumuladas
for i = 1:7      #for para preencher o vetor c/ as probabilidades
  Y(i) += 1/6 * (i-1);
endfor
Y(8)=1; #Definir para quando xi>=6
X = [0,1,2,3,4,5,6,7]; #Para definir o eixo dos xx
figure(2);
stairs(X, Y, 'r');
title("Representacao grafica da funcao de distribuicao acumulada de X");
xlabel("xi");
ylabel("P(X<=xi)");
grid on;
#FIM