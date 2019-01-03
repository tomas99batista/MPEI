#Ex 06
#ALINEA A)
printf("Alinea A)\n");
printf("Matriz de transicao:\n");
    #1  2  3  4
H=[ 0.8  0  0.3 0;
    0.2 0.9 0.2 0;
    0 0.1 0.4 0;
    0 0 0.1 1];
disp(H);  
#-------------------------------------------------------------------------------
#ALINEA B)
printf("\nAlinea B)\n");
#probabilidade de comecando na pagina 1 ao fim de 1000 passos estar na paagina 2
#x0 = [1;0;0;0];
X = H^1000;
printf("Probb de comecar na pag 1 e ao fim de 1k passos estar na pag 2: ");
disp(X(2,1));
#-------------------------------------------------------------------------------
#ALINEA C)
#probabilidade de chegar a pagina j a partir da pagina i, em 1,2,10 e 100 passos
x1 = H^1;
x2 = H^2;
x10 = H^10;
x100 = H^100;
#-------------------------------------------------------------------------------
#ALINEA D)
printf("\nAlinea D)\n");
printf("Matriz Q: \n");
Q=[ 0.8  0 0.3;
    0.2 0.9 0.2;
    0 0.1 0.4];
disp(Q);
#-------------------------------------------------------------------------------
#ALINEA E)
printf("\nAlinea E)\n");
printf("Matriz fundamental: \n");
#F = (I-Q)^-1
#Num medio de X que se passa naquela pagina
F = inv((eye(size(Q)) - Q));
disp(F);
#-------------------------------------------------------------------------------
#ALINEA F & G)
printf("\nAlinea F & G)\n");
#numero de passos necessarios para atingir a pagina 4 comecando na pagina 1? 
#e se comecarmos na pagina 2? 
#e se iniciarmos na pagina 3?
printf("Tempo de absorcao//numero de passos\n");
printf("   1->4     2->4     3->4\n");
disp(sum(F));
#-------------------------------------------------------------------------------
#ALINEA H)
printf("\nAlinea H)\n");
H2 = [0.8 0 0.35 0;
     0.2  0.9 0.25  0;       
     0  0.1  0.4  0;  
     0  0 0.001  1];
     
Q2 = [ 0.8 0 0.35; 0.2  0.9 0.25; 0  0.1  0.4];
printf("Q:\n");
disp(Q2);
F = inv((eye(size(Q2)) - Q2));
printf("F:\n");
disp(F);
#-------------------------------------------------------------------------------
#ALINEA I)
printf("\nAlinea I)\n");
H=[ 0.8  0  0.3 0;
    0.2 0.9 0.2 0;
    0 0.1 0.4 0;
    0 0 0.1 1];
#crawl(H,from,to);
#da num de passos
#fazer mts x o cralw fazemos simulacao dos valores de F
from = 1;
to = 4;
for i = 1:100
  state = crawl(H1,from,to);
  t(i)=length(state);
endfor
mean(t)