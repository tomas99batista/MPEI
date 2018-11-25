#Ex 01

#USER_ID  MOVIE_ID  AVALIATION  TIME_STAMP

% Codigo base para gui˜ao PL07 MPEI 2018-2019

udata=load('u.data'); % Carrega o ficheiro dos dados dos filmes

% Fica apenas com as duas primeiras colunas
u= udata(1:end,1:2); clear udata;

% Lista de utilizadores
users = unique(u(:,1)); % Extrai os IDs dos utilizadores
Nu= length(users); % Numero de utilizadores

% Constroi a lista de filmes para cada utilizador
Set= cell(Nu,1); % Usa celulas

for n = 1:Nu, % Para cada utilizador
  % Obtem os filmes de cada um
  ind = find(u(:,1) == users(n));
  % E guarda num array. Usa celulas porque utilizador tem um numero diferente de filmes. Se fossem iguais podia ser um array
  Set{n} = [Set{n} u(ind,2)];
end

%% Calcula a distancia de Jaccard entre todos os pares pela definicao.
##ERRO AQUI
J=zeros(Nu, 3); % array para guardar distancias
#Guarda user 1 | user 2 | distancia

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
printf("distances calculated\n");
toc #time to jaccard distances calculation
delete (h)

%% Com base na distancia, determina pares com distancia inferior a um limiar pre-definido
threshold =0.4; % limiar de decis˜ao

% Array para guardar pares similares (user1, user2, distancia)
SimilarUsers= zeros(1,3);

tic #Time to check similar users
k= 1;
printf("User1\tUser2\tDistance\n");
for n1= 1:Nu,
  for n2= n1+1:Nu,
    if J(n1, n2) < threshold #se a distancia for menor ao threshold guarda em simUsers
      SimilarUsers(k,:)= [users(n1) users(n2) J(n1,n2)] #J(n1,n2) = distancia
      #imprime os users c distancia menor ao threshold
      printf("%d\t%d\t%d\n", users(n1), users(n2), J(n1,n2));
      k= k+1; #++num de utilizadores c/ dists < threshold
    end
  end
end
printf("similarities calculated\n");
toc #Time to check similar users
printf ("Users with Jaccard dist < threshold (%d): %d\n", threshold, k);

#guarda num file csv os pares encontrados e o num de pares (k)
save ("SimUsers.csv", "SimilarUsers", "J", "k", "\n"); #ERRO

