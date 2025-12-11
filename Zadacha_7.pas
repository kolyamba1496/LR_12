var z3in, z3out: text; n, sum, p: integer; i: longint; isPrime: boolean;
begin
  assign(z3in, 'z3.in');
  assign(z3out, 'z3.out');
  reset(z3in);
  read(z3in, n);
  close(z3in);
  sum := 0;
  if 16 <= n then sum := 16;
  p := 3;
  while p * p * p * p <= n do
  begin
    isPrime := true;
    i := 3;
    while i * i <= p do
    begin
      if p mod i = 0 then
      begin
        isPrime := false;
        break;
      end;
      i := i + 2;
    end;
    if isPrime then
      sum := sum + p * p * p * p;
    p := p + 2;
  end;
  rewrite(z3out);
  writeln(z3out, sum);
  close(z3out);
end.