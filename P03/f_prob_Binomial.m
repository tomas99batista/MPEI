function probb = f_prob_Binomial(p,n,k)
  #k - num de sucessos
  #n - num de tentativas
  #p - probabilidade caso sucesso
  probb = (factorial(n)/(factorial(k)*factorial(n-k))) * p^k * (1-p)^(n-k);
endfunction