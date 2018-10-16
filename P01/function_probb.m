#parametros:numero de lancamentos n, numero de caras pretendidas k
# e numero de experiencias a realizar N

function [probabilidade] = function_probb(p,n,k,exp)
  % p -> probabilidade de sair cara
  % n -> numero de tentativas
  % k -> numero de x pretendido
  % exp -> numero de experiencias
  lancamentos = rand(n,exp) > p;
  sucessos= sum(lancamentos)==k;
  probabilidade= sum(sucessos)/exp;
  return;
end