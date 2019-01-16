#Ex02 2015
#Angola, Brasil, Chile e Dinamarca
M = [0 0.1 0 0.5; 
     0.1 0.7 0 0.1; 
     0.05 0.1 0.8 0.1; 
     0.01 0.1 0.2 0.3];
init = [1000000; 2000000;10000000;5000000];
T__Julho = M^7 * init
Letras = ["A" "B" "C" "D"];
for i = 1:4
  printf("Pais %s, toneladas antes 1 AGOSTO: %d\n", Letras(i), T__Julho(i));
endfor

#alinea B
#Valor max de tonelagem de cada pais


#alinea C
#dia do mes e mes em q dinamarca passa a ter < 2M toneladas
i = 1;
MI = M^i * init;
while (MI(4) > 2000000)
  MI = M^i * init;
  i++;
endwhile
printf("Mes %i",i);