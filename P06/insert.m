function [BloomFilter] = insert(BloomFilter, element, k)
  printf("\nInserido \"%s\"...\n", element);
  len = length(BloomFilter);
  key = element;
  #k e o num de hash
  for i=1:k
    key = [key num2str(i)];
    position = string2hash(key);
    position = mod(position, len) + 1; 
    BloomFilter(position) = 1;
    printf("key = %s |  position = %d\n", key, position); 
  endfor
endfunction
