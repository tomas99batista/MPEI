function y = exponencial(N, p)
  y = zeros(1,N);
  for i = 1:N
    random = rand();
    z = log(1-random) / -p;
    y(i) = z;
  endfor
endfunction
