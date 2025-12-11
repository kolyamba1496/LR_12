var fil: text; num, min, max: integer; first: boolean;
begin
  assign(fil, 'input.txt');
  reset(fil);
  first := true;
  while not eof(fil) do
  begin
    readln(fil, num);
    if first then
    begin
      min := num;
      max := num;
      first := false;
    end
    else
    begin
      if num < min then min := num;
      if num > max then max := num;
    end;
  end;
  close(fil);
  assign(fil, 'output.txt');
  rewrite(fil);
  writeln(fil, 'Min: ', min);
  writeln(fil, 'Max: ', max);
  close(fil);
end.