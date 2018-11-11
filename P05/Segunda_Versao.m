#89296
#Segunda Versão)
alpha = ['A':'Z' 'a':'z' ];  
ficheiros={'pg21209.txt','pg26017.txt'};
pmfPT=pmfLetrasPT(ficheiros,alpha);
##figure(1)
##stem(pmfPT);

printf("\nGraficos\n");
#1000 strings
#Factor de carga: 0,8 = 1000/m
n = 1000;
m = round(n/0.8); 
count = zeros(1, m);
for i = 1:1000
  chave = String_Generator_V2(pmfPT);   ##-------------------mexer aqui-------------------------------------
  hash = rem(string2hash(chave), m) + 1; #porque o valor retornado é value between 0 and 2^32-1
  count(hash) += 1; #aumentar o contador
  
  if rem(i,500) == 0       #Para escrever apenas de 50 em 50, faz o programa desenhar + rapido, funciona como pause
    subplot(1,2,1);
    stem(count, 'r');
    title('numero de strings que foram mapeadas pela hash function');
    xlabel('Posicoes do array');
    ylabel('Num de confrontos');
    grid on;
    drawnow;
    subplot(1,2,2);
    hist(count, 0:8, 'b');
    grid on;
    title('histograma do numero de strings que foram mapeadas pela hash function');
    xlabel('X confrontos');
##    ylabel('s'); #Esta a dar um bug que faz desaparecer os graficos
    drawnow;
  endif
endfor
#-------------------------------------------------------------------------------

#4)
printf("\nAlinea 4)\n");
#Funcao de distribuicao
#Funcao de distribuicao
sucessos = histc(count, 0:9);    
probb = sucessos/m;
figure(2);
stairs(0:9, probb, "linewidth", 2.5);   #stem
title('Funcao de distribuicao');
xlabel('X confrontos');
ylabel('Probabilidade');
grid on;
X=[0:9];
#E[X] e Var(X)
E_X = sum(X .* probb);        #Valor mt redondo, normal???
E_X2 = sum(probb .* X.^2);
Var_X = E_X2 - E_X^2;
printf("E[X] = %d\nVar(X) = %d\n", E_X, Var_X);

#FIM