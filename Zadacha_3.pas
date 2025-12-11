var fil: text; Str: string;
begin
  readln(Str);
  assign(fil, 'vconec.txt');
  append(fil);
  writeln(fil, Str);
  close(fil);
end.