#Ex 03

threshold =0.4; % limiar de decis˜ao
[Set, users] = create("u.data");
Nu = length(users);

#professor explicou isto na aula
#usar p/ ir buscar users
primo=10001;
while ~isprime(primo)
  primo += 2;
end
vetor_random = floor(rand(1,100)*primo);

distances = distancesMinHash(Set, Nu, vetor_random, primo)
sims = similarities(Set, J ,threshold, Nu)