#probabilidade de sair essa sequˆencia de 10 caras
#f_prob(p,n,k,exp)
  % p -> probabilidade de sair cara
  % n -> numero de tentativas
  % k -> numero de x pretendido
  % exp -> numero de experiencias
fprintf("Alínea a): ")
probabilidade_10caras = f_prob(0.5,10, 10, 1e5)


fprintf("Alínea b): ")
  #P(Sair 11 cara | Sairam 10 caras) = P(sair 11 e sairem 10) / probb(sairem 10)
  
  
##  
##  lancamentos     = rand(11,1e5) > 0.5;    
##  sucessos10Caras = sum(lancamentos(1:10,:)) == 10;
##  sucessso11Caras = sum(lancamentos) == 11;
##  prob = sum(sucessso11Caras) / sum(sucessos10Caras)