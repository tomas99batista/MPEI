#EX 8)
display("Exercicio 8\n");

#f(x)=(x+5)/30
P_Total = 0;
for i = 1:4             #X={1,2,3,4}
  P_Total += (i+5)/30;  #Soma das probabilidades
endfor
#P_Total == 1 e esta entre 1, assim posso afirmar que:
fprintf("Probabilidade Total: %d ; 0 <= P_Total <= 1\n", P_Total);
fprintf("A funcao f(x) pode representar a funcao de probabilidade de variavel ");
fprintf("aleatoria descrita porque a soma das probabilidades e igual a 1 e esta entre 0 e 1, inclusive\n");

#FIM