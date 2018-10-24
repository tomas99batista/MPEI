function y = lcg(X0, a, c, m, N)
  y = zeros(1,N);
  y(1) = X0;
  for i = 2:N
    y(i) = mod(a * y(i-1) + c, m);
  endfor
  y = y/m; #Da valores apenas entre 0 e 1 #alinea b
endfunction