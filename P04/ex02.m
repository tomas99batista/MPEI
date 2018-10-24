#a) 10 experiencias de bernoulli, probb sucesso p
p = 0.4; #poderia ser qql valor
x = rand(1,10) < p;
figure(1);
stem(x);


#b) 15 lancamentos 1 dado
p = 1/6
lancamentos = floor( rand(1,15) * 6)+1 #Valores entre 0 e 6
figure(2);
stem(1:15, lancamentos);
title("15 lancamentos de 1 dado e respetivos valores das faces (1-6)");

#c) obter 20 numeros igualmente distribuidos entre -4 e 10
minimo = -4;
maximo = 20;
g = maximo - minimo
z = floor((rand(1, 20) * g) + minimo);
figure(3);
stem(z)
title("20 numeros igualmente distribuidos entre -4 e 10");
