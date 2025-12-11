var f: text; N, K, i, j: integer;
begin
  readln(N, K);
  assign(f, 'Zvezdi.txt');
  rewrite(f);
  for i := 1 to N do
  begin
    for j := 1 to K do
      write(f, '*');
    writeln(f);
  end;
  
  close(f);
end.