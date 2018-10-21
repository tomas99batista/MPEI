function [probabilidade] = f_prob_Simul(p,n,k,exp)
  % p -> probabilidade acontecimento favoravel
  % n -> numero de tentativas
  % k -> numero de x pretendido
  % exp -> numero de experiencias, normalmente 10e5
  lancamentos = rand(n,exp) < p;    #<, >
  sucessos = sum(lancamentos)==k;
  probabilidade= sum(sucessos)/exp;
  return;
end