var f, t: text; s: string;
begin
  assign(f, 'Stroki.txt');
  assign(t, 'temp.txt');
  reset(f);
  rewrite(t);
  while not eof(f) do
  begin
    readln(f, s);
    if s <> '' then
      writeln(t, s);
  end;
  close(f);
  close(t);
  erase(f);
  rename(t, 'Stroki.txt');
end.