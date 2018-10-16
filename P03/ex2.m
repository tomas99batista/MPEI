printf("Exercicio 2)\nAlinea a)\n");
#90 notas de 5 Euros, 9 notas de 50 e 1 de 100
# 90 x 5€; 9 x 50€ ; 1 x 100€

#ALINEA A)
printf("S= {nota1, nota2, ...., nota99, nota100}\n");
printf("Probb Acont. Elementar = 1/100\n");

#ALINEA B)
printf("Espaço amostragem = [5€, 50€, 100€]");
#Casos_possiveis = 90 + 9 + 1 = 100; probb_5E = 90/100; probb_50E = 9/100; probb_100E = 1/100;

#c)

X= zeros(3);
X(1) = probb_5E;
X(2) = probb_50E;
X(3) = probb_100E;

#duvida no eixo dos x !!!!!!!!
