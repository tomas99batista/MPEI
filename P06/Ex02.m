#ex 02
m = 100; #size bloomf
k = 2;  #num hash
countries = {"Franca", "Portugal", "Espanha", "Polonia"};
belong_test = {"Inglaterra", "Brasil", "Espanha"};
#function [BloomFilter] = initialize( m )
BloomF = initialize(m);

#function [BloomFilter] = insert(BloomF, element, k)
for i = 1: length(countries)
  BloomF = insert(BloomF, countries{i}, k);
endfor

#function verification = belongs (BloomF, element, k) 
for i = 1:length(belong_test)
  verification = belongs(BloomF, belong{i}, k);
   if verification == 0
    printf("\"%s\" Nao pertence\n", belong{i});
  endif
  if verification == 1
    printf("\"%s\" Provavelmente pertence\n\n", belong{i});
  endif
endfor