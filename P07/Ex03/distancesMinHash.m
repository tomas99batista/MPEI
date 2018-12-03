function [J] = distancesMinHash(Set, Nu, vetor_random, primo)
    minHash = zeros(vetor_random, Nu);
    
    printf("calculating distances..........\n");
    tic #time to jaccard distances calculation
    h= waitbar(0, "Calculating");
    
    for u=1:Nu
      h = waitbar(u/Nu,h);
      
      for k = 1: 100        
          movies = Set{u};  
          for j = 1 : length(movies)
            #Prof deu este codigo na aula mas nao esta a funcionar
            t = mod(vetor_random(k) * movies(j), primo);
          endfor  
        #Nao estou a conseguir ir buscar o minimo
        minHash(k,u) = min(t);
      end
    
    end
 
  J = zeros(100,Nu);
  for u1 = 1:Nu
    for u2 =1:u1
      J(u1,u2) = 1 - (J(minHash(:,u1) == J(:,u2)) / 100)
      J(u2,u1) = J(u1,u2);
     endfor
  endfor
  
  toc #time to jaccard distances calculation
  printf("distances calculated\n");
  delete (h)
  
endfunction