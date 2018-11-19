#ex 04
#ALINEA A
m = 1000; #100 random strings
n = 8000; #8000 size bloomf
k = [1:15];  #num hash
False_positives = zeros(1,15);
#likely the ex03 but this time we do with k = 1:15

#function [BloomFilter] = initialize( n )
BloomF = initialize(n);
#reduce 1 : x to lower the execution time
for j = 1 : 15
  #Generate 1000 random strings with 40 chars
  #function [BloomFilter] = insert(BloomF, element, k)
  for i = 1: m
    BloomF = insert(BloomF, String_Generator, k);
  endfor
  printf("\n\n------------------------------------------------------------------\n\n");
  
  #ALINEA B
  #Generate another 10000 with 40 charr and check if they are in the bloomf
  ###function verification = belongs (BloomF, element, k)
  Strings_Belong = 0; 
  for i = 1:10000
    string = String_Generator;
    verification = belongs(BloomF, string, k);
    if verification == 0
      printf("\"%s\" Nao pertence\n", string);
    endif
    if verification == 1
      printf("\"%s\" Provavelmente pertence\n\n", string);
      Strings_Belong ++;
    endif
  endfor
  False_positives(j) = Strings_Belong;
endfor
##False_positives = zeros(1,15);
for i = 1 : 15
  printf("\n%d  Strings were detected with k = %d", False_positives(i), k(i));
endfor
stem(k, False_positives);
grid on;
xlabel("k hash functions");
ylabel("Num of false positives");