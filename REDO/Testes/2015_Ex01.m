#Ex01 2015
X = [ 0.07 0 0.15 0.20 ]; #0 = B
B = 1- sum(X);
printf("B = %d\n", B);

#Alinea B
M = [0.01 0.07 0.02; 0.04 B 0.08; 0.04 0.15 0.09; 0.01 0.2 0.01];
X = sum(M')
Y = sum(M)