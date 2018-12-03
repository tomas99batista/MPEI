function [Set, users] = create (file)
  % Codigo base para gui�ao PL07 MPEI 2018-2019

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
    % E guarda num array. Usa celulas porque utilizador tem um numero diferente de filmes. 
    #Se fossem iguais podia ser um array
    Set{n} = [Set{n} u(ind,2)];
  end
endfunction