##  f_prob(p,n,k,exp)

##    p -> probabilidade
##    n -> numero de tentativas
##    k -> numero de x pretendido
##    exp -> numero de experiencias


p = 0.5; #probb de ser rapaz/rapariga
n = 2;
exp = 1e5;

fprintf('Alínea a: ')
  k = 1; #1 rapaz
  lancamentos = rand(n,exp) > p;
  sucessos= sum(lancamentos)>= k; #k= 1 e k=2
  fprintf('Alínea a: ')
  probabilidade= sum(sucessos)/exp

  
fprintf('Alínea c: ')
  #Probabilidade de o segundo filho ser rapaz, sabendo que o primeiro é rapaz
  #P(boy2|Boy1)= P(Boy1 e Boy2) / P(Boy1)
  P_Boy2_Boy1 = f_prob(0.5, 2, 2, 10000)/0.5
  
  
  %% Alínea c)
n= 2;
N= 1e5;
filhos = rand(n, N) > 0.5;
res1 = sum(filhos) == 2;
res2 = sum(filhos) >= 1;
probB = sum(res1) / sum(res2);

fprintf('\n-----------------------\nAlínea c: Valor por simulação: ')
disp(probB)

%% Alínea d)

filhos = rand(n, N) > 0.5;
res1 = sum(filhos) == 2;
res2 = filhos(1,:);
probC = sum(res1) / sum(res2);

fprintf('\n-----------------------\nAlínea d: Valor por simulação: ')
disp(probC)
  