##function [probabilidade] = function_probb(p,n,k,exp)
##  % p -> probabilidade
##  % n -> numero de tentativas
##  % k -> numero de x pretendido
##  % exp -> numero de experiencias

disp("probabilidade de 3 pec¸as da amostra serem defeituosas:");
n=5; N=10000; k=3; p=0.3;
probb = function_probb(p,n,k,N)
prob_analitica= factorial(n)/(factorial(n-k)*factorial(k))*p^k*(1-p)^(n-k)

disp("probabilidade de, no maximo, 2 das pecas da amostra serem defeituosas");

for k = 0:2;
prob_analitica += factorial(n)/(factorial(n-k)*factorial(k))*p^k*(1-p)^(n-k);
pl = function_probb(p,n,k,N);
endfor
prob_analitica
pl

pa=zeros (1,6);
for k = 1:6
  pa(k) = function_probb(0.3, 5, k-1, N);
endfor

stem(0:5, pa, "r")

##function_probb(0.3, 5, 0, N) teste garantia/controlo