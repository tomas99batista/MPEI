function y = Binomial(p,n,N)
  #n - num de tentativas
  #p - probabilidade caso sucesso
  experiencias = rand(n,N) < p;
  y = sum(experiencias);
endfunction