display("Exercicio 4\n");

display("Alinea a)\nGráficos\n");
#SIMULACAO
p = 0.3; #30% de pecas defeituosas
n = 5; #pecas tomadas aleatoriamente
exp = 10e5;
 
probbs_simulacao=zeros(1,6); #criado para armazenar a probabilidade de cada acontecimento (0,1....,5)
for i = 1:6
  probbs_simulacao(i) = f_prob(p, n, i-1, exp);
endfor
figure(1);
##probbs_simulacao #testes
bar(0:5, probbs_simulacao, "hist","facecolor", "r"); #display das probabilidades
title("Distribuicao de probabilidades de X (por simulacao)");
xlabel("X");
ylabel("Probabilidade p/ simulacao");

#ANALITICAMENTE
probbs_analitica = zeros(1,6); #criado para armazenar a probabilidade de cada acontecimento (0,1....,5)
for k = 1:6;
  probbs_analitica(k) = f_analitica(p, n, k-1);
endfor
figure(2);
bar(0:5, probbs_analitica, "hist", "facecolor", "b"); #display das probabilidades
title("Distribuicao de probabilidades de X (analiticamente)");
xlabel("X");
ylabel("Probabilidade analitica");

#----------------------------------------------------------------#

display("Alínea b)")
##no maximo, 2 das pecas
#SIMULACAO
n=5;
exp = 10e5;
p=0.3;
  lancamentos = rand(n,exp) < p; 
  sucessos = sum(lancamentos)<=2;
  p_simulacao_2p= sum(sucessos)/exp;
 
printf("Probabilidade p/ simulacao: %d\n", p_simulacao_2p);
##display(p_simulacao_2p);

#ANALITICAMENTE
p_analitica_2p=0; #Probabilidade de no maximo 2 pecas
#f_analitica(p,n,k)
for i = 1:3
  p_analitica_2p+= f_analitica(p,n,i-1);
endfor
printf("Probabilidade analitica: %d\n", p_analitica_2p);
