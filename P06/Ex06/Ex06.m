#Ex 06
##6) Adapte as suas func¸oes para implementar um ˜ Count Filter. Aplique estas novas func¸oes para conseguir ˜
##mostrar para uma qualquer palavra de um livro o numero de vezes que ocorre no livro. Esta contagem ´
##apenas deve ser mostrada para palavras que pertenc¸am ao livro.
clear all;

##file = fopen('pg26017.txt');
file = fopen('small.txt');
n = 10000;
k = 3;
BloomFilter = initialize(n);

#function [BloomFilter] = insert(BloomFilter, element, k)
for i = 1 : length(file)
  BloomFilter = insert(BloomFilter, file(i), k);
endfor

occurrences = zeros(1, length(file));
#function c = count(BloomFilter, word, k)
for i = 1 : length(file)
  occurrences(i) = count(BloomFilter, file(i), k);
endfor
stem(occurrences);