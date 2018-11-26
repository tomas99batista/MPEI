function [ SimilarUsers ] = similarities(Set, J ,threshold)
  % Array para guardar pares similares (user1, user2, distancia)
  Nu = length(Set);
  
  SimilarUsers= zeros(1,3);
  printf("calculating similarities.......\n");
  tic #Time to check similar users
  k= 0;
  for n1= 1:Nu,
    for n2= n1+1:Nu,
      if J(n1, n2) < threshold #se a distancia for menor ao threshold guarda em simUsers
        SimilarUsers(k+1,:)= [Set(n1) Set(n2) J(n1,n2)] #J(n1,n2) = distancia
##        printf("%d\t%d\t%d\n", users(n1), users(n2), J(n1,n2));
        k= k+1; #num de utilizadores c/ dists < threshold
      end
    end
  end  
  toc #Time to check similar users
  printf("similarities calculated\n");
  printf ("Users with Jaccard dist < threshold (%d): %d\n", threshold, k);
   
  printf("User1\tUser2\tDistance\n");
  for i = 1: length(SimilarUsers)
    printf("%d | %d | %f\n", SimilarUsers(i,1), SimilarUsers(i, 2), SimilarUsers(i, 3));
  endfor  
  
 save ("SimUsers.csv", "SimilarUsers", "J", "k"); #ERRO

endfunction
