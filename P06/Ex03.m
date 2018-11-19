#ex 03
#ALINEA A
m = 1000; #100 random strings
n = 8000; #8000 size bloomf
k = 3;  #num hash

#function [BloomFilter] = initialize( n )
BloomF = initialize(n);

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
printf("\n%d  Strings were detected to (probably) belong to the bloom filter\n", Strings_Belong);