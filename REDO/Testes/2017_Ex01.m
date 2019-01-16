#EX01 Teste 2017
#Alinea a
T = [0.9 0.5 0.5; 0.09 0.4 0.5; 0.01 0.1 0.1];
ve = [0; 0; 1];

#Alinea b
T4 = T^4 * ve;
for i = 1:3 
  printf("Probabilidade do 4o pacote ser recebido no estado %i:", i);
  disp(T(i));
end

#Alinea c
dif = 0.001;
i = 2;
Ti = T^i;
while (max(abs(Ti - T^(i-1))) > 10^-3)
  Ti = T^i;
  prob = Ti * ve;
  i++;
endwhile
printf("\nProbb perda: %d\n", prob(3));
printf("Probb perda s/ corrector: %d\n", prob(2)+prob(2));
