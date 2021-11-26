Program cifre;
var
  n,i: integer;
  
begin
  writeln('Введите число N: ');
  readln(n);
  i:=1;
  while (n div 10)<>0 do
  begin
    i:=i+1;
    n:= n div 10;
  end;
  writeln('Кол-во цифр = ', i);
end.