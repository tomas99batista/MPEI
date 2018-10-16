#probabilidade de obter pelo menos 6 caras em 15 lancamentos
N=1e5; #no de experiencias
n=15; #no de lancamentos
p=0.5; #probb de cara
k=6; #nr de caras

lancamentos = rand(n,N) > p;
sucessos = sum(lancamentos) >= k;
probb = sum(sucessos)/N


p = 0.5;
k = 6;
n = 15;
r = 0;              % somatorio
for k = 6:15
  r += factorial(n)/(factorial(n-k)*factorial(k))*power(p,k)*power((1-p),(n-k)); 
end
r