function y = fmp(xi, pX, N)
  y = zeros(1,N);
  for i = 1:N
    random = rand();
    i = 1 + sum(random>cumsum(pX));
    y(i)=xi(i);
  endfor
endfunction