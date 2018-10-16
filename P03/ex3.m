#4 lancamentos de uma moeda

#a)

##function [probabilidade] = f_prob(p,n,k,exp)
  % p -> probabilidade de sair cara
  % n -> numero de tentativas
  % k -> numero de x pretendido
  % exp -> numero de experiencias
  
# X = {0, 1, 2, 3, 4}
X = zeros(5);
y = 0;
N = 1e5;
for i = 0: 4
  X(i+1) = f_prob(0.5, 4, i, N);
  y+= f_prob(0.5, 4, i, 1e5);
endfor

stem(X);  #duvida no eixo x quero que comece em 0!!!!!

#valor esperado, a variˆancia e o desvio padr˜ao de X com base em pX(x)