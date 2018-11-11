function String = String_Generator_V2(pmfPT)
  
  symbols = ['a':'z' 'A':'Z'];
  stLength = round(10 + (sqrt(5)*randn())); #media 10 variancia 5
  F = cumsum(pmfPT); #func probb acumulada
  String = zeros(1,stLength);
  for i=1:stLength
    U = rand; #gerar num rand
    x = 1 + sum(U > F); #localizar onde se situa
    String(i) = symbols(x);
end

String = char(String);