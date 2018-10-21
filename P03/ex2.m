#EX 2)
display("Exercicio 2\n");
#90 notas de 5 Euros, 9 notas de 50 e 1 de 100
# 90 x 5€; 9 x 50€ ; 1 x 100€

#ALINEA A)
display("Alinea a)");
printf("S= {nota1, nota2, ...., nota99, nota100}\n"); #Todas as notas são diferentes umas das outras, não importa o seu valor
printf("Probabilidade do Acontecimento Elementar = 1/100\n"); #Assim, a probb. acont. elem. é 1/100
#-------------------------------------------------------------------------------

#ALINEA B)
display("\nAlinea b)");
printf("Espaco amostragem = {5€, 50€, 100€}\n");
#Casos_possiveis = 90 + 9 + 1 = 100; 
probb_5E = 90/100;  #P(X=5)     CF/CP
probb_50E = 9/100;  #P(X=50)    CF/CP
probb_100E = 1/100; #P(X=100)   CF/CP
printf("pX(xi) = P(X=xi):\n");
printf("%d quando xi = 5\n", probb_5E);
printf("%d quando xi = 50\n", probb_50E);
printf("%d quando xi = 100\n", probb_100E);
#-------------------------------------------------------------------------------

#ALINEA C).
display("\nAlinea c)");
printf("Grafico\n");
X = zeros(1,3); #Vetor a ser preenchido c as probabilidades
X(1) = probb_5E;  
X(2) = probb_50E;
X(3) = probb_100E;
figure(1);
stem([5,50,100], X, "b"); #display das probabilidades
title("Representacao grafica da funcao massa de probabilidade de X");
xlabel("xi");
ylabel("P(X=xi)");
grid on;
#FIM
