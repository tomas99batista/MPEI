function st = String_Generator()
  symbols = ['a':'z' 'A':'Z'];
  stLength = randi([3,20]); #max and min length
  nums = randi(numel(symbols),[1 stLength]);
  String = symbols (nums);
  fprintf("Length: %d\n", length(String));
  disp(String);
endfunction
