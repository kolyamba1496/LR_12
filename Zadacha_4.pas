var
  stroki, temp: text;
  K, i: integer;
  s: string;
begin
  read(K);
  assign(Stroki, 'Stroki.txt');
  assign(temp, 'temp.txt');
  reset(Stroki);
  rewrite(temp);
  i := 1;
  while not eof(Stroki) do
  begin
    if i = K then writeln(temp);
    readln(Stroki, s);
    writeln(temp, s);
    i := i + 1;
  end;
  close(Stroki);
  close(temp);
  reset(temp);
  rewrite(Stroki);
  
  while not eof(temp) do
  begin
    readln(temp, s);
    writeln(Stroki, s);
  end;
  close(Stroki);
  close(temp);
end.