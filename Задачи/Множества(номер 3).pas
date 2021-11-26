Program ex3;
var
  n: integer;
  m: set of byte;
  i: byte;
  
begin
  writeln('Введите число: ');
  readln(n); 
  n := abs(n);
  while n > 0 do
    begin
      Include(m, n mod 10);
      n := n div 10
    end;
  for i := 0 to 9 do
    if i in m then write(i, ' ');
end.