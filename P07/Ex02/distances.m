function [J] = distances(Set)
  %% Calcula a distancia de Jaccard entre todos os pares pela definicao.
  Nu = length(Set);
  
  J=zeros(Nu, Nu); % array para guardar distancias
  #Guarda user 1 | user 2 | distancia
  printf("calculating distances..........\n");
  tic #time to jaccard distances calculation
  h= waitbar(0, "Calculating");
  #calculation JACCARD
  for n1= 1:Nu;
    waitbar(n1/Nu,h);
    for n2= n1+1:Nu;
        #Here we calculate Jaccard distances for user n1 and n2
        #Jaccard Similarity
        #|C1 INTERSECAO C2|/|C1 UNIAO C2| -> | | Stands for length
        J_intersection = length(intersect(Set{n1}, Set{n2}));
        J_union = length(union(Set{n1}, Set{n2}));
        #Jaccard distance
        J(n1, n2) = 1 - (J_intersection/J_union);      
    end
  end
  toc #time to jaccard distances calculation
  printf("distances calculated\n");
  delete (h)
endfunction
