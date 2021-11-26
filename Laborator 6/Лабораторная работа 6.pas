Program invers;

Procedure inverse(x:integer);
begin
  while x<>0 do begin
    write(x mod 10);
    x:= x div 10;
  end;
end;

var
  num: integer;
 
begin
  writeln('Введите число: ');
  readln(num);
  write('Инверсированное число = ');
  inverse(num);
end.