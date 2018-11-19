function verification = belongs (BloomFilter, element, k) 
  printf("\nVerificando \"%s\"...\n", element);
  len = length(BloomFilter);
  key = element;
  verification = 1;
  for i=1:k
    key = [key num2str(i)];
    position = string2hash(key);
    position = mod(position, len) + 1; 
    if BloomFilter(position) == 0
      verification = 0;
      break;
    endif
  endfor
endfunction