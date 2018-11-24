#Ex 06
clear all;

##file = fopen('pg26017.txt');
file = fopen('small.txt');
file_content = fscanf(file, '%c', inf);
wordsF = strsplit(file_content);
words = strtok(wordsF, ',.!?;-_'); #Remove ',.!?;-_'
##n = 10000;
m = length(wordsF);  
n = m * 15; #size bloomf
##k = 3;
k = round((n/m) * log(2)); #
BloomFilter = initialize(n);

#function [BloomFilter] = insert(BloomFilter, element, k)
for i = 1 : m
  BloomFilter = insertCountFilter(BloomFilter, words{i}, k);
endfor
fprintf('Numero de ocorrencias da palavra: \n');  #write the info on the file text
words = sort(unique(words));
occurrences = zeros(1, m);
#function c = count(BloomFilter, word, k)
for i = 1 : length (words) #with sort and unique
  curr_word = words{i}
  occurrences(i) = countFilter(BloomFilter, curr_word, k);
  fprintf('\t%s -> %d\n', curr_word, occurrences(i));
endfor
stem(occurrences);
