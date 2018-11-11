#Primeira Versão)
#1)
printf("Alinea 1)\n");
String = String_Generator();
fprintf("Length: %d\n", length(String));
printf("String: %d");
disp(String);
#-------------------------------------------------------------------------------

#2)
printf("\nAlinea 2)\n");
#hash=string2hash(str,type);
#type: 'djb2' (default) or 'sdbm'
hash = string2hash(String, 'sdbm');
printf("Hash: %d\n", hash);
#-------------------------------------------------------------------------------

#3)
printf("\nAlinea 3)\n");
printf("Graficos\n");
#1000 strings
#Factor de carga: 0,8 = 1000/m
n = 1000;
m = round(n/0.8);
##m = 1543;   #Num primo entre 2 potencias de 2 
##m = 1259;     #Num primo + perto de 1250
count = zeros(1, m);

for i = 1:1000
  chave = String_Generator();
  hash = rem(string2hash(chave), m) + 1;   #porque o valor retornado é value between 0 and 2^32-1
  count(hash) += 1;       #aumentar o contador
  
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
sucessos = histc(count, 0:9);    
probb = sucessos/m;
figure(2);
stairs(0:9, probb, "linewidth", 2.5);   #stem
title('Funcao de distribuicao');
xlabel('X confrontos');
ylabel('Probabilidade');
grid on;
#E[X] e Var(X)
X = [0:9];
E_X = sum(X .* probb);        #Valor mt redondo, normal???
E_X2 = sum(probb .* X.^2);
Var_X = E_X2 - E_X^2;
printf("E[X] = %d\nVar(X) = %d\n", E_X, Var_X);

#FIM