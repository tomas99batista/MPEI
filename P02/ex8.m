##palavras “um”, “dois”, “tres” e que permite sequencias de 2 palavras

#Alinea a)
CF = 1;
CP = 9;
probb = 1/9

#Alinea b)
#1-Probb("nunca sair um")
probb = 1 - 4/9

#Alinea c)
##probabilidade de ocorrer “um” ou “dois”
P_Um = 1/3
P_Dois = 1/3
P_Um_E_Dois = 2/9 #um dois // dois um

probb = P_Um + P_Dois - P_Um_E_Dois;

#Alinea d)
##P[“sequencia incluir a palavra um” j “sequencia inclui palavra dois”]
P_A_e_B = 2/9;
P_B = 5/9;
probb = P_A_e_B / P_B;

