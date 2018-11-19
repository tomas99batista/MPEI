function String = String_Generator()
  symbols = ['a':'z' 'A':'Z'];
  stLength = 40;
  nums = randi(numel(symbols),[1 stLength]);
  String = symbols (nums);
endfunction