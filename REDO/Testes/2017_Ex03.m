#Ex03 2017
T = [ 0.7 0.2 0 0 0 0; #a
0.2 0 0.3 0 0 0; #b
0 0.6 0.3 0 0 0; #c
0.1 0.2 0.3 0.1 0 0; #d
 0 0 0 0.4 1 0; #? 
 0 0 0.1 0.5 0 1] #.
 
#alinea b
 
 init = [1; 0; 0; 0; 0; 0];
  
T10 = T^10 * init;
T15 = T^15 * init;
printf("comecando no a, probb do 10o carac ser c: %d\n \t        probb do 15o carac ser d: %d\n", T10(3), T15(4));

#alinea c
Q = T(1:4,1:4);
F = inv(eye(size(Q)) - Q);
F= sum(F);
F(3)