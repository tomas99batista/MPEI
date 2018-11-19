#ex 01
m = 100; #size bloomf
k = 3;  #num hash
#function [BloomFilter] = initialize( m )
BloomF = initialize(m);
#function [BloomFilter] = insert(BloomF, element, k)
BloomF = insert(BloomF, 'ola', k);
#function verification = belongs (BloomF, element, k) 
verification = belongs(BloomF, 'ola', k);