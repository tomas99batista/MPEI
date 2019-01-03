#Ex 03
#Matrix 20x20 rand numbers
T = rand(20,20,1);

printf("Probb de transicao entre 1o e ultimo estado em 20 transicoes: ");
T20 = T^20;
disp(T20(20,1));

printf("Probb de transicao entre 1o e ultimo estado em 40 transicoes: ");
T40 = T^40;
disp(T40(20,1));

printf("Probb de transicao entre 1o e ultimo estado em 100 transicoes: ");
T100 = T^100;
disp(T100(20,1));