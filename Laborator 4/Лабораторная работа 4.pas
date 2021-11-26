Program min_max;
var
  n, i: integer;
  num, max, min : real;
begin
  writeln('Введите кол-во чисел: ');
  readln(n);
  writeln('Введите число под номером 1');
  readln(num);
  min:= num;
  max:= num;
  for i:=2 to n do
    begin
      writeln('Введите число под номером ', i, ' ');
      readln(num);
      if num < min then
        min:= num;
      if num > max then
        max:= num;
    end;
  writeln('Максимум = ', max);
  writeln('Минимум = ', min);
end.