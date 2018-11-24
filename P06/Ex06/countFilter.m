function c = countFilter(BloomFilter, word, k)
  len = length(BloomFilter);
  c = zeros(1,k);
  w2H = word;
  for i = 1 : k
    w2H = [w2H num2str(i)];
    position = mod(string2hash(w2H), len) + 1;
    if BloomFilter(position) != 0
      c = BloomFilter(position);
    endif
  endfor
  
c = min(c);

endfunction