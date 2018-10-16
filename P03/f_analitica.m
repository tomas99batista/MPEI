function [probabilidade] = f_analitica(p,n,k)
  % p -> probabilidade de sair cara
  % n -> numero de tentativas
  % k -> numero de x pretendido
  probabilidade = factorial(n)/(factorial(n-k)*factorial(k))*p^k*(1-p)^(n-k);  
  return;
end