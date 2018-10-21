#EX 4)
display("Exercicio 4\n");

#ALINEA A)
display("Alinea a)\nGráficos\n");
#SIMULACAO
p = 0.3; #30% de pecas defeituosas, probb de sucesso
n = 5; #pecas tomadas aleatoriamente
exp = 1e5; #num de experiencias
probbs_simulacao=zeros(1,6); #criado para armazenar a probabilidade de cada acontecimento (0,1....,5)
for i = 1:6   #for para preencher o vetor
  probbs_simulacao(i) = f_prob_Simul(p, n, i-1, exp); #preenche c/ a probb calculada pela funcao
endfor
##probbs_simulacao #usada para testes
figure(1);
stem(0:5, probbs_simulacao, "r"); #display das probabilidades
title("Distribuicao de probabilidades de X (por simulacao)");
xlabel("X");
ylabel("Probabilidade p/ simulacao");
grid on;

#ANALITICAMENTE
probbs_analitica = zeros(1,6); #criado para armazenar a probabilidade de cada acontecimento (0,1....,5)
for k = 1:6;  #for para preencher o vetor
  probbs_analitica(k) = f_prob_Binomial(p, n, k-1); #preenche c/ a probb calculada pela funcao
endfor
##probbs_analitica #usada para testes
figure(2);
stem(0:5, probbs_analitica, "b"); #display das probabilidades
title("Distribuicao de probabilidades de X (analiticamente)");
xlabel("X");
ylabel("Probabilidade analitica");
grid on;
#-------------------------------------------------------------------------------z

#ALINEA B)
display("Alinea b)")
#SIMULACAO
n=5; #numero de pecas
exp = 1e5;
p=0.3; #probabilidade peca defeituosas, probb de sucesso
lancamentos = rand(n,exp) < p; 
sucessos = sum(lancamentos)<=2; #podem existir 0, 1 ou 2 pecas
p_simulacao_2p= sum(sucessos)/exp;
printf("Probabilidade de no maximo 2 pecas defeituosas (simulacao): %d\n", p_simulacao_2p);

#ANALITICAMENTE
p_analitica_2p=0; #Probabilidade de no maximo 2 pecas
for i = 1:3   #for para fazer a soma de quando existem 0 + 1 + 2 pecas 
  p_analitica_2p+= f_prob_Binomial(p,n,i-1); #preenche c/ a probb calculada pela funcao
endfor
printf("Probabilidade de no maximo 2 pecas defeituosas (analiticamente): %d\n", p_analitica_2p);
#FIM
