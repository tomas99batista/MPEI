#probabilidade de obter 6 caras em 15 lanc¸amentos
n = 15; #num de lancamentos
k = 6; #num de caras
N = 1e5; #num de tentativas
p = 0.5; #probb de cara
lancamentos = rand(n,N) > p;
sucessos = sum(lancamentos) == k;
probb = sum(sucessos)/N


p = 0.5;
k = 6;
n = 15;
prob= factorial(n)/(factorial(n-k)*factorial(k))*p^k*(1-p)^(n-k)