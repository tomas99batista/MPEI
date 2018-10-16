function [probabilidade] = f_prob(p,n,k,exp)
  % p -> probabilidade de sair cara
  % n -> numero de tentativas
  % k -> numero de x pretendido
  % exp -> numero de experiencias
  lancamentos = rand(n,exp) > p;
  sucessos= sum(lancamentos)==k;
  probabilidade= sum(sucessos)/exp;
  return;
end