#function_probb(nlancamentos, N, k)

##function [probabilidade] = function_probb(p,n,k,exp)
##  % p -> probabilidade de sair cara
##  % n -> numero de tentativas
##  % k -> numero de x pretendido
##  % exp -> numero de experiencias
##  lancamentos = rand(n,exp) > p;
##  sucessos= sum(lancamentos)==k;
##  probabilidade= sum(sucessos)/exp;
##  return;
##end

function_probb( 0.5,20 , 6,1e5)
function_probb(0.5 ,40 , 6, 1e5)
function_probb(0.5, 100, 6, 1e5)

p=zeros (1,20);
for i = 0:19
  p(i+1) = function_probb(0.5, 20, i, 1e5);
endfor

stem (p, "r")

