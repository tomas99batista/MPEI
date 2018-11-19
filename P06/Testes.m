#Testes
k = [1:15];  #num hash
False_positives = zeros(1,15);

for i = 1 : 15
  printf("%d  Strings were detected with k = %d\n", False_positives(i), k(i));
endfor


stem(k, False_positives);